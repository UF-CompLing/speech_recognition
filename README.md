# speech_recognition
Speech Recognition Project for UF Computational Linguistics Club

### Speech Recognition Box Overview

The following process will allow you to easily setup the system we will be using for our speech recognition with minimal hassle. We do this by creating a 'virtual machine' which runs on its own partitioned section of your computer. We will be using Vagrant, which allows you to setup the system with the files found on this repository with minimal effort.

### Installation and Setup

This process will take a few minutes and requires a good internet connection.

### 1. Install VirtualBox
Download and install VirtualBox [here](https://www.virtualbox.org/wiki/Downloads)

### 2. Install Vagrant

Download and install Vagrant [here](https://www.vagrantup.com/downloads.html)

### 3. Clone the ‘speech_recognition’ Git repository

Installing Git on your host machine will make life a lot easier. If you do not already have Git, you can download it here.

  Open the command line/terminal and navigate to where you’d like to store your vagrant box.
       Mac/Linux: ```cd ~/Desktop```
       Windows: ```cd C:\Users\your-username\Desktop```
  User git clone https://github.com/UF-CompLing/speech_recognition.git to create a local copy of the repository

### 4. Run Vagrant setup

This will take a while to run for the first time, but will be considerably faster if needed again. Feel free to browse your favorite social media site or do some homework while this completes.

What is happening here:
    • Creating a virtual machine in your computer
    • Downloading and installing Ubuntu
    • Installing Python, Theano, Kaldi, and many other goodies

### Mac & Linux

Open the terminal using

```{bash}
  cd ~/desktop/ChomplingDev
  vagrant up
```

[More info on Mac termainal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line)

### Windows

```{cmd}
  cd ~\Desktop\ChomplingDev
  vagrant plugin install vagrant-hostsupdater
  vagrant up
```


[More info on Windows command prompt](http://www.bleepingcomputer.com/tutorials/windows-command-prompt-introduction/)

## Access Your Vagrant Box Directly 

### Mac & Linux

```{bash}
  cd ~/desktop/ChomplingDev
  vagrant ssh
```

### Windows

On Windows, you'll likely need to use Putty to access your vagrant box.
    • Hosname: localhost
    • Port: 2222
    • Username: vagrant
    • Password: vagrant

## Check for Updates

```{bash}
  vagrant reload --provision
```

## More Info

If you're interested in learning more ways to use Vagrant, please read the tutorials [here](https://www.vagrantup.com/docs/getting-started/)
