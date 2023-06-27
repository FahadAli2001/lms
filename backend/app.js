const express = require("express");
const app = express();
const DatabaseConnection = require("./config/db");
const bodyParser = require('body-parser');

const port = 3000;

app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());


app.listen(port,()=>{
    console.log('server is running on port ' + port);
    DatabaseConnection();
});