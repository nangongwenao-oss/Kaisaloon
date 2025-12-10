@echo off
cls
echo ========================================
echo 知识沙龙App构建脚本
echo ========================================
echo.
echo 当前目录: %CD%
echo.
echo 正在启动Gradle构建...
echo.
call .\gradlew.bat assembleDebug
echo.
echo 构建完成! 检查 app\build\outputs\apk\debug 目录获取APK文件
echo.
pause