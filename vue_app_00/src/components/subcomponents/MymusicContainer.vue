<template>
    <div class="app_mymusic animated zoomIn" >
       <div class="allhead head-top">
            <div class="my-head">
                <div>
                    <router-link to="my" >
                    <img src="../../img/return1.png"  style="width:23px;height:23px;">
                    </router-link>
                    <span>歌单</span>
                    <img src="../../img/bofang.png" style="width:25px;height:25px;">
                </div>
                <div class="gern-head">
                    <img src="../../img/tj2.jpg" alt="" style="width:130px;height:130px">
                    <div class="geren">
                        <span>我喜歡的音乐</span>
                        <div>
                            <img src="../../img/tou2.png" alt="" style="width:30px;height:30px;">
                            <span>Care丶航航航</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ab">
                <div class="cd">
                    <img src="../../img/pl.png" alt="" style="height:20px;width:20px">
                    <span>评论</span>
                </div>
                <div class="cd">
                    <img src="../../img/fx1.png" alt="" style="height:20px;width:20px">
                    <span>分享</span>
                </div>
                <div class="cd">
                    <img src="../../img/xz.png" alt="" style="height:20px;width:20px">
                    <span>下载</span>
                </div>
                <div class="cd">
                    <img src="../../img/dx.png" alt="" style="height:20px;width:20px">
                    <span>多选</span>
                </div>
            </div>
            <div class="gd-list">
                <div>
                    <img src="../../img/yinyue.png" alt="" style="width:20px;height:20px;">
                    <span>播放全部</span>
                    <span>({{list.length-1}}首)</span>
                </div>
                <div>
                    <img src="../../img/duoxuan.png" alt="" style="width:20px;height:20px;">
                    <span>多选</span>
                </div>
            </div>
       </div>
    <div class="f-gdlist">

       <ul class="mui-table-view gd-top" >
        <li class="mui-table-view-cell mui-media" v-for="item of list" :key="item.id">
                <span class="mui-media-object mui-pull-left" style="color:gray;">{{item.id}}</span>
                <div class="mui-media-body a1">
                    <div>
                    {{item.mname}}
                    <p class='mui-ellipsis'>{{item.mdetail}}</p>
                    </div>
                    <img src="../../img/shenglue.png" alt="" style="width:25px;height:25px">
                </div>
        </li>
        </ul>
    </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
   export default{
        data(){
            return{
                num:0,
                list:[]
            }
        },
        methods:{
            a(){
                this.num=1
            },
            getmygdlist(){
                var url = "mgdlist/mygd";
                this.$http.get(url).then(result=>{
                    if(result.body){
                        this.list = result.body
                    }else{
                        Toast("列表加载失败...")
                    }
                })
            }
        },
        created(){
            this.getmygdlist()
        }
    }    
</script>
<style scoped>
/*歌单据头部上边距*/

/*最上头部的固定定位*/
.head-top{
    position: fixed;
    top:0;
    left:0;
    z-index: 999;
}
/*歌单列表对齐方式*/
.a1{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-left: 35px
}
/*动画速度*/
.animated {
  animation-duration: 0.6s !important;
}
/*歌单列表*/
.f-gdlist{
    position: relative;
    top:290px;
}
.gd-list{
    display:flex;
    justify-content: space-between;
    align-items: center;
    background-color: white;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    padding: 5px 0;
}
.gd-list div{
    display: flex;
    align-items: center;
    margin-left: 10px;
    margin-right: 10px;
    
}
.gd-list div>span{
    margin-left: 8px;
    color: rgb(65, 63, 63);
    font-size: 15.5px;
}

/*分享栏*/
.ab{
    margin-top: 165px;
    width: 100%;
    display: flex;
    justify-content: space-around; 
}
.cd{
    color: rgb(221, 214, 214);
    font-size: 14px;
    line-height: 25px;
    display: flex;
    flex-direction: column;
    align-items: center;
}
/*头部底下个人*/
.gern-head{
   float: left; 
   padding-left:10px ;
   padding-top:10px;
}
.geren{
    margin-left: 30px;
    display: flex;
    align-items:center;
    flex-direction: column
}
.geren>div{
    margin-top:20px;
    display: flex;
    align-items: center;
    font-size: 14px;
    color: rgb(221, 211, 211)
}
.geren>div>span{
    margin-left: 10px;
}
/*body背景颜色*/
.allhead{
    background-image: url(../../img/tj2.jpg);
    background-size: 1600%; 
    background-position: center center;
    border-bottom-right-radius: 10px;
    border-bottom-left-radius: 10px;
}
/*总头部*/
.allhead{
    width: 100%;
    height: 290px;
}

/*my-head*/
.my-head {
  height: 50px;
  width: 100%;
}
.my-head>div {
  /*margin-top:30px;*/
  padding-top: 20px;

  margin-left: 3%;
  margin-right: 3%;
  color: white;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
</style>

