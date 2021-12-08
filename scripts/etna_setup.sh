#  Exit immediately if a command exits with a non-zero status.
set -e

# Setup expected paths
STRIPS_HGN_DIR="$HOME/strips-hgn"
SRC_DIR="$STRIPS_HGN_DIR/src"
FD_DIR="${SRC_DIR}/fast_downward"

VIRTUAL_ENV="comp4550"

# manually install anaconda
# wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
# bash ~/Anaconda3-2021.11-Linux-x86_64.sh
# source ~/.bashrc

# manually create virtual environment
# conda create --name comp4550


######################
## Setup STRIPS-HGN ##
######################
# Clone the main STRIPS-HGN repo
cd $HOME
echo "Cloning STRIPS-HGN Repo from Gitlab. Please enter Username and Password."
git clone https://gitlab.com/yutian-zhao/strips-hgn.git
cd $STRIPS_HGN_DIR

# Activate PyTorch virtual env
echo "Activating ${VIRTUAL_ENV} conda environment"
source activate $VIRTUAL_ENV

# Uninstall enum34 which breaks pyperplan and install Python dependencies
echo "Installing STRIPS-HGN Python Dependencies"
pip uninstall -y enum34
pip install -r requirements.txt

# Clone and build Fast-Downward, instructions modified from:
# http://www.fast-downward.org/ObtainingAndRunningFastDownward
git clone https://github.com/williamshen-nz/fast_downward.git $FD_DIR
cd $FD_DIR
./build.py

# Set Python path
export PYTHONPATH=$SRC_DIR
echo ""
