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
        <div>
            <div  class="disc"></div>
            <img src="../../img/jj.png" alt="">
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
/*唱片*/
.disc {
	  position:absolute;
	  /* margin-top: 15%; */
	  /* margin-left: 20%; */
      top: 100px;
      left: 20%;
    
	  width: 250px;
	  height: 250px;
	  border-radius: 300px;
	  transform: rotate(45deg);
	  background-image: radial-gradient(5em 30em ellipse, #fff, #000);
	  border: 2px solid #131313;
	  box-shadow: 0 0 0 10px #343935;
	  opacity: 0.7;
	}

.app_detail{
    background-image:url(../../img/jj.png);
    background-size: 1000%;
    
}
.d-head{
    display: flex;
    justify-content: space-between; 
    align-items: center;
    margin-left: 10px;
    margin-right: 10px;
    padding-top: 10px;   
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


