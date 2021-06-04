const mysql = require("mysql");

var  mysqlConnection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:""

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

router.get("/getAddress",(req,res)=>{
    mysqlConnection.query("SELECT * from admin where admin_email=? and admin_password=? ",[req.params.email,req.params.password],(err, rows, fields)=>{
        if(!err){
            res.s7end(rows);
        }
        else{
            console.log(err);
        }
    })
})

router.post("/addHome",(req,res)=>{
    var facility = req.body;
    console.log(facility)
    var data=[facility.facility, facility.facility_cost]
    let sql = "INSERT INTO facilities(facility, facility_cost) VALUES( ?,?)";
    mysqlConnection.query(sql,data,(err, rows, fields)=>{
        if(!err){
            res.json({"text":"success"});

        }
        else{
            console.log(err);
        }
    })
})

router.post("/addOther",(req,res)=>{
    var facility = req.body;
    console.log(facility)
    var data=[facility.facility, facility.facility_cost]
    let sql = "INSERT INTO facilities(facility, facility_cost) VALUES( ?,?)";
    mysqlConnection.query(sql,data,(err, rows, fields)=>{
        if(!err){
            res.json({"text":"success"});

        }
        else{
            console.log(err);
        }
    })
})
