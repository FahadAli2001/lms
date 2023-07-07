import 'package:flutter/material.dart';
import 'package:lms/views/updatePersonalInfo/verify_password_screen.dart';

class CustomInfoView extends StatelessWidget {
  const CustomInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student No : 12488',
              style:
                  TextStyle(fontSize: size.height * 0.02, color: Colors.black),
            ),
            Text(
              'Student Name : Fahad Ali',
              style:
                  TextStyle(fontSize: size.height * 0.02, color: Colors.black),
            ),
            Text(
              'Father Name : Rahat Ali',
              style:
                  TextStyle(fontSize: size.height * 0.02, color: Colors.black),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerifyPasswordScreen()));
                },
                child: Text(
                  'Update Perssonal Information',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Update Photo',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.02),
                  )),
              Container(
                width: 70,
                height: 100,
                color: Colors.blueGrey,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.02),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
