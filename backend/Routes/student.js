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

router.post('/addstudent',upload.single('image'),(req,res)=>{
    const studentSchema = new StudentSchema({
        _id:mongoose.Types.ObjectId,
        student_no:req.body.student_no,
        password:req.body.password,
        student_name:req.body.student_name,
        father_name:req.body.father_name,
        guardian:req.body.guardian,
        gender:req.body.gender,
        dob:req.body.dob,
        nic_no:req.body.nic_no,
        email:req.body.email,
        mobile:req.body.mobile,
        residence:req.body.residence,
        phone_residence:req.body.phone_residence,
        city:req.body.city,
        country:req.body.country,
        post_code:req.body.post_code,
        image:{
          data:req.file.filename,
          contentType:file.path
        }
    });

    studentSchema.save()
    .then((result)=>{
      res.status(200).send(result);
    })

    .catch((err)=>{
      res.status(500).send(err);
    });
});




module.exports = router;