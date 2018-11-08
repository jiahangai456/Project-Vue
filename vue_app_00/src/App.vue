<template>
 <div class="app-container">
     <!--搜索框
    <div class="header">
        <div class="nr">
            <div>
                <img src="./img/maike.png" >
            </div>
            <div class="dw search ">
                <input type="search" class="bgcolor"  placeholder="可不可以-张紫豪">
            </div>
            <div>
                <img src="./img/bofang.png" class="bofang">
            </div>
        </div>
    </div>-->
    <router-view></router-view>
    <nav class="mui-bar mui-bar-tab">
        <router-link class="mui-tab-item " to="/home">
            <span class="mui-icon mui-icon-eye"></span>
            
            <span class="mui-tab-label">发现</span>
        </router-link>
        <router-link class="mui-tab-item " to="/video">
            <span class="mui-icon mui-icon-videocam"></span>
            <span class="mui-tab-label">视屏</span>
        </router-link>
        <router-link class="mui-tab-item " to="/my">
            <span class="mui-icon mui-icon-plus-filled"></span>
            <span class="mui-tab-label">我的</span>
        </router-link>
         <router-link class="mui-tab-item " to="/friend">
            <span class="mui-icon mui-icon-personadd"></span>
            <span class="mui-tab-label">朋友</span>
        </router-link>
        <router-link class="mui-tab-item " to="/account">
            <span class="mui-icon mui-icon-contact"></span>
            <span class="mui-tab-label">账号</span>
        </router-link>
    </nav>
 </div>
</template>
<script>
export default{
    data(){
        return {};
    },
    methods:{}
}
</script>
<style>
/*修改placeholder颜色*/
::-webkit-input-placeholder { /* WebKit browsers */
    color:rgba(255, 255, 255, 0.581);
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
    color:rgba(255, 255, 255, 0.581);
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
    color:rgba(255, 255, 255, 0.581);
}
:-ms-input-placeholder { /* Internet Explorer 10+ */
    color:rgba(255, 255, 255, 0.581);
}
.app-container{
    z-index: 10;
}
</style>
