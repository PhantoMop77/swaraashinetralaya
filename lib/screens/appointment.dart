// ignore_for_file: use_build_context_synchronously, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:swaraashinetralaya/widgets/snackbar.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class BookforOther extends StatefulWidget {
  const BookforOther({super.key});
  static int app = 0;
  static var mobilenumcontroller = TextEditingController();

  @override
  State<BookforOther> createState() => _BookForOtherState();
}

class _BookForOtherState extends State<BookforOther> {
  DateTime d = DateTime.now();
  final List<String> _slots = [
    'Morning Slot (10 AM to 1 PM)',
    'Afternoon Slot (2 PM to 5PM)',
    'Evening Slot (6 PM to 9 PM)'
  ];
  final List<String> _genders = [
    'Male',
    'Female',
  ];
  final List<String> _branch = [
    'Thane',
    'Mulund',
    'Vashi',
  ];
  String _currentselectedvalueapp = 'Morning Slot (10 AM to 1 PM)';
  String _currentselectedvaluegen = 'Male';
  String _currentselectedbr = 'Thane';
  var fnamecontroller = TextEditingController();
  var agecontroller = TextEditingController();
  var purposecontroller = TextEditingController();

  var pincontroller = TextEditingController();
  var colorss = Colors.black.withOpacity(0.5);
  bool isDeviceConnected = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
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
              controller: fnamecontroller,
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
              controller: BookforOther.mobilenumcontroller,
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
                  isEmpty: _currentselectedvaluegen == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _currentselectedvaluegen,
                      isDense: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          _currentselectedvaluegen = newValue!;
                          state.didChange(newValue);
                        });
                      },
                      items: _genders.map((String value) {
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
                      if (fnamecontroller.text.isNotEmpty &&
                          agecontroller.text.isNotEmpty &&
                          purposecontroller.text.isNotEmpty &&
                          BookforOther.mobilenumcontroller.text.length == 10) {
                        await FirebaseFirestore.instance
                            .collection("branches")
                            .doc(_currentselectedbr)
                            .collection("patients")
                            .add(
                          {
                            'Age': agecontroller.text,
                            'Date Time': formatDate(DateTime.now(),
                                [yyyy, '-', mm, '-', dd, ' | ', hh, ':', nn]),
                            'Full Name': fnamecontroller.text,
                            'Gender': _currentselectedvaluegen,
                            'Mobile Number':
                                BookforOther.mobilenumcontroller.text,
                            'Purpose': purposecontroller.text,
                            'Slot': _currentselectedvalueapp,
                            'Branch': _currentselectedbr,
                            'SMS': 'Pending',
                          },
                        ).then((value) async {
                          await FirebaseFirestore.instance
                              .collection("patients")
                              .add(
                            {
                              'Age': agecontroller.text,
                              'Date Time': formatDate(DateTime.now(),
                                  [yyyy, '-', mm, '-', dd, ' | ', hh, ':', nn]),
                              'Full Name': fnamecontroller.text,
                              'Gender': _currentselectedvaluegen,
                              'Mobile Number':
                                  BookforOther.mobilenumcontroller.text,
                              'Purpose': purposecontroller.text,
                              'Slot': _currentselectedvalueapp,
                              'Branch': _currentselectedbr,
                              'SMS': 'Pending',
                            },
                          ).then((value) {
                            Navigator.pop(context);
                            showSnackBar(
                                context,
                                "Appointment booked for " +
                                    fnamecontroller.text);
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
