---
layout: page
title: Tape Archive installation on Windows
---

[GNU Tar](http://savannah.gnu.org/projects/tar) provides the ability to create tar archives.

You can download the tar binary [here](http://gnuwin32.sourceforge.net/packages/gtar.htm).


--------------------
### 1. 바이너리 파일을 다운로드 합니다.

<img src="/images/installTar/1.png" width="600">

--------------------
### 2. 더블 클릭하여 설치를 합니다. 이때 설치되는 장소를 메모합니다.
저의 경우 E:\program\GnuWin32 에 설치하였습니다.

--------------------
### 3. tar 실행 파일은 설치한 장소 아래의 **bin** folder 아래에 위치됩니다.

<img src="/images/installTar/2.png" width="600">

--------------------
### 4. 해당 파일이 위치한 폴더 위치를 환경변수 **Path** 에 추가하여야 합니다.

이를 위해
내컴퓨터(PC) 에서 우클릭->속성->고급시스템설정->환경변수

<img src="/images/installTar/3.png" width="600">

아래와 같이 **Path** 라는 변수를 한번 클릭하여 highlight한 뒤 아래의 **편집**을 클릭.

<img src="/images/installTar/4.png" width="600">

다음으로, 아래와 같이 **새로만들기**를 눌러서 **E:\program\GnuWin32\bin** 을 추가하면 됩니다.

<img src="/images/installTar/5.png" width="600">

주의) 실제로 tar binary file이 저장이 되어있는 폴더의 위치를 추가해야 합니다.


### 5. Test

Tar가 잘 설치되었는지 테스트를 실행합니다.
명령 프롬프트를 실행하여 다음을 실행해보세요.

```bash
c:\Users> tar --help
```
아래와 같이 tar 명령에 대한 설명이 출력됩니다.
<img src="/images/installTar/6.png" width="700">
