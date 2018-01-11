# pgBlogSys
博客系统 <BR>

### 采用技术：
1、后台管理：jfinal <BR>
2、前端展示：layui <BR>

### 参考项目：
[jfinal_demo_for_maven](http://www.jfinal.com/download/?file=jfinal-3.3_demo_for_maven.zip?_blank) <BR>


### 日志记录
20180110 <br>
> 1、完成JFINAL路由注册规划：<BR>
* 后台管理的 Controller 统一在 BackRoutes 注册 <BR>
* 前台管理的 Controller 统一在 FrontRoutes 注册 <BR>

20180111 <BR>
> 2、完成后台国际化规划：<BR>
* 每个模块独立一个 msg 包
* msg包下必有 3 个文件，如登录模块名为 login，则 3 个文件为：LoginMsg.java、 login_zh_CN.properties、login_en_US.properties
* 通过 LoginMsg.get(String key) 和 LoginMsg.format(String key, Object... arguments) 获取对应的值
