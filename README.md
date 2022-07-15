## Compile freeimage.so for android

Environment:

- Windows 10 64 bit 
- Some android toolchain that unity engine uses, I assume it does not matter. 

Output:
- Artifact of interest is `libFreeImage.so`

Credits:

I found the cmakelist and make_android.bat somewhere on the internet. if only i could find it again.

### How 2 build Freeimage for android on Windows development PC/host:
- open cmd
- `make_android_2.bat`
- that's it. you probably need install these programs first:
    - android toolchain/ NDK/ whatever they call it  
    - cmake.exe
    - does cmake use make? I don't even know. 