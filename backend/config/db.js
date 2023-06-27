const mongoose = require('mongoose');

mongoose.connect('mongodb://0.0.0.0:27017/lms', { useNewUrlParser: true, useUnifiedTopology: true });


const db = mongoose.connection;

function DatabaseConnection(){
    db.on('open', () => {
        console.log('MongoDB connected successfully');
    });
    
    db.on('error', (err) => {
        console.log('MongoDB connection error:', err);
    });
    
    db.on('disconnected', () => {
        console.log('MongoDB disconnected');
    });
    
}

module.exports = DatabaseConnection;
