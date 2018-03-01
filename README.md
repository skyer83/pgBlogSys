# pgBlogSys
博客系统 <BR>

### 采用技术：
1、后台管理：jfinal <BR>
2、前端展示：layui <BR>

### 参考项目：
[jfinal_demo_for_maven](http://www.jfinal.com/download/?file=jfinal-3.3_demo_for_maven.zip) <BR>


### 日志记录
#### 20180110 <br>
> 1、完成JFINAL路由注册规划：<BR>
* 后台管理的 Controller 统一在 BackRoutes 注册 <BR>
* 前台管理的 Controller 统一在 FrontRoutes 注册 <BR>

#### 20180111 <BR>
> 1、完成后台国际化规划：<BR>
* 每个模块独立一个 msg 包
* msg包下必有 3 个文件，如登录模块名为 login，则 3 个文件为：LoginMsg.java、 login_zh_CN.properties、login_en_US.properties
* 通过 LoginMsg.get(String key) 和 LoginMsg.format(String key, Object... arguments) 获取对应的值

#### 20180123 <BR>
> 1、完成库表设计<BR>
> 2、完成 model 生成<BR>
* model 生成类为 JFinalGenerator
* 生成 model 时生成的 MappingKit 类命名规范为：_ + 模块报名 + MappingKit
* 生成 model 后，需要手工到 com.black.blog.jfinal.common.MappingKit 添加映射，这样 model 才能生效

### 20180301 <BR>
> 初步集成 shiro
> 初步搭建前后台分离

### TODO:
* 整合Shiro，区分前后台登录
* 权限管理；
* 登录模块；
* 后台管理模块；


