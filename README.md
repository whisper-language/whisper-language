![W](Wlogo.png)
## 目标

方便嵌入到各种宿主语言的语言 方便最终用户扩展功能

## 注意事项
- 当前为开发阶段
- 1.0 之前不提供 向前兼容 
- 当前为个人项目
- 文档更新可能不及时 你需要自己有能力
---
[文档](https://whisper-language.github.io/whisper-language-doc/)
## 持续集成
### 语言
[![Java CI with Maven](https://github.com/whisper-language/whisper-java/actions/workflows/maven.yml/badge.svg)](https://github.com/whisper-language/whisper-java/actions/workflows/maven.yml)
[![.NET](https://github.com/whisper-language/whisper-csharp/actions/workflows/dotnet.yml/badge.svg)](https://github.com/whisper-language/whisper-csharp/actions/workflows/dotnet.yml)
[![Dart](https://github.com/whisper-language/whisper-dart/actions/workflows/dart.yml/badge.svg)](https://github.com/whisper-language/whisper-dart/actions/workflows/dart.yml)

### 平台 

[![ANDROID  Gradle build](https://github.com/whisper-language/whisper-integrated-android/actions/workflows/gradle.yml/badge.svg)](https://github.com/whisper-language/whisper-integrated-android/actions/workflows/gradle.yml) ios windows

## 支持宿主语言
| 语言      | 进度 |时间 | 描述 | 示例仓库 |  维护人 |版本 |
| ----------- | ----------- |  ----------- | ----------- | ----------- |   ----------- |   ----------- | 
| [java](https://github.com/whisper-language/whisper-java)  8.0    | 已经实现       | 2021年5月10日 | 为了android和server同时使用| [java集成](https://github.com/whisper-language/whisper-integrated-java) | [@Crtrpt](https://github.com/Crtrpt) | 0.0.2 |
|  [dart](https://github.com/whisper-language/whisper-dart)   2.0    |   已经实现       | 2021年5月10日 | 为了flutter |[flutter集成](https://github.com/whisper-language/whisper-integrated-flutter) | [@Crtrpt](https://github.com/Crtrpt) |0.0.2 |
| [csharp](https://github.com/whisper-language/whisper-csharp) 8.0  | 已经实现        | 2021年5月10日 | 为了windows c# 用户 |[c#集成](https://github.com/whisper-language/whisper-integrated-csharp)| [@Crtrpt](https://github.com/Crtrpt) |0.0.2 |
| [swift](https://github.com/whisper-language/whisper-swift)  5.0  | 开发中...        | 2021年5月10日 | 为了macos 或者 ios |[ios集成](https://github.com/whisper-language/whisper-integrated-ios)| [@Crtrpt](https://github.com/Crtrpt) |0.0.1 |

## 开发工具支持 
| 工具      | 进度 |时间 | 描述 | 示例仓库 |  维护人 |
| ----------- | ----------- |  ----------- | ----------- | ----------- |   ----------- | 
| codemirror   | 暂未实现       | 2021年5月10日 | codemirror插件 | [仓库](https://github.com/whisper-language/codemirror-plugin)| [@Crtrpt](https://github.com/Crtrpt) |
| vscode   |   暂未实现       | 2021年5月10日 | vscode扩展 |[仓库](https://github.com/whisper-language/vsc-plugin)| [@Crtrpt](https://github.com/Crtrpt) |
| idea  | 暂未实现        | 2021年5月10日 | idea 语言扩展 |[仓库](https://github.com/whisper-language/idea-plugin)| [@Crtrpt](https://github.com/Crtrpt) |


## 特性
- 增加内建函数支持 更好的 宿主环境和解释环境的交互
- @开头的函数为内建函数

## 需要做的
- 重构代码 使代码更好维护
- 更多的测试用例
- 生成 jvm bytecode
- llvm对 os支持
- codemirror/idea/vscode 语法支持
- 性能优化
- 增加新特性
- C++ golang  python rust  js支持

## 社区
<a href="https://qm.qq.com/cgi-bin/qm/qr?k=jjkLHY4eFQ3TnKF7K_ZnQOzCt1FwtrY3"><img src="https://pub.idqqimg.com/wpa/images/group.png"/></a>


## 开发文档
TODO

## 用户文档
TODO 

## 语法支持 TODO
- 增加 与 或 非  | ^ !
- 增加 位移操作  >> << >>>
- 增加 字典 {k:v}
- 增加 数组 分片/合并 [1..2]  [..a,..b]
- 增加 委托实现 += 
- 增加 对象变量监控 watcher
