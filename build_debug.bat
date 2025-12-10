@echo off
echo 正在构建知识沙龙App...
echo 当前目录: %CD%
echo JAVA_HOME: %JAVA_HOME%
echo 正在运行Gradle构建...
call .\gradlew.bat assembleDebug --info
echo 构建完成.
pause