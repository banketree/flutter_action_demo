框架学习Demo
1.路由，实现各模块，各业务的解耦
2.组件化
3.内存泄漏检测
4.埋点框架
5.各种炫酷动画
6.性能优化\


使用的第三方框架

1. injectable
   配合get_it框架，在编译时生成代码，实现依赖注入
   2.dio
   实现网络请求
   3.get_it
   实现依赖注入
   4.retrofit
   结合dio实现网络请求，编译时生成网络请求的代码
   5.logger
   日志打印
   6.toast
   吐司
   7.event_bus
   实现不同页面和组件的通信
   8.json_serializable
   结合json_annotation实现json数据序列化
   9.extended_image
   实现网络图片的加载,强大的官方 Image 扩展组件, 支持加载以及失败显示，缓存网络图片，缩放拖拽图片，绘制自定义效果等功能
   10.webview_flutter
   实现网页的加载
   11.shared_preferences
   简单的数据持久存储
   12.pull_to_refresh
   实现下拉刷新和分页加载
   13.floor
   数据库，使用类似于retrofit
   14.flutter_swiper
   图片轮播
   使用的架构和基础封装

1.基于flutter2.0
2.结合Provider实现MVVM架构,封装了BaseState，BaseStatefulWidget，BaseViewModel
3.结合模板方法模式，泛型，Mixin，依赖注入等方式，封装了大量重复的逻辑，简化了开发难度
4.Mixin类的封装：目前包含NavigatorMixin，ToastMixin，SharePreferenceMixin，EventBusMixin
5.DataBaseMixin基础Widget的封装：例如BottomDialog，CenterDialog，EnsureAndCancelDialog，
LoadingDialog，PopupWindow，CommonWrap，LazyIndexedStack等等
6.BaseViewModel统一网络请求，统一发起网络请求，同时处理异常，loading
7.使用扩展函数：扩展自Object，List，int，Widget，让代码更加简洁优雅
