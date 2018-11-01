<template>
    <div class="app_mymusic animated fadeInRightBig" >
       <div class="allhead">
            <div class="my-head">
                <div >
                    <router-link to="my" >
                    <img src="../../img/return.png"  style="width:25px;height:25px;">
                    </router-link>
                    <span>歌单</span>
                    <img src="../../img/bofang.png" style="width:25px;height:25px;">
                </div>
            </div>
       </div>
    </div>
</template>
<script>
   export default{
        data(){
            return{}
        },
        methods:{
        },
        created(){}
    }    
</script>
<style>
/*动画速度*/
.animated {
  animation-duration: 0.6s !important;
}
/*总头部*/
.allhead{
    width: 100%;
    height: 250px;
    border: 1px solid red;
}

/*my-head*/
.my-head {
   background-color: #d43c33; 
  height: 60px;
  width: 100%;
  /* position:fixed;
    top: 0;
    left: 0;*/
}
.my-head > div {
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

