# Install Git
---
[***@nabang1010***](https://github.com/nabang1010)

## Install Git

```bash
sudo apt-get install git
```

## Config

```bash
git config --global user.email "you@example.com"
```

```bash
git config --global user.name "Your Name"
```

## Multi-account SSH 1 server

1. Change to `.ssh` directory

```bash
cd ~/.ssh
```

2. Generate SSH key for user 1

```bash
ssh-keygen -t ed25519 -C "your_email_1@example.com"
```

3. Generate SSH key for user 2

```bash
ssh-keygen -t ed25519 -C "your_email_2@example.com"
```
4. Go [github.com/settings/keys](https://github.com/settings/keys) to add SHH keys for 2 users

5. Edit `config` file

```bash
gedit config
```

```bash
Host your_user_1 github.com
  HostName github.com
  PreferredAuthentications publickey
  IdentityFile /home/nabang1010/.ssh/id_ed25519_your_user_1


Host your_user_2 github.com
  HostName github.com
  PreferredAuthentications publickey
  IdentityFile /home/nabang1010/.ssh/id_ed25519_your_user_2
```

6. `git clone` for user 1

```bash
git@your_user_1:your_user_1/repo_name.git
```

7. `git clone` for user 2


```bash
git@your_user_2:your_user_2/repo_name.git

```
