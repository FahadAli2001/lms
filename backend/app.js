const express = require("express");
const app = express();
// const dbConnection = require("./config/db");


const port = 3000;


mongoose.connect('mongodb://0.0.0.0:27017/lms', { useNewUrlParser: true, useUnifiedTopology: true });


const db = mongoose.connection;

db.on('open', () => {
    console.log('MongoDB connected successfully');
});

db.on('error', (err) => {
    console.log('MongoDB connection error:', err);
});

db.on('disconnected', () => {
    console.log('MongoDB disconnected');
});


app.listen(port,()=>{
    console.log('server is running on port ' + port);
    
});