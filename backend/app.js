const express = require("express");
const app = express();
const DatabaseConnection = require("./config/db");


const port = 3000;




app.listen(port,()=>{
    console.log('server is running on port ' + port);
    DatabaseConnection();
});