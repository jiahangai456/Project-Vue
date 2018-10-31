const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/lbimg",(req,res)=>{
    var sql="SELECT id, img_url, title FROM lbimg";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;