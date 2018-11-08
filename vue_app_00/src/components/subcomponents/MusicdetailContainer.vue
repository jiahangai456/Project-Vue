<template>
    <div class="app_detail animated fadeInUpBig">
        <div class="d-head">
            <router-link to="/mymusic">
                <img src="../../img/houtui.png" alt="" style="width:23px;height:23px">
            </router-link>
            <div class="f-head">
                <span style="font-size:15px">她说</span>
                <span style="font-size:14px">林俊杰</span>
            </div>
            <img src="../../img/fx.png"  style="width:23px;height:23px">
        </div>
        <div >
            <div  class="disc"></div>
            <img src="../../img/jj.png" alt="" class="png">
        </div>
        <div class="tb">
            <img src="../../img/like2.png" alt="">
            <img src="../../img/xz.png" alt="">
            <img src="../../img/pl.png" alt="">
            <img src="../../img/sl.png" alt="">
        </div>
        <div>
            <div class="dx"></div>
        </div>
        <div class="ztl">
            <img src="../../img/dqxh.png" alt="">
            <img src="../../img/prev.png" alt="">
            <img src="../../img/bf.png" alt="">
            <img src="../../img/next.png" alt="">
            <img src="../../img/zjbf.png" alt="">

        </div>
    </div>
</template>
<script >
    export default{
        data(){
            return{

            }
        },
        methods:{

        },
        created() {
            
        },
    }    
</script>
<style scoped>
/* 动画速度 */
.animated {
  animation-duration: 0.7s !important;
}
/*状态栏*/
.ztl{
    display: flex;
    justify-content: space-around;
    margin-top: 80px;
    padding-bottom: 80px;
}
.ztl img{
    width: 35px;
    height: 35px;
}
/*进度条*/
.dx{
    
    height: 5px;
    background-color:#D43C33;
    margin: 0 10px;
    border-radius: 5px;
    margin-top: 70px;
}
/*喜欢分享图标*/
.tb{
    
    display: flex;
    justify-content: space-around;
}
.tb img{
    width: 25px;
    height: 25px;
}
/*唱片图片*/
.png{
    width: 175px;
    height: 175px;
    border-radius: 50%;
    position: relative;
    top: -102px;
    left: 50%;
    margin-left: -87.5px;
    
}
/*唱片*/
.disc {
	  position:relative;
	  /* margin-top: 15%; */
	  /* margin-left: 20%; */
      top: 90px;
      left: 50%;
      margin-left: -105px;
	  width: 210px;
	  height: 210px;
	  border-radius: 300px;
	  transform: rotate(45deg);
	  background-image: radial-gradient(5em 30em ellipse, #fff, #000);
	  border: 2px solid #131313;
	  box-shadow: 0 0 0 10px #343935;
	  opacity: 0.7;
	}

.app_detail{
    background-image:url(../../img/jj.png);
    background-size: 800%;
   
}
.d-head{
    display: flex;
    justify-content: space-between; 
    align-items: center;
    margin-left: 10px;
    margin-right: 10px;
    padding-top: 10px;  
    border-bottom: 1px solid rgba(255, 255, 255, .5); 
}
.f-head{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.f-head span{
    color:white;
}
</style>


