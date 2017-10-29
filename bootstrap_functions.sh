function install_theano() {
	#begin installing theano dependencies using pip
	echo "INSTALLING: python pip, numpy, scipy, openBLAS"
	install python-pip
	pip install numpy
	pip install scipy
	sudo apt-get install libopenblas-dev
}