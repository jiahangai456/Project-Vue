<template>
    <div class="app">
        <!--主页组件-->
       <header-box></header-box>
       <!--头部导航-->
       <div>
            <ul class="ljul">
                <li><router-link to="/home" class="a">个性推荐</router-link></li>
                <li><router-link to="/person" class="a">主播电台</router-link></li>
            </ul>
        </div>
        <!--轮播图-->
        <div class="mui-card card">
            <mt-swipe :auto="4000" >
                <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url" />
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <!--3宫格-->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-4">
                <router-link  to="/home/newslist">
                    <img src="../../img/menu12.png"/>
                    <div class="mui-media-body">私人FM</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-4">
                <router-link to="/goodlist">
                    <img src="../../img/menu13.png"/>
                    <div class="mui-media-body">每日听歌推荐</div>
                </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-4">
                <a href="#">
                    <img src="../../img/menu11.png"/>
                    <div class="mui-media-body">云音乐热歌榜</div>
                </a>
            </li>
        </ul> <hr>
        <!--歌曲推荐-->
        <div class="tj"> 
            <img src="../../img/aei.png" alt="#">
            <div >
                <span>推荐歌单</span>
                <span>&nbsp;&nbsp;></span>
            </div>
        </div>
        <tuijian-box></tuijian-box>
        <div class="tj"> 
            <img src="../../img/aei.png" alt="#">
            <div >
                <span>最新音乐</span>
                <span>&nbsp;&nbsp;></span>
            </div>
        </div>
        <div class="zw">
            <h4>更多内容,开发中......</h4>
        </div>
    </div> 
</template>
<script>
    import HeaderContaier from  "../subcomponents/HeaderContainer.vue"
    import {Toast} from "mint-ui";
    import TuijianContainer from "../subcomponents/TuijianContainer.vue"
    export default{
        components:{
            'tuijian-box':TuijianContainer,
            'header-box':HeaderContaier
        },
        data(){
            return{
                list:[]
            }
        },
        methods:{
            getImageList(){
                //console.log("1")
                //获取图片轮播数据
                //console.log(123)
                var url="imagelist/lbimg";
                this.$http.get(url).then( result=>{
                    //console.log(result)
                        //node.js 发送json字符串
                        //通过Vueresource接收自动将json字符串转换
                        //js 对象
                        if(result.body){
                            this.list=result.body;
                        }
                        else{
                            //错误提示  Toast()
                            Toast("加载轮播图片失败...");
                        }
                    }
                )
            }
        },
        created(){
            this.getImageList();
        }
    }
   
			
</script>
<style>
    hr{
        margin:0;
    }
    .app .mint-swipe{
        height:150px;
    }
    .app .mint-swipe img{
        width:100%;
        height:150px;
    }
    /*card 边框*/
    .card{
        border-radius: 8px !important;
        margin-bottom: 0 !important;
        background-color: #EFEFF4 !important;
    }

    /*头部第二部分连接*/
   .ljul{
       background-color: #D43C33;
       display: flex;
       list-style: none;
       padding: 0;
       margin: 0;
       justify-content: space-around;
       height:30px;    
       
   }
   /*routerlink*/
   .a{
       color:white !important;
       font-size: 14px;
       font-family: "SimHei";
       
   }
 /*第一个高亮*/
   .mui-active{
       font-size: 15.5px;
       font-weight: bold;
      
       
   }

    /*九宫格*/
    .app .mint-swipe{
        height:150px;
    }
    .app .mint-swipe img{
        width:100%;
    }
    /*六宫格背景为白色 去除边框 字体 图片大小*/ 
   .app .mui-grid-view.mui-grid-9{
        background-color:#EFEFF4;
    }
    .app .mui-grid-view.mui-grid-9 li{
        border:0;
    }
    .app .mui-grid-view.mui-grid-9 img{
        width:60px;
        height:60px;
    }
    /*推荐歌单css*/
    .tj{
        display: flex;
        margin-top: 5px;
        align-items: center;    
    }
    /*推荐 div内的内容*/
    .tj>div{
        padding-top:2px;
        padding-left:10px;
    }
    /*推荐中 > 样式颜色*/
    .tj div>:nth-child(2){
        color: #B1B1B1;
    }
    /*span 字体样式*/
    .tj div>:first-child{
        font-size: 15.4px;
        font-weight: bold;
    }
    /*推荐 日历图片*/
    .tj img{
        width: 24px;
        height: 24px;
        margin-left: 10px;
        
    }
    /*占位div*/
    .zw{
        height: 150px;
        padding:30px 25%;
    }
</style>

