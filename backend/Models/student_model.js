const mongoose = require('mongoose');


const StudentSchema = mongoose.Schema({
    _id:mongoose.Types.ObjectId,
    student_no : String,
    password:String,
    student_name:String,
    father_name:String,
    guardian:String,
    gender:String,
    dob:String,
    nic_no:String,
    email:String,
    mobile:String,
    residence:String,
    phone_residence:String,
    city:String,
    country:String,
    post_code:String,
    image:{
        data:Buffer,
        contentType:String
    }
});

module.exports = mongoose.model('studentInfo',StudentSchema)