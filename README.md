**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

##### 基于springboot的bookstore电商书城系统

## 使用技术
  - 后台主要是springboot+mybatis+shiro+jsp，前端界面主要使用bootstrap框架搭建，并使用了ueditor富文本编辑器、highcharts图表库 
## 系统划分与功能
  - 该系统分为前台展示和后台管理两大模块。  
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
    
      ![contents](./picture/picture1.png)
    
      ![contents](./picture/picture2.png)
    
      ![contents](./picture/picture3.png)
    
      ![contents](./picture/picture4.png)
    
      ![contents](./picture/picture5.png)
    
      ![contents](./picture/picture6.png)
    
      ![contents](./picture/picture7.png)
    
      ![contents](./picture/picture10.png)
    
      ![contents](./picture/picture11.png)
    
      ![contents](./picture/picture12.png)
    
**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

**需要完整代码可以加qq  931708230 或者加微信  ynwwxid**

