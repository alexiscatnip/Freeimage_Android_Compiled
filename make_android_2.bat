

set CMAKE_PATH="C:\Program Files\CMake\bin\cmake.exe"
set ANDROID_NDK_PATH="C:\Unity\2020.3.26f1\Editor\Data\PlaybackEngines\AndroidPlayer\NDK"

rmdir /s /q build
mkdir build
cd build

%CMAKE_PATH% .. ^
  -G"MinGW Makefiles" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_TOOLCHAIN_FILE=%ANDROID_NDK_PATH%\build\cmake\android.toolchain.cmake ^
  -DCMAKE_MAKE_PROGRAM=%ANDROID_NDK_PATH%\prebuilt\windows-x86_64\bin\make.exe ^
  -DANDROID_NDK=%ANDROID_NDK_PATH% ^
  -DANDROID_NATIVE_API_LEVEL=android-28 ^
  -DANDROID_ABI=arm64-v8a

%CMAKE_PATH% --build .

popd
