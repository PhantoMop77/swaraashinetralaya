// ignore_for_file: use_build_context_synchronously, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swaraashinetralaya/screens/homescreen.dart';
import 'package:swaraashinetralaya/widgets/snackbar.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});
  static var verificationId = '';
  static var phonenum = '';
  static String name = '';
  static String agep = '';
  static bool male = false;
  static bool female = false;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final pinController = TextEditingController();
  final phoneController = TextEditingController();
  var agecontroller = TextEditingController();
  bool _isSelectedMale = false;
  bool _isSelectedFemale = false;
  var nameController = TextEditingController();
  var phone = '';
  var colorss = const Color.fromARGB(255, 122, 228, 126);
  var ex;
  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );
  bool isDeviceConnected = false;
  late FocusNode myfocusnode;
  late bool isLoading;

  getgen() {
    var gen = '';
    if (_isSelectedMale) {
      setState(() {
        gen = 'Male';
      });
    } else if (_isSelectedFemale) {
      setState(() {
        gen = 'Female';
      });
    }
    return gen;
  }

  @override
  void initState() {
    super.initState();
    isLoading = false;

    myfocusnode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.only(top: 120, bottom: 40),
              color: Colors.transparent,
              child: Image.asset(
                "assets/logo.png",
                width: MediaQuery.of(context).size.width * 0.75,
              ),
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: Text(
                      "+ ${selectedCountry.phoneCode}",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: TextField(
                    autofocus: false,
                    maxLength: 10,
                    style: const TextStyle(fontSize: 17),
                    controller: phoneController,
                    onChanged: (value) {
                      PhoneNumber.phonenum = value;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      counterText: '',
                      border: InputBorder.none,
                      hintText: "Phone*",
                    ),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (val) {
                PhoneNumber.name = val;
              },
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                labelText: "Full Name*",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 122, 228, 126)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (val) {
                PhoneNumber.agep = val;
              },
              controller: agecontroller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Age*',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 122, 228, 126)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  backgroundColor: Colors.white,
                  selectedColor: const Color.fromARGB(255, 122, 228, 126),
                  side: const BorderSide(color: Colors.grey),
                  label: const Text("Male"),
                  selected: _isSelectedMale,
                  onSelected: (newvaluemale) {
                    setState(() {
                      PhoneNumber.male = newvaluemale;
                      _isSelectedMale = newvaluemale;
                      _isSelectedFemale = false;
                    });
                  },
                ),
                const SizedBox(
                  width: 40,
                ),
                ChoiceChip(
                  avatarBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  )),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.white,
                  selectedColor: const Color.fromARGB(255, 122, 228, 126),
                  side: const BorderSide(color: Colors.grey),
                  label: const Text("Female"),
                  selected: _isSelectedFemale,
                  onSelected: (newvaluefemale) {
                    setState(() {
                      PhoneNumber.female = newvaluefemale;
                      _isSelectedFemale = newvaluefemale;
                      _isSelectedMale = false;
                    });
                  },
                ),
              ],
            ),
            const Text('Exception:'),
            Text(ex.toString()),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return const Color.fromARGB(255, 122, 228, 126);
                          }
                          return const Color.fromARGB(255, 122, 228, 126);
                        },
                      ),
                    ),
                    onPressed: () async {
                      isDeviceConnected =
                          await InternetConnectionChecker().hasConnection;
                      if (isDeviceConnected) {
                        if (phoneController.length == 10 &&
                            PhoneNumber.name != '' &&
                            (_isSelectedMale || _isSelectedFemale) &&
                            PhoneNumber.agep != '') {
                          setState(() {
                            isLoading = true;
                          });
                          await FirebaseAuth.instance.verifyPhoneNumber(
                              phoneNumber: '+91${phoneController.text}',
                              verificationCompleted:
                                  (PhoneAuthCredential credential) async {
                                await FirebaseAuth.instance
                                    .signInWithCredential(credential);
                                setState(() {
                                  isLoading = false;
                                });
                              },
                              verificationFailed: (e) {
                                showSnackBar(context, "Verification Failed");
                                setState(() {
                                  ex = e;
                                  isLoading = false;
                                });
                              },
                              codeSent:
                                  (String verificationId, int? resendToken) {
                                PhoneNumber.verificationId = verificationId;

                                showModalBottomSheet<void>(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 200,
                                              child: Center(
                                                child: Pinput(
                                                  androidSmsAutofillMethod:
                                                      AndroidSmsAutofillMethod
                                                          .none,
                                                  focusNode: myfocusnode,
                                                  onCompleted: (pin) async {
                                                    try {
                                                      PhoneAuthCredential
                                                          credential =
                                                          PhoneAuthProvider
                                                              .credential(
                                                                  verificationId:
                                                                      PhoneNumber
                                                                          .verificationId,
                                                                  smsCode: pin);
                                                      await FirebaseAuth
                                                          .instance
                                                          .signInWithCredential(
                                                              credential)
                                                          .then((value) async {
                                                        FirebaseFirestore
                                                            .instance
                                                            .collection(
                                                                'numbers')
                                                            .doc(phoneController
                                                                .text)
                                                            .set({
                                                          'Mobile Number':
                                                              phoneController
                                                                  .text,
                                                          'Full Name':
                                                              nameController
                                                                  .text,
                                                        });

                                                        final SharedPreferences
                                                            sharedPreferences =
                                                            await SharedPreferences
                                                                .getInstance();
                                                        sharedPreferences
                                                            .setString(
                                                                'fname',
                                                                nameController
                                                                    .text);
                                                        sharedPreferences
                                                            .setString(
                                                                'age',
                                                                agecontroller
                                                                    .text);
                                                        sharedPreferences
                                                            .setString('gender',
                                                                getgen());
                                                        sharedPreferences
                                                            .setString(
                                                                'mobilenum',
                                                                phoneController
                                                                    .text);
                                                        Navigator.pop(context);
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const HomeScreen()));
                                                      });
                                                    } catch (e) {
                                                      showSnackBar(
                                                          context, "Wrong OTP");
                                                      pinController.text = '';
                                                    }
                                                  },
                                                  onSubmitted: (pin) async {
                                                    try {
                                                      PhoneAuthCredential
                                                          credential =
                                                          PhoneAuthProvider
                                                              .credential(
                                                                  verificationId:
                                                                      PhoneNumber
                                                                          .verificationId,
                                                                  smsCode: pin);
                                                      await FirebaseAuth
                                                          .instance
                                                          .signInWithCredential(
                                                              credential)
                                                          .then((value) async {
                                                        final SharedPreferences
                                                            sharedPreferences =
                                                            await SharedPreferences
                                                                .getInstance();
                                                        sharedPreferences
                                                            .setString(
                                                                'mobilenum',
                                                                phoneController
                                                                    .text);
                                                        sharedPreferences
                                                            .setString(
                                                                'fname',
                                                                nameController
                                                                    .text);
                                                        sharedPreferences
                                                            .setString(
                                                                'age',
                                                                agecontroller
                                                                    .text);
                                                        sharedPreferences
                                                            .setString('gender',
                                                                getgen());
                                                        Navigator.pop(context);
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const HomeScreen()));
                                                      });
                                                    } catch (e) {
                                                      showSnackBar(
                                                          context, "Wrong OTP");
                                                      pinController.text = '';
                                                    }
                                                  },
                                                  controller: pinController,
                                                  length: 6,
                                                  defaultPinTheme: PinTheme(
                                                    width: 56,
                                                    height: 56,
                                                    textStyle: const TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.5)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });

                                setState(() {
                                  myfocusnode.requestFocus();
                                  isLoading = false;
                                });
                              },
                              codeAutoRetrievalTimeout: (e) {});
                        } else {
                          showSnackBar(context, "Fill out all fields");
                        }
                      } else {
                        showSnackBar(context, "Check your internet connection");
                      }
                    },
                    child: isLoading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                                backgroundColor: Colors.grey.withOpacity(0.2),
                              ),
                            ),
                          )
                        : const Text(
                            'Get OTP',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    myfocusnode.dispose();

    super.dispose();
  }
}
