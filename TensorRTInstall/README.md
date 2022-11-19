# Install TensorRT 

---
[***@nabang1010***](https://github.com/nabang1010)


## Install PyCUDA

If you are using the TensorRT Python API and PyCUDA isn’t already installed on your system, see Installing PyCUDA.


**Note**: When installing PyCUDA, ensure that you have NumPy installed beforehand. If not, run the following command before proceeding:


```bash
python3 -m pip install numpy
```

To install PyCUDA first make sure nvcc is in your PATH, then issue the following command:

```bash
python3 -m pip install 'pycuda<2021.1'
```
## Download and install TensorRT

### Download

1. Go to: https://developer.nvidia.com/tensorrt.
2. Click GET STARTED, then click Download Now.
3. Select the version of TensorRT that you are interested in.
4. Select the check-box to agree to the license terms.
5. Click the package you want to install. Your download begins.


### Install

Install TensorRT from the Debian local repo package. Replace ubuntuxx04, cudax.x, trt8.x.x.x and yyyymmdd with your specific OS version, CUDA version, TensorRT version and package date

```bash
os="ubuntu1804"
tag="cuda10.2-trt7.2.3.4-ga-20210226"  
sudo dpkg -i nv-tensorrt-repo-${os}-${tag}_1-1_amd64.deb
sudo apt-key add /var/nv-tensorrt-repo-${os}-${tag}/7fa2af80.pub
sudo apt-get update
sudo apt-get install tensorrt
```
If using Python 3.x:
```bash
python3 -m pip install numpy
sudo apt-get install python3-libnvinfer-dev
```
The following additional packages will be installed: python3-libnvinfer

If you plan to use TensorRT with TensorFlow:

```bash
python3 -m pip install protobuf
sudo apt-get install uff-converter-tf
```
The graphsurgeon-tf package will also be installed with the above command.

If you would like to run the samples that require ONNX graphsurgeon or use the Python module for your own project, run:

```bash
python3 -m pip install numpy onnx
sudo apt-get install onnx-graphsurgeon
```
Verify the installation.

```bash
dpkg -l | grep TensorRT
```
You should see something similar to the following:

```
ii  graphsurgeon-tf	            8.4.0-1+cuda11.6	amd64	GraphSurgeon for TensorRT package
ii  libnvinfer-bin		        8.4.0-1+cuda11.6	amd64	TensorRT binaries
ii  libnvinfer-dev		        8.4.0-1+cuda11.6	amd64	TensorRT development libraries and headers
ii  libnvinfer-doc		        8.4.0-1+cuda11.6	all	     TensorRT documentation
ii  libnvinfer-plugin-dev	    8.4.0-1+cuda11.6	amd64	TensorRT plugin libraries
ii  libnvinfer-plugin8	        8.4.0-1+cuda11.6	amd64	TensorRT plugin libraries
ii  libnvinfer-samples	        8.4.0-1+cuda11.6	all	    TensorRT samples
ii  libnvinfer8		            8.4.0-1+cuda11.6	amd64	TensorRT runtime libraries
ii  libnvonnxparsers-dev		8.4.0-1+cuda11.6	amd64	TensorRT ONNX libraries
ii  libnvonnxparsers8	        8.4.0-1+cuda11.6	amd64	TensorRT ONNX libraries
ii  libnvparsers-dev	        8.4.0-1+cuda11.6	amd64	TensorRT parsers libraries
ii  libnvparsers8	            8.4.0-1+cuda11.6	amd64	TensorRT parsers libraries
ii  python3-libnvinfer	        8.4.0-1+cuda11.6	amd64	Python 3 bindings for TensorRT
ii  python3-libnvinfer-dev	    8.4.0-1+cuda11.6	amd64	Python 3 development package for TensorRT
ii  tensorrt		            8.4.0.x-1+cuda11.6 	amd64	Meta package of TensorRT
ii  uff-converter-tf	        8.4.0-1+cuda11.6	amd64	UFF converter for TensorRT package
ii  onnx-graphsurgeon           8.4.0-1+cuda11.6    amd64   ONNX GraphSurgeon for TensorRT package
```

```bash
version="8.4.0-1+cuda11.6"

sudo apt-get install libnvinfer8=${version} libnvonnxparsers8=${version} libnvparsers8=${version} libnvinfer-plugin8=${version} libnvinfer-dev=${version} libnvonnxparsers-dev=${version} libnvparsers-dev=${version} libnvinfer-plugin-dev=${version} python3-libnvinfer=${version}

sudo apt-mark hold libnvinfer8 libnvonnxparsers8 libnvparsers8 libnvinfer-plugin8 libnvinfer-dev libnvonnxparsers-dev libnvparsers-dev libnvinfer-plugin-dev python3-libnvinfer
```