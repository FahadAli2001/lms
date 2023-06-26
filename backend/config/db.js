const mongoose = require("mongoose");

 mongoose.connect('mongodb://0.0.0.0:27017/lms', { useNewUrlParser: true, useUnifiedTopology: true });

const dbConnection= mongoose.connection;

dbConnection.on('open',()=>{
    console.log(
        'database connected'
    );
});

dbConnection.on('error',(err)=>{

    console.log(' database error' + err);

});

dbConnection.on('disconnected',()=>{
    console.log('database connection disconnected');
});

module.exports = dbConnection;