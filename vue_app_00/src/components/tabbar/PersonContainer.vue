<template>
    <div id="app">
        <!--头部导航-->
        <header-box></header-box>
       <div>
            <ul class="ljul">
                <li><router-link to="/home" class="a">个性推荐</router-link></li>
                <li><router-link to="/person" class="a">主播电台</router-link></li>
            </ul>
        </div>
        <h1>这是主播电台页面</h1>
    </div>
</template>
<script>
    import HeaderContaier from  "../subcomponents/HeaderContainer.vue"
    export default{
        components:{
            
            'header-box':HeaderContaier
        },
        data(){
            return{}
        },
        methods:{},
        created(){}
    }    
</script>
<style>
</style>

