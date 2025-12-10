# 知识沙龙App

这是一个Android应用程序，实现了基于Fragment的单Activity多页面架构。

## 项目结构
- 单个Activity (MainActivity)
- 四个Fragment页面:
  - 真 (TruthFragment) - 科普知识展示
  - 善 (KindnessFragment) - 每日运势
  - 美 (BeautyFragment) - AI艺术展
  - 灵 (SpiritFragment) - 知识胶囊交互

## 构建说明

### 使用Android Studio构建（推荐）

1. 打开Android Studio
2. 选择"Open an existing Android Studio project"
3. 导航到该项目目录并打开
4. 等待Gradle同步完成
5. 点击"Run"按钮或使用菜单 Build > Make Project

### 使用命令行构建

确保已安装Java JDK 17和Android SDK，然后运行：

```bash
./gradlew assembleDebug
```

生成的APK文件将在: `app/build/outputs/apk/debug/app-debug.apk`

## 已知问题及解决方案

1. **非ASCII字符路径问题**：
   - 错误信息：`Your project path contains non-ASCII characters`
   - 解决方案：已在`gradle.properties`中添加`android.overridePathCheck=true`

2. **Java版本兼容性问题**：
   - 错误信息：`Unsupported class file major version 65`
   - 解决方案：已将Gradle版本升级到8.5，支持Java 21

## 技术栈
- Kotlin 1.6.10
- Android Gradle Plugin 8.2.0
- Gradle 8.5
- Android SDK 33
- Jetpack组件
- Material Design