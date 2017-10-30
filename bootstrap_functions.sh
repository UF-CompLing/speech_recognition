# Run setup vagrant box setup
export DEBIAN_FRONTEND=noninteractive

# Exit on first error
set -e


# Check git installation
#apt-get update
#apt-get install -y git

# Get updated repository
git pull

# Enforce Unix line-endings
git rm --cached -rf .
git diff --cached --name-only -z | xargs -n 50 -0 git add -f

#git checkout .

# Run installation procedures
echo "RUNNING: 'install_theano'"
install_theano

echo "RUNNING: 'install_kaldi'"
install_kaldi

echo "RUNNING: 'install_pdnn'"
install_pdnn












function install_theano() {
	#begin installing theano dependencies using pip
	echo "INSTALLING: python pip, numpy, scipy, openBLAS"
	sudo apt-get install python-pip
	pip install numpy
	pip install scipy
	sudo apt install libopenblas-dev
	pip install cmake
	git clone https://github.com/Theano/libgpuarray.git
	cd libgpuarray
	git checkout tags/v0.6.2 -b v0.6.2
	mkdir Build
	cd Build
	cmake .. -DCMAKE_BUILD_TYPE=Release
	make
	sudo make install
	cd ..
	pip install build-essential
	sudo pip install Cython
	python setup.py build
	sudo python setup.py install
}

function install_kaldi() {
	git clone https://github.com/kaldi-asr/kaldi.git kaldi --origin upstream
	cd kaldi 
	git pull
	cd tools
	extras/check_dependencies.sh
	pip install  zlib1g-dev automake autoconf libtool subversion
	extras/check_dependencies.sh
	pip install libatlas3-base
	extras/check_dependencies.sh
	make
	extras/install_irstlm.sh
	cd ..
	cd src
	./configure
	make depend
	make


}

function install_pdnn() {
	git clone https://github.com/yajiemiao/pdnn
	export PYTHONPATH=/path/to/pdnn:$PYTHONPATH
}