const express = require("express");
const pool = require("../pool");

var router=express.Router();

router.get('/tjimg',(req,res)=>{
    var sql = "SELECT id, img_url, title FROM tjimg";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;