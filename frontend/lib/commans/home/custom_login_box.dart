import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/commans/custom_textfiled.dart';

class CustomLoginBox extends StatelessWidget {
  final String butnText;
  final VoidCallback ontap;
  const CustomLoginBox(
      {super.key, required this.butnText, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: Colors.white,
        // height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Already have an account ?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.025),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomTextField(
                  hintText: 'Username',
                  icon: const Icon(CupertinoIcons.person)),
            ),
            CustomTextField(
                hintText: 'Password', icon: const Icon(CupertinoIcons.lock)),
            Row(
              children: [
                Checkbox(value: true, onChanged: (val) {}),
                const Text(
                  "Remember username",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: CupertinoButton(
                  color: Colors.blueGrey,
                  onPressed: ontap,
                  child: Text(
                    butnText,
                    style: const TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
