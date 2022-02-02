import torch
# import time
# from torch_scatter import scatter

# Maybe see if this is good: https://github.com/rusty1s/pytorch_scatter
# My implementation is quite suboptimal

# def time_fun(f, iter, *args):
#     start_time = time.perf_counter()
#     start = time.time()
#     for i in range(iter):
#         f(*args)
#     print(str(f))
#     print(time.perf_counter()-start_time)
#     print(time.time()-start)
#     return f(*args)

def _unsorted_segment_helper(
    data: torch.Tensor, segment_ids: torch.Tensor, num_segments
):
    assert data.shape[0] == segment_ids.shape[0]

    if len(segment_ids.shape) == 1:
        assert data.shape[0] == segment_ids.shape[0]
        repeated_data, indices = data, segment_ids
    else:
        # FIXME: Bad hack, -1 indicates we're using zero padding, so ignore those nodes
        # Repeat Data Tensor depending on number of segment_ids for that idx that are not -1
        repeats = torch.sum(segment_ids != -1, dim=1)

        # TODO: which one is better???
        repeated_data = data.repeat_interleave(repeats, dim=0)

        # Divide hyperedge feature by the number of receivers/senders in the given hyperedge?
        # repeated_data = (data / repeats.reshape(-1, 1).float()).repeat_interleave(
        #     repeats, dim=0
        # )

        # Flatten list of Tensors into single Tensor
        indices = segment_ids[segment_ids != -1]
        assert repeated_data.shape[0] == indices.shape[0]

    # Placeholder for the segments
    segments = torch.zeros((num_segments, repeated_data.shape[1]))
    return repeated_data, indices, segments


def torch_unsorted_segment_sum(
    data: torch.Tensor, segment_ids: torch.Tensor, num_segments
):
    """
    Compute sums along segments of a Tensor

    Better described here: https://www.tensorflow.org/api_docs/python/tf/math/unsorted_segment_sum
    """
    if len(segment_ids.shape) == 1:
        segments = torch.zeros((num_segments, *data.shape[1:]))
        segments.index_add_(0, segment_ids, data)
        return segments
    else:
        segments = torch.zeros((num_segments+1, *data.shape[1:]))
        segment_ids[segment_ids==-1] = num_segments # bad hack
        for i in range(segment_ids.shape[1]):
            segments = segments.index_add(0, segment_ids[:,i], data)
        return segments[:-1]

# def torch_unsorted_segment_sum_1(
#     data: torch.Tensor, segment_ids: torch.Tensor, num_segments
# ):
#     """
#     Compute sums along segments of a Tensor

#     Better described here: https://www.tensorflow.org/api_docs/python/tf/math/unsorted_segment_sum
#     """
#     if len(segment_ids.shape) == 1:
#         return scatter(src=data, index=segment_ids, dim=0, dim_size=num_segments, reduce='sum')
#     else:
#         segments = torch.zeros((num_segments+1, *data.shape[1:]))
#         segment_ids[segment_ids==-1] = num_segments # bad hack
#         for i in range(segment_ids.shape[1]):
#             segments = scatter(src=data, index=segment_ids[:,i], dim=0, out=segments, dim_size=num_segments+1, reduce='sum')
#         return segments[:-1]


def torch_unsorted_segment_sum_2(
    data: torch.Tensor, segment_ids: torch.Tensor, num_segments
):
    """
    Compute sums along segments of a Tensor

    Better described here: https://www.tensorflow.org/api_docs/python/tf/math/unsorted_segment_sum
    """
    repeated_data, indices, segments = _unsorted_segment_helper(
        data, segment_ids, num_segments
    )

    # Do the summation, i.e. sum by index
    sum_results = segments.index_add(0, indices, repeated_data)
    return sum_results

# def torch_unsorted_segment_sum_3(
#     data: torch.Tensor, segment_ids: torch.Tensor, num_segments
# ):
#     """
#     Compute sums along segments of a Tensor

#     Better described here: https://www.tensorflow.org/api_docs/python/tf/math/unsorted_segment_sum
#     """
#     repeated_data, indices, segments = _unsorted_segment_helper(
#         data, segment_ids, num_segments
#     )

#     # Do the summation, i.e. sum by index
#     sum_results = scatter(src=repeated_data, index=indices, dim=0, out=segments, reduce='sum')
#     return sum_results

# def torch_unsorted_segment_mean(
#     data: torch.Tensor, segment_ids: torch.Tensor, num_segments
# ):
#     """
#     Computes means along segments of a Tensor
#     """
#     repeated_data, indices, segments = _unsorted_segment_helper(
#         data, segment_ids, num_segments
#     )
#
#     # Do the summation, i.e. sum by index
#     sum_results = segments.index_add(0, indices, repeated_data)
#
#     # Pytorch doesn't have an efficient implementation so we have to hack around
#     idx_elems, existing_idx_counts = torch.unique(
#         indices, sorted=True, return_counts=True
#     )
#
#     # Note: not all indices will be present in a segment. Use torch.ones not torch.zeros to avoid divide by 0
#     idx_counts = torch.zeros(num_segments)
#     idx_counts[idx_elems] = existing_idx_counts.float()
#     idx_counts = idx_counts.reshape(-1, 1)
#
#     mean_results = sum_results / idx_counts
#     return mean_results

# device = torch.device("cuda") if torch.cuda.is_available() else torch.device("cpu")
# print("Device", device)
# data = torch.tensor([[1, 2, 3], [4, 5, 6], [7, 8, 9]], dtype=torch.float).repeat(3,1).reshape(3,3,3)
# print(data)
# index = torch.tensor([[0,0,0], [4,4,4], [2,2,2]])
# index_neg = torch.tensor([[0,0], [-1,-1], [2,2]])
# index_sin = torch.tensor([0,4,2])
# num_segments=6
# segments = torch.zeros((num_segments, *data.shape[1:]))