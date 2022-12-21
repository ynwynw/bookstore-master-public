**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

##### 基于springboot的bookstore电商书城系统
**如果图片加载不出来可以去博客看
[https://blog.csdn.net/weixin_43927649/article/details/125745729](https://blog.csdn.net/weixin_43927649/article/details/125745729)**
**毕业设计所有选题地址
[https://github.com/ynwynw/allProject](https://github.com/ynwynw/allProject)**
## 使用技术

  - 后台主要是springboot+mybatis+shiro+jsp，前端界面主要使用bootstrap框架搭建，并使用了ueditor富文本编辑器、highcharts图表库 

## 系统划分与功能

  - 该系统分为前台展示和后台管理两大模块。 
  - 前台地址  http://localhost:8083/   账号： xiaoxiao   密码： admin
  - 后台地址(管理员登录) http://localhost:8083/page/login  账号： admin  密码：admin
  - 前台主要是为消费者服务。该子系统实现了注册，登录，以及从浏览、下单到支付的整个流程，支付使用的是支付宝的沙箱环境，属于模拟环境。需要注册沙箱账号才能付款(可用支付账号:ynkltg9762@sandbox.com,密码:111111)。  
  - 后台主要是为商家服务，实现了权限，店铺，商品和订单等的管理，以及生成一些简单的报表信息。访问`/admin`进入后台    

## 依赖环境

  - jdk1.8,maven,mysql

  - 注意事项

    - 在数据库中创建名为`bookstore`数据库,然后运行项目的`resource`目录下的sql脚本，记得在`application.properties`改数据库配置信息

    - 登录系统的账号和密码，请自行查看数据库下的`user`表 (管理员账号：admin 密码：123)

    - `application.properties`中的邮箱配置要改成自己，否则不能注册系统账号

    - 使用沙箱环境的支付宝才能扫码支付，`application.properties`中的my.ip要改成自己，有项目名还要加项目名，否则支付成功回调出错 

      项目运行截图
      
      **前台页面**![在这里插入图片描述](https://img-blog.csdnimg.cn/defc98f4a64d4ba8a068db4086cf3086.png#pic_center)
**后台管理**
![在这里插入图片描述](https://img-blog.csdnimg.cn/5ec505d0b75645a288d6bba0aab06aa2.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/5265ee33d6bf44d98ff7f2ca04ec97f9.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/c0e2e616e4cf4f30b299cd13ff9e9891.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/e3b85afe69384641be8fc10b26b40414.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/4d1577fb56924e83bb8bcac730e42638.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/5a046e092fde4eec8bcfd404d6194e9f.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/3b7f5d6c4d844d91acc44baabd9b7def.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/6b49633692b441bda4bf46f0636e6af9.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/69d67571c72f42b499784c02edd8d5c6.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/caddb33c0a1a4d0087b037b256d5840b.png#pic_center)

    
**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

