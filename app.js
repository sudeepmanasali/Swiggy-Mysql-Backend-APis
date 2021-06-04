const express = require("express");
const app = express()

const bodyparser = require('body-parser');
const cors = require("cors");


app.use(bodyparser.json());
app.use(express.json())

app.use(cors())

const user = require("./routers/user")
const transactions = require("./routers/Transactions")

// const offers = require("./routers/offers")
// const transactions = require("./routers/Transactions")
// const address = require("./routers/manage_address")

app.use(transactions)
app.use(user);
// app.use(offers);
// app.use(transactions);
// app.use(address);

app.listen(8000, ()=>{console.log("My server is listening to the port 8000");});
