# 知识沙龙App构建脚本
Write-Host "========================================"
Write-Host "知识沙龙App PowerShell构建脚本"
Write-Host "========================================"
Write-Host ""

# 设置编码
$OutputEncoding = New-Object -typename System.Text.UTF8Encoding

# 显示当前目录
Write-Host "当前目录: $(Get-Location)"
Write-Host ""

# 检查Gradle wrapper是否存在
if (Test-Path ".\gradlew.bat") {
    Write-Host "找到Gradle wrapper，开始构建..."
    Write-Host ""
    
    # 运行构建命令
    $process = Start-Process -FilePath ".\gradlew.bat" -ArgumentList "assembleDebug", "--console=plain" -NoNewWindow -PassThru -RedirectStandardOutput "build.log" -RedirectStandardError "error.log"
    
    # 等待进程完成
    $process.WaitForExit()
    
    # 显示输出
    if (Test-Path "build.log") {
        Write-Host "构建输出:"
        Get-Content "build.log"
        Write-Host ""
    }
    
    if (Test-Path "error.log") {
        Write-Host "错误信息:"
        Get-Content "error.log"
        Write-Host ""
    }
    
    Write-Host "构建进程已退出，退出代码: $($process.ExitCode)"
} else {
    Write-Host "错误: 未找到gradlew.bat文件"
}

Write-Host ""
Write-Host "构建脚本执行完毕"
Write-Host ""

# 检查是否生成了APK
if (Test-Path "app\build\outputs\apk\debug\*.apk") {
    Write-Host "成功找到APK文件:"
    Get-ChildItem "app\build\outputs\apk\debug\*.apk"
} else {
    Write-Host "未找到APK文件，请检查构建日志"
}

Write-Host ""
Pause