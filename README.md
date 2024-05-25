# pipeline-mvp-archetype骨架工程
## 目的
  快速构建pipeline应用。
## 说明
如果你不知道pipeline-mvp，移步
[pipeline-mvp](https://github.com/WXzhongwang/pipeline-mvp)
通过骨架，快速构建pipeline应用，关注点聚焦业务，快速搭建流程。内部存在部分私有仓库的地址，具体使用的话，可考虑移植到个人或公司的nexus服务上。
具体可以通过IDEA,添加好骨架之后，即可快速通过骨架工程快速创建工程，提高生产力。

先down下来代码后，修改私服地址，然后通过maven deploy即可快速发布到私服。

```
<distributionManagement>
    <repository>
        <id>private-releases</id>
        <url>https://packages.aliyun.com/maven/repository/2470424-release-mtB7Nz</url>
    </repository>
    <snapshotRepository>
        <id>private-snapshots</id>
        <url>https://packages.aliyun.com/maven/repository/2470424-snapshot-M3PWj7</url>
    </snapshotRepository>
</distributionManagement>
```
## 创建archetype前置
需把pipeline-mvp的相关依赖同样发布到统一的私服地址,这里我是把所有的package都托管到了云效package上了[云效package](https://packages.aliyun.com/maven)
![image](https://user-images.githubusercontent.com/27359059/147323930-6f7b6af4-8c04-4fa7-9e3c-fd67bec630e3.png)
## 添加archetype
![image](https://user-images.githubusercontent.com/27359059/147323477-0ef03867-675a-4926-aa6f-4ad918562d28.png)
## 使用archetype快速创建
![image](https://user-images.githubusercontent.com/27359059/147324620-889679c0-b4a7-469e-a72b-4797747446c0.png)
## 创建完成
![image](https://user-images.githubusercontent.com/27359059/147324128-2e1e85ff-354a-4add-841a-89f7e76b3c06.png)
## 鸣谢
[wellch4n](http://wellch4n.run/articles/maven-archetype-generate-scaffold.html)



