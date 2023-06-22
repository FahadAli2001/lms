import 'package:flutter/material.dart';

import 'custom_options_button.dart';

class CustomOptionButtonsColumn extends StatelessWidget {
  const CustomOptionButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          //color: Colors.amber,
          width: 600,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomOptionsButton(
                    text: 'Current Courses',
                  ),
                  CustomOptionsButton(
                    text: 'Test Results',
                  ),
                  CustomOptionsButton(
                    text: 'Self Registration',
                  ),
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomOptionsButton(
                      text: 'Program Syllabus',
                    ),
                    CustomOptionsButton(
                      text: 'Test Results(OBE)',
                    ),
                    CustomOptionsButton(
                      text: 'Class Shedule',
                    ),
                  ],
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomOptionsButton(
                    text: 'Attandance Report',
                  ),
                  CustomOptionsButton(
                    text: 'Program sheet',
                  ),
                  CustomOptionsButton(
                    text: 'Exam Shedule',
                  ),
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomOptionsButton(
                      text: 'Book Issued',
                    ),
                    CustomOptionsButton(
                      text: 'Search kiet library',
                    ),
                    CustomOptionsButton(
                      text: 'Academic Calendar',
                    ),
                  ],
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomOptionsButton(
                    text: 'Student Fee Bill',
                  ),
                  CustomOptionsButton(
                    text: 'Digital Library',
                  ),
                  CustomOptionsButton(
                    text: 'Student Support',
                  ),
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomOptionsButton(
                      text: 'Online Fee Payment',
                    ),
                    CustomOptionsButton(
                      text: 'Fee Statement',
                    ),
                    CustomOptionsButton(
                      text: 'Last 30 days SMS',
                    ),
                  ],
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomOptionsButton(
                    text: 'Online Clearance',
                  ),
                  CustomOptionsButton(
                    text: 'Grade History',
                  ),
                  CustomOptionsButton(
                    text: 'Last 30 days Emails',
                  ),
                ],
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CustomOptionsButton(
                      text: 'Alumi info',
                    ),
                    CustomOptionsButton(
                      text: 'PLO Attainment',
                    ),
                    CustomOptionsButton(
                      text: 'CLO Attainment',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
