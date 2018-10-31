<template>
    <div class="app_head">
        <div class="header">
        <div class="nr">
            <div>
                <img src="../../img/maike.png" >
            </div>
            <div class="dw search ">
                <input type="search" class="bgcolor"  placeholder="可不可以-张紫豪">
            </div>
            <div>
                <img src="../../img/bofang.png" class="bofang">
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
        created() {
            
        },
    }
</script>
<style scoped>
 .header{
       height: 65px;
       width: 100%;
       background-color:#D43C33;
       
   }
   .nr{
    padding-top: 10px;
    padding-left: 5px; 
    display: flex;
   }
   .search::before{
       display:table;
        position: absolute;
        top: 50%;
        left: 0%;
        color: white;
        margin-top: -18px;
        margin-left:10px;
        font-family: Muiicons;
        content: '\E466';
       
   }
   /*input父元素*/
   .search{
       width: 100%;
   }
   .dw{
       position: relative;
       
   }
   /*搜索框*/
   .search .bgcolor{
       padding:0;
       padding-left:30px;
       background-color:rgba(0,0,0,0.1) !important;
       border-radius: 30px!important;
       color:rgba(255, 255, 255, 0.781);
       font-size: 14px;
   }
   /*右侧播放按钮*/
   .bofang{
    width: 22px;
    height: 22px;
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 7px;
   }
</style>
