This file should be opened with UTF-8 encoding!
It contains many Chinese sentence, other encoding ways may lead into wrong!
项目说明：
本项目是Javaweb类项目，只要采用了servlet和jsp构成
所有的html都被改写为jsp文件，具体见大部分jsp文件的头部
src文件夹下的proposal文件包包含了大部分功能，具体示意可以查看文件名称
test.jsp代表的是项目提交文件的界面

枚举其他有待处理的功能：
	注册邮件的邮件功能：
		主要介绍：
			注册账户需要提供验证码，现有的admin并不安全，而且难以区分管理员注册与用户注册
			管理员注册流程应该是，提供一个已有的管理员邮箱，系统生成一个与管理员邮箱，日期，注册人本人邮箱相关联的密码
			验证码发送到现有管理员的邮箱之后，由现有管理员告知未来管理员，未来管理员输入验证码完成注册
			验证码都必须是在1小时之内使用的，否则验证码就要失效
			要谨慎对待注册按钮，每一个注册用户1小时之内只能发送一封邮件
		已有项目：
			从CSDN上下载下来的已实现项目
	跳转页面功能：
		主要介绍：
			这个比较简单，就是通过数据库查询，完成普通用户页面和管理员页面的跳转，查询数据库即可完成
	迭代过滤器功能：
		主要介绍：
			为了防止用户不经过登录直接访问项目页面，CSDN上有相关的技术文章可以参考
		已有项目：
			把目前的账号和验证码写入cookie当中了，每一个页面都要在头部添加检测文件很麻烦
	数据库统一命名功能：
		主要介绍：
			编写sql脚本，方便在服务器端执行，其中各项的命名一定要注意，如果是相同内容的一定要一样的名字！
	周报周数生成功能：
		主要介绍：
			之前每一次提交都要输入周报，这样子恐怕是不太好，希望能给出一个基准时间设置为第0周，然后用提交时间计算后缀名应该是第几周
	路径设置功能：
		主要介绍：
			服务器上的路径应该要设置为D:/upload/XM13，注释里面有
	文件路径管理功能：
		主要介绍：
			把所有的有关的东西都放在文件夹里面通过特定的路径导向
	花里胡哨页面实现：
		主要介绍：
			如果未来能在一张页面里面实现也行，类似于教务系统和邮箱那样
	文件命名整理：
		主要介绍：
			把文件的名字也改的合理一点，不要瞎取名字
	登录页面修改：
		主要介绍：
			现有界面是根据原来的法律模板修改的，实在是太丑了，要改成那个灰色的比较好，
	cookie寿命：
		主要介绍：
			退出页面即删除cookie
	jsp文件遗留问题：
		主要介绍
			查看所有的jsp文件是否可以导向，万一存在代码中html没修改成jsp就不好了
采用leader还是manager
如何避免重复注册
第一次登录会遇到未登录的提示？
登出选项？
2020/10/30 








Dimension by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


This is Dimension, a fun little one-pager with modal-ized (is that a word?) "pages"
and a cool depth effect (click on a menu item to see what I mean). Simple, fully
responsive, and kitted out with all the usual pre-styled elements you'd expect.
Hope you dig it :)

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = not included)

AJ
aj@lkn.io | @ajlkn


Credits:

	Demo Images:
		Unsplash (unsplash.com)

	Icons:
		Font Awesome (fontawesome.io)

	Other:
		jQuery (jquery.com)
		Responsive Tools (github.com/ajlkn/responsive-tools)