# FirstPod
第一个自己的库cocopods

1、注册Trunk 

    查看自己是否注册过Trunk     $ pod trunk me
    注册   // pod trunk register 账号 ‘用户名’
    pod trunk register xxx@qq.com 'xxx' --verbose
    
    --verbose参数是为了便于输出在注册过程中的调试信息。执行上面的语句后，你的邮箱将会受到一封带有验证链接的邮件。点击邮件的链接就完成了trunk注册流程。
    点击链接跳转，出现下图表示注册成功。
    
2、创建一个项目
    1、github上创建一个项目
    2、将项目克隆下来,并添加公开库文件
    
3、创建.podspec
    1、cd 到你的项目下
    2、pod spec create FirstPod  // 注 FirstPod 这个是你框架的名称


4、编辑.podspec文件

5、如果前面没有选择创建这个LICENSE文件， 创建LICENSE(许可证/授权)文件,此文件必须要有

6、打tag 上传到Git

    pod trunk register xxx@qq.com 'xxx' --verbose

    pod lib lint

    git init （git初始化本地工程，还不是git工程）

    git tag 0.0.1
    git push --tag

    git add .                   #将当前目录下所有文件和子目录的修改记录到Git索引中
    git status                  #列出当前目录下被修改还未提交的状态
    git commit -m 'change file content'     #提交被add的改动
    git push origin master           #push代码到Git

7、验证.podspec文件

    // --verbose 如果验证失败会报错误信息
    pod spec lint FirstPod.podspec --verbose
    
8 、发布

    pod trunk push FirstPod.podspec
    可能会出现重名的情况 修改.podspec的名字 及里面配置的名字即可
9、验证仓库

    pod search FirstPod
    
    
参考：

    https://www.jianshu.com/p/1c2046f8ee87
    http://www.cocoachina.com/ios/20180308/22509.html
