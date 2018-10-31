<template>
    <div id="app_tuijian">
        <div class="tj-list">
            <div class="tj-item" v-for="item in list" :key=item.id>
                <img :src="item.img_url">
                <span>{{item.title}}</span>
            </div>
        </div>
        
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        data(){
            return{
                list:[]
            }
        },
        methods:{
            getImageList(){
                var url="tjimglist/tjimg";    
                this.$http.get(url).then(result=>{
                    if(result.body){
                        //console.log(result)
                        this.list=result.body
                        //console.log(this.list)
                    }else{
                        Toast("图片获取失败")
                    }
                })
            }
        },
        created() {
            this.getImageList();
        },
    }    
</script>
<style>
    .tj-list{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .tj-list .tj-item{
        height: 180px;
        width: 32%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        box-sizing: border-box;
        font-size: 12.5px;
    }
    .tj-item>img{
        height: 120px;
        width: 100%;
        border-radius: 5px;
    }
    .tj-item>span{
        margin-top:4px; 
    }
</style>
