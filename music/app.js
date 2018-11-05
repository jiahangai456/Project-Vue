const express=require("express");
const app=express()
//1.加载图片轮播路由文件
const routerImagelist=require("./router/imagelist");
const TjImagelist=require("./router/tjimagelist");
const Mgdlist=require("./router/mygd")

//2.1加载跨域模块
const cors =require("cors")
//2.2允许那个地址跨域访问
app.use(cors({
	origin:["http://127.0.0.1:3001"],
		credentials:true
}))

//监听端口
app.listen(8000,()=>{
    console.log("服务器创建成功")
});
app.use(express.static(__dirname+"/public"));

//3.指定路由模块访问路径
app.use("/imagelist",routerImagelist);
app.use("/tjimglist",TjImagelist);
app.use("/mgdlist",Mgdlist);