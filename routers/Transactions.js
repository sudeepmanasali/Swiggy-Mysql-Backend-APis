const mysql = require("mysql");

var  mysqlConnection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"swiggy_clone"

});

mysqlConnection.connect((err)=>{
 if(!err){
     console.log("SUccessfully connected to database ...!!");
 }
 else{
     console.log(err);
 }
});
const express = require("express");


const router = express.Router();



router.get("/getTransactions/:userid",(req,res)=>{
    mysqlConnection.query("SELECT * from orders where user_id =? ",[req.params.userid],(err, rows, fields)=>{
        if(!err){
            res.send(rows);
        }
        else{
            console.log(err);
        }
    })
})

router.post("/addTransactions",(req,res)=>{
    var data = req.body;
    console.log(req.body)
    var data1=[data.userId, data.items, data.amount, data.hotel_name, data.deliver_address]
    let sql = "INSERT INTO orders(user_id, items, amount, hotel_name, delivery_Address) VALUES( ?, ?, ?, ?, ?)";
    mysqlConnection.query(sql,data1,(err, rows, fields)=>{
        if(!err){
            res.json({"text":"success"});

        }
        else{
            console.log(err);
        }
    })
})


module.exports = router;