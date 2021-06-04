const mysql = require("mysql");

var  mysqlConnection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"swiggy_clone"

});

mysqlConnection.connect((err)=>{
 if(!err){
     console.log("Successfully connected to database ...!!");
 }
 else{
     console.log(err);
 }
});
const express = require("express");


const router = express.Router();

//To authneticate user
router.get("/customer_login/:email/:password",(req,res)=>{
    mysqlConnection.query("SELECT * from customers where user_mail=? and user_password=? ",[req.params.email,req.params.password],(err, rows, fields)=>{
        if(!err){
            res.send(rows);
        }
        else{
            console.log(err);
        }
    })
})

//To add customer to DB
router.post("/addcustomer",(req,res)=>{
    var cust = req.body;
    console.log(cust)
    var data=[cust.username,cust.useremail,cust.userphone,cust.userpassword]
    let sql = "INSERT INTO customers(user_name,user_mail,user_phone,user_password) VALUES( ?, ? ,?,?)";
    mysqlConnection.query(sql,data,(err, rows, fields)=>{
        if(!err){
      console.log('success')
      res.send(true);
        }
        else{
            console.log(err);
        }
    })
})






// router.get("/getFavorates/:userId",(req,res)=>{
//     mysqlConnection.query("SELECT * from admin where admin_email=? and admin_password=? ",[req.params.email,req.params.password],(err, rows, fields)=>{
//         if(!err){
//             res.s7end(rows);
//         }
//         else{
//             console.log(err);
//         }
//     })
// })

// router.post("/login",(req,res)=>{
//     var facility = req.body;
//     console.log(facility)
//     var data=[facility.facility, facility.facility_cost]
//     let sql = "INSERT INTO facilities(facility, facility_cost) VALUES( ?,?)";
//     mysqlConnection.query(sql,data,(err, rows, fields)=>{
//         if(!err){
//             res.json({"text":"success"});

//         }
//         else{
//             console.log(err);
//         }
//     })
// })

// router.post("/addFavorates",(req,res)=>{
//     var facility = req.body;
//     console.log(facility)
//     var data=[facility.facility, facility.facility_cost]
//     let sql = "INSERT INTO facilities(facility, facility_cost) VALUES( ?,?)";
//     mysqlConnection.query(sql,data,(err, rows, fields)=>{
//         if(!err){
//             res.json({"text":"success"});

//         }
//         else{
//             console.log(err);
//         }
//     })
// })





module.exports = router;
