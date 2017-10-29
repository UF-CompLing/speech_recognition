# Run setup vagrant box setup
export DEBIAN_FRONTEND=noninteractive

# Exit on first error
set -e


# Check git installation
apt-get update
apt-get install -y git

# Get updated repository
git pull

# Enforce Unix line-endings
git rm --cached -rf .
git diff --cached --name-only -z | xargs -n 50 -0 git add -f

git ls-files -z | xargs -0 rm
git checkout .

# Import helper functions
source bootstrap_functions.sh

# Run installation procedures
echo "RUNNING: 'install_theano'"
install_theano

echo "RUNNING: 'install_kaldi'"
install_kaldi

echo "RUNNING: 'install_pdnn'"
install_pdnn