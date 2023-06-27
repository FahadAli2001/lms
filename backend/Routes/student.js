const mongoose = require('mongoose');
const express = require('express');
const multer = require('multer');
const path = require('path');
const StudentSchema = require('../Models/student_model');
const router = express.Router();


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, path.join(__dirname, '../upload'.replace(/ /g, '_')));
    },
    filename: function (req, file, cb) {
      const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9) + path.extname(file.originalname);
      cb(null, uniqueSuffix);
    },
  });
  
  const upload = multer({ storage: storage });

router.put('/addstudent',upload.single('image'),(req,res)=>{
    const studentSchema = new StudentSchema({
        _id:mongoose.Types.ObjectId,
    })
});




module.exports = router;