function install_theano() {
	#begin installing theano dependencies using pip
	echo "INSTALLING: python pip, numpy, scipy, openBLAS"
	sudo apt install python-pip
	pip install numpy
	pip install scipy
	sudo apt install libopenblas-dev
}