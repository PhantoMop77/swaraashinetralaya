import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  void _urllauncherthane() {
    const urlinsta =
        "https://www.google.com/maps/place/Swaraashi+Netralaya+:+Cataract+%26+Glaucoma+%7C+Retina+%26+Lasik+%26+Laser+%7C+Paediatric+Eye+Checkup+%7C+CGHS+%26+Cashless+Eye+in+Thane/@19.1882,72.971216,14z/data=!4m6!3m5!1s0x3be7b920480e4d35:0xe1757739eb0a19e7!8m2!3d19.1881995!4d72.9712157!16s%2Fg%2F11gb3nym_h?hl=en-IN&entry=ttu";
    launchUrl(Uri.parse(urlinsta));
  }

  void _urllaunchermulund() {
    const urlinsta =
        "https://www.google.com/maps/place/Swaraashi+Netralaya+:+Cataract+%26+Glaucoma+%7C+Retina+%26+Lasik+%26+Laser+%7C+Paediatric+Eye+Checkup+%7C+CGHS+%26+Cashless+Eye+in+Mulund/@19.173755,72.955832,14z/data=!4m6!3m5!1s0x3be7b8fa908bf089:0x6f5da0a125210a67!8m2!3d19.1737549!4d72.9558321!16s%2Fg%2F11fzf8x2z0?hl=en-IN&entry=ttu";

    launchUrl(Uri.parse(urlinsta));
  }

  void _urllaunchervashi() {
    const urlinsta =
        "https://www.google.com/maps?ll=19.091394,73.005694&z=14&t=m&hl=en-IN&gl=US&mapclient=embed&cid=14345539484127871165";
    launchUrl(Uri.parse(urlinsta));
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
            'Contact Us',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  const Text(
                    "Mulund",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "204/605, 2ndFloor, Neptuneuptown Opp.Mulund Post Office, Netaji Subhash Road, Near McDonald,Mulund(W), Mumbai\nMobile : +91 9892657759\nPhone : 022 25691919 / 2919\nTiming : Mon - Sat- 11.00am to 8.00pm\n(On Sunday By Doctor's Appointment)",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const Color.fromARGB(255, 182, 182, 182);
                              }
                              return const Color.fromARGB(255, 122, 228, 126);
                            },
                          ),
                        ),
                        onPressed: () {
                          _urllaunchermulund();
                        },
                        child: const Text(
                          "Get Directions",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
              ),
              Column(
                children: [
                  const Text(
                    "Thane",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "1, Priyadarshani Society, Near A K Joshi Bedekar English school, Mahatma Phule Road, Naupada, Thane (W) - 400 602\nMobile : +91 9769222020\nPhone : 022 25449050 / 51\nTiming : Mon - Sat - 11.00am to 8.00pm\n(On Sunday By Doctor's Appointment)",
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const Color.fromARGB(255, 182, 182, 182);
                              }
                              return const Color.fromARGB(255, 122, 228, 126);
                            },
                          ),
                        ),
                        onPressed: () {
                          _urllauncherthane();
                        },
                        child: const Text(
                          "Get Directions",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
              ),
              Column(
                children: [
                  const Text(
                    "Vashi",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Plot No-16, Near Blue Diamond Hotel, Opposite Saraswa Bank Sector Number 28, Vashi, Navi-Mumbai - 400703\nMobile : +91 9769192021\nPhone : 022 27667070\nTiming : Mon - Sat- 10.00 am to 7.00 pm\n(On Sunday By Doctor's Appointment)",
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return const Color.fromARGB(
                                      255, 182, 182, 182);
                                }
                                return const Color.fromARGB(255, 122, 228, 126);
                              },
                            ),
                          ),
                          onPressed: () {
                            _urllaunchervashi();
                          },
                          child: const Text(
                            "Get Directions",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
              ),
              const SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    "Follow us on:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Wrap(
                runSpacing: 15,
                spacing: 25,
                direction: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(Uri.parse(
                          'https://www.instagram.com/swaraashinetralaya/'));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.transparent,
                      child: Image.asset(
                        'assets/instagram.png',
                        width: 26,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(Uri.parse(
                          'https://www.facebook.com/SwaraashiNetralaya/'));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.transparent,
                      child: Image.asset(
                        'assets/facebook.png',
                        width: 24,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                          Uri.parse('https://twitter.com/SwaraashiNetra'));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.transparent,
                      child: Image.asset(
                        'assets/twitter.png',
                        width: 24,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(Uri.parse(
                          'https://www.youtube.com/user/drrakeshshah9'));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.transparent,
                      child: Image.asset(
                        'assets/youtube.png',
                        width: 24,
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () async {
                  //     await launchUrl(Uri.parse(
                  //         'https://www.linkedin.com/in/swaraashi-netralaya-2b85a7155/'));
                  //   },
                  //   child: Card(
                  //     color: Colors.white,
                  //     shadowColor: Colors.transparent,
                  //     child: Image.asset(
                  //       'assets/linkedin.png',
                  //       width: 24,
                  //     ),
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                          Uri.parse('http://swaraashinetralaya.in/index.html'));
                    },
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.transparent,
                      child: Image.asset(
                        'assets/web.png',
                        width: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
