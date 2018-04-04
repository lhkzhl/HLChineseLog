# HLChineseLog
log Chinese easy when debug scheme

简要说明
第一次 使用CocoaPods创建公共库，所以用这个简单的东西
$pod search [HLChineseLog] 中[HLChineseLog] 表示HLChineseLog替换成你想输入的参数


使用CocoaPods创建公共库
首先感谢 https://www.jianshu.com/p/d2d98298b1b8
其次英文好的完全可以去https://cocoapods.org

####1.要创建CocoaPods公有库，首先要注册CocoaPods账号
$ pod trunk register [GitHub_email]  [user_name] --verbose
eg： pod trunk register lhkzhl@163.com lhkzhl --verbose
  然后登录邮箱点击验证
####2. pod trunk me 查看注册信息
    失败：[!] Authentication token is invalid or unverified. Either verify it with the email that was sent or register a new session.
    成功：会有Name,Email等信息
####3.在GitHub创建Git仓库
    创建Git仓库需要包含几个文件，a,b,c 应该都知道，主要说d
    a.license:开源许可证
    b.readme.md
    c.你的代码
    d.*.podspec   如HLChineseLog.podspec
    
    创建.podspec 文件
    $ pod spec create [fileName]
    eg:pod spec create HLChineseLog
    修改.podspec文件， 使用vim修改.podspec
    
    Pod::Spec.new do |s|
    s.name         = "HLChineseLog" # 项目名称
    s.version      = "0.0.1"        # 版本号 与 你仓库的 标签号 对应,发布cocoapod必备
    s.license      = "MIT"          # 开源证书 也可以选其它的
    s.summary      = "A delightful TextField of PhoneNumber" # 项目简介
    s.description  = <<-DESC
        log chinese easy to use
        DESC
        # 在DESC之间写项目的description

    s.homepage     = "https://github.com/lhkzhl/HLChineseLog" # 你的主页
    s.source       = { :git => "https://github.com/lhkzhl/HLChineseLog.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
    s.source_files = "HLChineseLog/*.{h,m}" # 关键位置，pod install 要使用的代码的位置路径， HLChineseLog/*.{h,m} 表示 HLChineseLog 文件夹下所有的.h和.m文件，
    s.requires_arc = true # 是否启用ARC
    s.platform     = :ios, "7.0" #平台及支持的最低版本
    s.frameworks   = "UIKit", "Foundation" #支持的框架
    # s.dependency   = "AFNetworking" # 依赖库
    
    # User
    s.author             = { "lhkzhl" => "lhkzhl@163.com" } # 作者信息，默认会有

    end

####4.验证.podspec 文件配置是否正确
  $pod lib lint
  如果不对按提示修改配置
  
####5. 配置正确，发布之前必须 给仓库打标签 tag
$ git tag -a 0.0.1 -m [message]//创建标签
$ git push origin --tags//推送到远程
####6.发布 .podspec
pod trunk push [HLChineseLog.podspec]
如果成功可以到https://cocoapods.org/pods/HLChineseLog 查看

####7.问题
 虽然发布成功了但是别高兴太早，虽然能看到，但是在https://cocoapods.org/ 可以搜索不到，我是第二天才搜索到
 
 第二天搜索到了也不要高兴太早：
 因为$pod search HLChineseLog 搜索不到
 Unable to find a pod with name, author, summary, or description matching
 1.pod setup
 2.删除~/Library/Caches/CocoaPods目录下的search_index.json文件
     重新$pod search [HLChineseLog]
     耐心等待，终于搜索到了
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


