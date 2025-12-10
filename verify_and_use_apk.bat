@echo off
cls
echo ================================
echo 知识沙龙App APK验证和使用脚本
echo ================================
echo.

echo 正在验证APK文件...
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo ✓ APK文件存在
    echo.
    echo APK文件信息：
    dir "app\build\outputs\apk\debug\app-debug.apk"
    echo.
    echo ✓ 准备就绪，您可以：
    echo   1. 直接从上述路径复制APK文件到您的Android设备
    echo   2. 运行下面的命令将APK复制到项目根目录：
    echo      copy "app\build\outputs\apk\debug\app-debug.apk" "知识沙龙_Debug.apk"
    echo.
    echo 安装说明：
    echo 1. 在Android设备上启用"未知来源"安装权限
    echo 2. 将APK文件传输到设备并点击安装
    echo 3. 安装完成后即可使用知识沙龙App
) else (
    echo ✗ 未找到APK文件
    echo 请确保已成功运行构建命令：.\gradlew.bat assembleDebug
)

echo.
echo 如需重新构建，请运行：.\gradlew.bat clean assembleDebug
echo.
pause