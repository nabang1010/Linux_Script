
### Install

```console
sha256sum ~/Downloads/Anaconda3-2021.11-Linux-x86_64.sh
```
```console
bash ~/Downloads/Anaconda3-2021.11-Linux-x86_64.sh
```

### Set the auto_activate_base on

```console
conda config --set auto_activate_base true
```

### Set the auto_activate_base off
```console
conda config --set auto_activate_base false
```

### List all enviroments

```console
conda info --env
```

### Create new enviroment

```console
conda create -n newEnvName python=3.6
```

### Conda delete a enviroment

```console
conda env remove -n [ENV_NAME]
```

### Clean cache

```console
condac clean --all
```

### Export enviroment library

```console
conda env export > env.yaml
```
