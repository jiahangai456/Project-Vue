import Vue from 'vue'
import App from './App.vue'
import router from './router'

import 'mint-ui/lib/style.css'

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
//import './lib/mui/js/mui.min.js'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
//animate.css
import './lib/animate/animate.css'



import {Header,Swipe,SwipeItem,Tabbar, TabItem} from "mint-ui"

Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Tabbar.name, Tabbar);
Vue.component(TabItem.name, TabItem);

//3.引入VueResource
import VueResource from "vue-resource"
//4.加载Vueresource
Vue.use(VueResource)

//6.设置全局ajax 访问基础路径
Vue.http.options.root="http://127.0.0.1:8000/";

//7.设置全局ajax post 访问格式
Vue.http.options.emulateJSON=true;


new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
