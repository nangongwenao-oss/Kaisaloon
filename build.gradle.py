plugins {
    id 'com.android.application'
    id 'kotlin-android'
}

android {
    compileSdk 33 // 编译 SDK 版本
    defaultConfig {
        applicationId "com.kaisaloon.app"
        minSdk 24
        targetSdk 33
        versionCode 1
        versionName "1.0"
    }
    buildFeatures {
        viewBinding true
    }
}

dependencies {
    // Kotlin 核心库
    implementation 'androidx.core:core-ktx:1.9.0'
    implementation 'androidx.appcompat:appcompat:1.6.1'
    
    // Material Design UI 库，用于 BottomNavigationView 和 CardView
    implementation 'com.google.android.material:material:1.9.0'
    implementation 'androidx.constraintlayout:constraintlayout:2.1.4'
}