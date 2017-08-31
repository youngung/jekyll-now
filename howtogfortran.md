---
layout: page
title: How to install gfortran on Windows
---

For Linux users, you might already have gfotran installed in your system.
If not, you should be able to install it using a package management.
For Mac users, I'd recommend you to use [homebrew](https://brew.sh) to install gfortran if it were not available in your system.

This page is to illustrate how to install [gfortran](https://gcc.gnu.org/fortran/) in Windows system

(actually Windows 10) to run [transformation.f]({% link /programs/transform.f %}).


### First step: follow this [link](https://gcc.gnu.org/wiki/GFortran) to gfortran page. If this link is broken, search gfortran in Google.
The page you should be looking for is something like below:
<img src="/images/InstallGfortranWindow/1.png" width="450">

In the above, find the link to 'binaries' in the red box and click on it.

### Second step: in the opened page, find the link in the red box as in the below figure and click on it.

<img src="/images/InstallGfortranWindow/2.png" width="1300">

A file named "gfortran-windows-20140629.exe" will be downloaded (caution, that's a 100 MB file.)

### Third step:

Double click the downloaded file, you'll see something like below:

<img src="/images/InstallGfortranWindow/3.png" width="500">


### Fourth step:

Once that's installed, install [notepad++](https://notepad-plus-plus.org) - click on the download banner in that page.

<img src="/images/InstallGfortranWindow/4.png" width="500">


### Fifth step:

Click **next** until you complete the installation ...

<img src="/images/InstallGfortranWindow/5-1.png" width="500">


### Sixth step

Open (or download) [transformation.f]({% link /programs/transform.f %}).
Copy and paste the source code to your computer using the **notepad++**.

<img src="/images/InstallGfortranWindow/6-5.png" width="800">

<img src="/images/InstallGfortranWindow/6-6.png" width="800">

Once you save it with a proper extension, (*.f) the source code opened in notepad window will be syntax-highlighted something like below:

<img src="/images/InstallGfortranWindow/6-7.png" width="800">

### Seventh step

Open the command prompt. There can be various ways to reach. I followed two steps:
1. I used the search icon in the bottom right corner:

<img src="/images/InstallGfortranWindow/7-1.png" width="800">

2. Then I typed 'cmd' to open the command promprt.

<img src="/images/InstallGfortranWindow/7-2.png" width="800">

### Eighth step

In the command prompt, you should change the current working directory to where you saved 'transformation.f' file.
I saved it under
```
e:\test\
```

So I changed the current working directory as in below:

<img src="/images/InstallGfortranWindow/8-1.png" width="800">

With **dir** command, you can check if the file is correctly located.


With that, now you have to compile the source code and execute the program using gfortran such as

<img src="/images/InstallGfortranWindow/8-2.png" width="800">


You might want to check if the result changes as you put different in-plane rotation angle.
