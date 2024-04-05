// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swaraashinetralaya/screens/aboutus.dart';
import 'package:swaraashinetralaya/screens/appointment.dart';
import 'package:swaraashinetralaya/screens/bookappointment.dart';
import 'package:swaraashinetralaya/screens/contactus.dart';
// import 'package:swaraashinetralaya/screens/healthtips.dart';
import 'package:swaraashinetralaya/screens/phone.dart';
import 'package:swaraashinetralaya/screens/photos.dart';
// import 'package:swaraashinetralaya/screens/services.dart';
// import 'package:swaraashinetralaya/screens/videos.dart';
import 'package:swaraashinetralaya/widgets/snackbar.dart';

class Navdrawer extends StatefulWidget {
  const Navdrawer({super.key});

  @override
  State<Navdrawer> createState() => _NavdrawerState();
}

class _NavdrawerState extends State<Navdrawer> {
  var ic = const Icon(Icons.navigate_next_outlined);
  String? fullname;
  String? mobile;
  String? agec;
  String? genc;
  bool isDeviceConnected = false;

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context, null);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  getValidation() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var fname = sharedPreferences.getString('fname');
    var num = sharedPreferences.getString('mobilenum');
    var age = sharedPreferences.getString('age');
    var gen = sharedPreferences.getString('gender');
    setState(() {
      fullname = fname;
      mobile = num;
      agec = age;
      genc = gen;
    });
  }

  @override
  void initState() {
    getValidation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          children: [
            ListTile(
              title: Text('Hello, $fullname'),
              subtitle: Text('$mobile'),
            ),
            const Divider(
              height: 10,
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              trailing: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                onExpansionChanged: (v) {
                  if (v) {
                    setState(() {
                      ic = const Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.black,
                      );
                    });
                  } else {
                    setState(() {
                      ic = const Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                      );
                    });
                  }
                },
                trailing: ic,
                leading: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.black,
                ),
                title: const Text(
                  "Book appointment",
                  style: TextStyle(color: Colors.black),
                ),
                children: [
                  ListTile(
                    selectedColor: Colors.grey,
                    title: const Text(
                      "Book for yourself",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.black,
                    ),
                    onTap: () {
                      if (DateTime.now().weekday != 7) {
                        if (DateTime.now().hour > 8 &&
                            DateTime.now().hour < 20) {
                          BookAppointment.gencontroller.text = genc!;
                          BookAppointment.fnamecontroller.text = fullname!;
                          BookAppointment.mobilenumcontroller.text = mobile!;
                          BookAppointment.agecontroller.text = agec!;
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BookAppointment()));
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text(
                                  'Appointment booking is only available between 8am to 8pm.\nTry again tomorrow',
                                  style: TextStyle(fontSize: 18),
                                ),
                                actions: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return const Color.fromARGB(
                                                255, 122, 228, 126);
                                          }
                                          return const Color.fromARGB(
                                              255, 122, 228, 126);
                                        },
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Ok',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        }
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                'Hospital is closed on Sunday\nTry again tomorrow.',
                                style: TextStyle(fontSize: 18),
                              ),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return const Color.fromARGB(
                                              255, 122, 228, 126);
                                        }
                                        return const Color.fromARGB(
                                            255, 122, 228, 126);
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Ok',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                  ListTile(
                    selectedColor: Colors.grey,
                    title: const Text(
                      "Book for others",
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.black,
                    ),
                    onTap: () {
                      if (DateTime.now().weekday != 7) {
                        if (DateTime.now().hour > 8 &&
                            DateTime.now().hour < 20) {
                          BookforOther.mobilenumcontroller.text = mobile!;
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BookforOther()));
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text(
                                  'Appointment booking is only available between 8am to 8pm.\nTry again tomorrow',
                                  style: TextStyle(fontSize: 18),
                                ),
                                actions: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return const Color.fromARGB(
                                                255, 122, 228, 126);
                                          }
                                          return const Color.fromARGB(
                                              255, 122, 228, 126);
                                        },
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Ok',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        }
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                'Hospital is closed on Sunday\nTry again tomorrow.',
                                style: TextStyle(fontSize: 18),
                              ),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return const Color.fromARGB(
                                              255, 122, 228, 126);
                                        }
                                        return const Color.fromARGB(
                                            255, 122, 228, 126);
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Ok',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              selectedColor: Colors.grey,
              leading: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: const Text(
                "About Us",
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
              },
            ),
            ListTile(
              selectedColor: Colors.grey,
              leading: const Icon(
                Icons.phone_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "Contact Us",
                style: TextStyle(color: Colors.black),
              ),
              trailing: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ContactUs()));
              },
            ),
            ListTile(
              selectedColor: Colors.grey,
              leading: const Icon(
                Icons.local_hospital_outlined,
                color: Colors.black,
              ),
              trailing: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "Services",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const OurServices()));
              },
            ),
            // ListTile(
            //   selectedColor: Colors.grey,
            //   leading: const Icon(
            //     Icons.video_call_outlined,
            //     color: Colors.black,
            //   ),
            //   trailing: const Icon(
            //     Icons.navigate_next_outlined,
            //     color: Colors.black,
            //   ),
            //   title: const Text(
            //     "Videos",
            //     style: TextStyle(color: Colors.black),
            //   ),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const StudioScreen()));
            //   },
            // ),

            ListTile(
              selectedColor: Colors.grey,
              leading: const Icon(
                Icons.photo_outlined,
                color: Colors.black,
              ),
              trailing: const Icon(
                Icons.navigate_next_outlined,
                color: Colors.black,
              ),
              title: const Text(
                "Photo Gallery",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OurPhotos()));
              },
            ),
            // ListTile(
            //   selectedColor: Colors.grey,
            //   leading: const Icon(
            //     Icons.favorite_outline,
            //     color: Colors.black,
            //   ),
            //   trailing: const Icon(
            //     Icons.navigate_next_outlined,
            //     color: Colors.black,
            //   ),
            //   title: const Text(
            //     "Health Tips",
            //     style: TextStyle(color: Colors.black),
            //   ),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const HealthTips()));
            //   },
            // ),
            ListTile(
              selectedColor: Colors.grey,
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: const Text(
                "Sign out",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () async {
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (isDeviceConnected) {
                  await FirebaseAuth.instance.signOut().then((value) {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneNumber()));
                  });
                } else {
                  showSnackBar(context, 'Check internet connection');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
