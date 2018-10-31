import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"

//引入自定义组件
import HomeContainer from "./components/tabbar/HomeContainer"
import PersonContainer from "./components/tabbar/PersonContainer"
import VideoContainer from "./components/tabbar/VideoContainer"
import MyContainer from "./components/tabbar/MyContainer"
import FriendContainer from "./components/tabbar/FriendContainer"
import AccountCotainer from "./components/tabbar/AccountContainer"

Vue.use(Router)

//指定该组件访问路径
export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/person',component:PersonContainer},
    {path:'/video',component:VideoContainer},
    {path:'/my',component:MyContainer},
    {path:'/friend',component:FriendContainer},
    {path:'/account',component:AccountCotainer},
  ],linkActiveClass:"mui-active"
})
