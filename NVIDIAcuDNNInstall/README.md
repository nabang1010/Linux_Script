

# Install cuDNN

## Prerequisites

### Install NVIDIA Graphics Drivers

### Install CUDA Toolkit

### Install zlib

For Ubuntu, to install **zlib** package, run:
```
sudo apt-get install zlib1g
```
## Download and install cuDNN

**Procedure**

1. Go to: [NVIDIA cuDNN home page](https://developer.nvidia.com/cudnn).
2. Click **Download**.
3. Complete the short survey and click Submit.
4. Accept the Terms and Conditions. A list of available download versions of cuDNN displays.
5. Select the cuDNN version you want to install. A list of available resources displays.

### **Tar** file installation
1. Unzip the cuDNN package.

```
tar -xzvf cudnn-10.2-linux-x64-v8.1.1.33.tgz 
```

2. Copy the following files into the CUDA toolkit directory.
   
```
sudo cp cuda/include/cudnn*.h /usr/local/cuda/include 
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64 
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
```