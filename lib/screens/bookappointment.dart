// ignore_for_file: use_build_context_synchronously,, empty_catches, body_might_complete_normally_catch_error

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swaraashinetralaya/widgets/snackbar.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});
  static int app = 0;
  static var fnamecontroller = TextEditingController();
  static var agecontroller = TextEditingController();
  static var mobilenumcontroller = TextEditingController();
  static var gencontroller = TextEditingController();

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime d = DateTime.now();
  final List<String> _slots = [
    'Morning Slot (10 AM to 1 PM)',
    'Afternoon Slot (2 PM to 5PM)',
    'Evening Slot (6 PM to 9 PM)'
  ];

  // getslot() {
  //   if (DateTime.now().hour > 16) {
  //     _slots = ['Evening Slot (6 PM to 9 PM)', 'Daksh'];
  //   } else if (DateTime.now().hour > 12) {
  //     _slots = ['Afternoon Slot (2 PM to 5PM)', 'Evening Slot (6 PM to 9 PM)'];
  //   } else if (DateTime.now().hour > 8) {
  //     _slots = [
  //       'Morning Slot (10 AM to 1 PM)',
  //       'Afternoon Slot (2 PM to 5PM)',
  //       'Evening Slot (6 PM to 9 PM)'
  //     ];
  //   }
  //   return _slots;
  // }

  final List<String> _branch = [
    'Thane',
    'Mulund',
    'Vashi',
  ];
  String _currentselectedvalueapp = 'Morning Slot (10 AM to 1 PM)';
  String _currentselectedbr = 'Thane';

  var purposecontroller = TextEditingController();
  var pincontroller = TextEditingController();
  var colorss = Colors.black.withOpacity(0.5);
  String? fullname;
  String? mobile;
  String? agec;
  String? genc;
  bool isDeviceConnected = false;

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
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    getValidation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 122, 228, 126),
          toolbarHeight: 65,
          elevation: 5,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Book an appointment',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                );
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.black),
                labelText: formatDate(d, [
                  yyyy,
                  '-',
                  mm,
                  '-',
                  dd,
                ]),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 122, 228, 126)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: const InputDecoration(
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
                  isEmpty: _currentselectedvalueapp == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _currentselectedvalueapp,
                      isDense: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          _currentselectedvalueapp = newValue!;
                          state.didChange(newValue);
                        });
                      },
                      items: _slots.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              readOnly: true,
              controller: BookAppointment.fnamecontroller,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Full Name*',
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
            TextField(
              readOnly: true,
              controller: BookAppointment.mobilenumcontroller,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                labelText: "Mobile Number*",
                counterText: '',
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
              readOnly: true,
              controller: BookAppointment.gencontroller,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Gender*',
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
            TextField(
              readOnly: true,
              controller: BookAppointment.agecontroller,
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
            FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: const InputDecoration(
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
                  isEmpty: _currentselectedbr == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _currentselectedbr,
                      isDense: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          _currentselectedbr = newValue!;
                          state.didChange(newValue);
                        });
                      },
                      items: _branch.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: purposecontroller,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Purpose*',
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
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color.fromARGB(255, 122, 228, 126);
                        }
                        return const Color.fromARGB(255, 122, 228, 126);
                        // Use the component's default.
                      },
                    ),
                  ),
                  onPressed: () async {
                    isDeviceConnected =
                        await InternetConnectionChecker().hasConnection;
                    if (isDeviceConnected) {
                      if (purposecontroller.text.isNotEmpty) {
                        await FirebaseFirestore.instance
                            .collection("branches")
                            .doc(_currentselectedbr)
                            .collection('patients')
                            .add(
                          {
                            'Age': agec,
                            'Date Time': formatDate(DateTime.now(),
                                [yyyy, '-', mm, '-', dd, ' | ', hh, ':', nn]),
                            'Full Name': fullname,
                            'Gender': genc,
                            'Mobile Number': mobile,
                            'Purpose': purposecontroller.text,
                            'Slot': _currentselectedvalueapp,
                            'Branch': _currentselectedbr,
                            'SMS': 'Pending',
                          },
                        ).then((value) async {
                          await FirebaseFirestore.instance
                              .collection('patients')
                              .add(
                            {
                              'Age': agec,
                              'Date Time': formatDate(DateTime.now(),
                                  [yyyy, '-', mm, '-', dd, ' | ', hh, ':', nn]),
                              'Full Name': fullname,
                              'Gender': genc,
                              'Mobile Number': mobile,
                              'Purpose': purposecontroller.text,
                              'Slot': _currentselectedvalueapp,
                              'Branch': _currentselectedbr,
                              'SMS': 'Pending',
                            },
                          ).then((value) {
                            Navigator.pop(context);
                            showSnackBar(
                                context, "Appointment booked for $fullname");
                          });
                        });
                      } else {
                        showSnackBar(context, "Fill out required fields");
                      }
                    } else {
                      showSnackBar(context, "Check your Internet Connection");
                    }
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
