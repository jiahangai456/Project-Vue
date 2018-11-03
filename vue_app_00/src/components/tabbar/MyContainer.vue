<template>
    <div class="app_my" >
            <div class="my-head">
                <div >
                    <img src="../../img/yun.png"  style="width:25px;height:25px;">
                    <span>我的音乐</span>
                    <img src="../../img/bofang.png" style="width:25px;height:25px;">
                </div>
            </div>
        <div class="my-list">
            <img src="../../img/icon-1.png" class="image1">    
            <div class="font">
                <div>
                    <span>本地音乐</span>
                    <span>(28)</span> 
                </div>
                <img src="../../img/icon-lba.png" class="image2">
            </div> 
        </div>
        <div class="my-list">
            <img src="../../img/icon-2.png" class="image1">    
            <div class="font">
                <div>
                    <span>最近播放</span>
                    <span>(15)</span> 
                </div>
            </div> 
        </div>
        <div class="my-list">
            <img src="../../img/icon-3.png" class="image1">    
            <div class="font">
                <div>
                    <span>我的电台</span>
                    <span>(9)</span> 
                </div>
                
            </div> 
        </div>
        <div class="my-list">
            <img src="../../img/icon-4.png" class="image1">    
            <div class="font">
                <div>
                    <span>我的收藏</span>
                    <span>(30)</span> 
                </div>
                
            </div> 
        </div>

        <div class="my-gd" @click="itemMenu($event,'xhgd')">
            <!--  :class="faile==1?'as':'bs'" -->
            <div class="jt bs"></div>
            <div class="my-gd-list">
                <span>我创建的歌单（1）</span>
                <img src="../../img/icon-5.png"  @click.stop="shezhi('我创建的歌单')">
            </div>
        </div>
        <router-link  to="/mymusic">
        <ul class="mui-table-view" style="display:none" :class="obj.xhgd==1?'ccs':''">
            <li class="mui-table-view-cell mui-media">
                <img class="mui-media-object mui-pull-left" src="../../img/tj2.jpg">
                <div class="mui-media-body" style="color:black">
                    最爱的音乐
                    <p class='mui-ellipsis'>35首</p>
                </div>
            </li>
        </ul>
         </router-link>
        <div class="my-gd" @click="itemMenu($event,'scgd')">
            <!--  :class="faile==1?'as':'bs'" -->
            <div class="jt bs"></div>
            <div class="my-gd-list">
                <span>我收藏的歌单（2）</span>
                <img src="../../img/icon-5.png" alt="" @click.stop="shezhi('我收藏的歌单',$event)">
            </div>
        </div>

         <router-link  to="/mymusic">
          <ul class="mui-table-view" style="display:none" :class="obj.scgd==1?'ccs':''">
              <li class="mui-table-view-cell mui-media">
                  <img class="mui-media-object mui-pull-left" src="../../img/tj2.jpg">
                  <div class="mui-media-body" style="color:black">
                      老王的歌单
                      <p class='mui-ellipsis'>5首</p>
                  </div>
              </li>
          </ul>
         </router-link>
         <router-link  to="/mymusic">
          <ul class="mui-table-view" style="display:none" :class="obj.scgd==1?'ccs':''">
              <li class="mui-table-view-cell mui-media">
                  <img class="mui-media-object mui-pull-left" src="../../img/tj2.jpg">
                  <div class="mui-media-body" style="color:black">
                      马云的歌单
                      <p class='mui-ellipsis'>55首</p>
                  </div>
              </li>
          </ul>
         </router-link>
        <div class="delete" v-show="isShow" @click="unshow" >
            <div class="delete-bt  animated fadeInUp">
                <span class="delete-title">{{text}}</span>
                <div class="my-list" style="background-color:white">
                    <img src="../../img/delete.png" class="image1">    
                    <div class="font" @click="sc">
                        <div >
                            <span>删&nbsp;除</span>
                        </div>               
                    </div> 
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { Toast } from "mint-ui";
export default {
  data() {
    return {
      //   0 收回  1展示
      faile: 0,
      isShow: false,
      ishow: false,
      text: [],
      obj: { xhgd: 0, scgd: 0 }
    };
  },
  methods: {
    shezhi(str, e) {
      this.text = str;
      this.isShow = !this.isShow;
    },
    unshow() {
      this.isShow = !this.isShow;
    },
    noshow(n) {
      for (var item in this.obj) {
        if (item == n) {
          if (this.obj[item] == 0) {
            this.obj[item] = 1;
          }else{
             this.obj[item] = 0;
          }
        }
      }
      // this.ishow = !this.ishow
    },
    sc() {
      Toast("删除成功！");
    },
    itemMenu(e, n) {
      var gg = e.currentTarget.children[0].classList;
      if (gg.value.indexOf("bs") != -1) {
        gg.remove("bs");
        gg.add("as");
      } else {
        gg.remove("as");
        gg.add("bs");
      }
      this.noshow(n);
    }
  },
  created() {}
};
</script>

<style scoped>
.ccs {
  display: block !important;
}
/* 动画速度 */
.animated {
  animation-duration: 0.4s !important;
}

/*my-head*/
.my-head {
  background-color: #d43c33;
  height: 65px;
  width: 100%;
  /* position:fixed;
    top: 0;
    left: 0;*/
}
.my-head > div {
  /*margin-top:30px;*/
  padding-top: 30px;

  margin-left: 3%;
  margin-right: 3%;
  color: white;
  font-size: 15px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
/*删除*/
.delete {
  position: fixed;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.5);
  width: 100%;
  height: 100%;
  z-index: 999;
}
.delete-bt {
  position: fixed;
  top: 80%;
  left: 0;
  background-color: white;
  width: 100%;
  height: 25%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}
/*删除 的标题*/
.delete-title {
  display: block;
  margin-top: 20px;
  margin-left: 15px;
  font-size: 14px;
}

.my-list {
  display: flex;
  height: 50px;
  line-height: 50px;
  background-color: rgb(247, 247, 247);
}
.my-list img {
  height: 20px;
  width: 20px;
}

.image1 {
  margin: 0.8em 0.5em;
}
.font > div > :nth-child(2) {
  color: gray;
  font-size: 14px;
  margin-left: 5px;
}
.font > div > :first-child {
  color: gray;
  margin-left: 5px;
  font-size: 15px;
}
.font {
  display: flex;
  align-items: center;
  width: 100%;
  border-bottom: 1px solid #eaeaeb;
  justify-content: space-between;
}
.image2 {
  margin-right: 10%;
}

/*箭头*/
.jt {
  display: flex;
  /*justify-content: space-between;*/
  align-items: center;
  margin: 0 0.5em;
}
.jt::after {
  content: "";
  width: 10px;
  height: 10px;
  border-top: 3px solid #ccc;
  border-right: 3px solid #ccc;
  transform: rotate(45deg);
}

.as::after {
  transform: rotate(135deg);
  transition: all 0.2s ease-in-out;
}

.bs::after {
  transform: rotate(45deg);
  transition: all 0.2s ease-in-out;
}
/*my-gd*/
.my-gd {
  height: 32px;
  display: flex;
  background-color: #e1e1e1;
}
/*设置图片*/
.my-gd img {
  width: 16px;
  height: 16px;
}

.my-gd-list {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-left: 5px;
  font-size: 13px;
  color: gray;
  margin-right: 10%;
}
</style>
