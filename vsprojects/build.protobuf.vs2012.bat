@set myVsDir="C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC"
@pushd %myVsDir%
@call %myVsDir%\vcvarsall.bat x86
@popd

devenv.exe protobuf.sln /Clean "Release|x64"   /log build\protobuf_Release_x64.log
devenv.exe protobuf.sln /Clean "Release|Win32" /log build\protobuf_Release_Win32.log
@echo build Release_x64
devenv.exe protobuf.sln /Build "Release|x64"   /log build\protobuf_Release_x64.log
@echo build Release_Win32
devenv.exe protobuf.sln /Build "Release|Win32" /log build\protobuf_Release_Win32.log

devenv.exe protobuf.sln /Clean "Debug|x64"   /log build\protobuf_Debug_x64.log
devenv.exe protobuf.sln /Clean "Debug|Win32" /log build\protobuf_Debug_Win32.log
@echo build Debug_x64
devenv.exe protobuf.sln /Build "Debug|x64"   /log build\protobuf_Debug_x64.log
@echo build Debug_Win32
devenv.exe protobuf.sln /Build "Debug|Win32" /log build\protobuf_Debug_Win32.log
@exit