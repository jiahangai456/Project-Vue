const express=require("express")
const pool = require("../pool")
var router = express.Router()

router.get("/mygd",(req,res)=>{
    var sql = "SELECT id,mname,mdetail FROM mygd"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
module.exports = router;