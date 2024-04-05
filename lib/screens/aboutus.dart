import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
            'About Us',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background1.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "About Swaraashi Netralaya",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.6)),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 3,
                  ),
                  Image.asset('assets/aboutswaraashi.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Welcome to Swaraashi Netralaya, a premier ophthalmology clinic dedicated to providing Exceptional Eye care services with state-of-the-art equipment. With branches in Mulund, Thane, and Vashi, we are committed to serving the local communities and ensuring optimal eye health for our patients.\n\nAt Swaraashi Netralaya, we pride ourselves on offering the latest and most advanced technologies in ophthalmology. Our clinic is equipped with cutting-edge equipment, allowing us to diagnose and treat a wide range of eye conditions effectively. Whether you require routine eye exams, advanced diagnostics, or complex surgical procedures, our experienced and highly skilled team of ophthalmologists is here to provide comprehensive care tailored to your specific needs.\n\nWe believe in delivering outstanding service and creating a comfortable and welcoming environment for our patients. From the moment you step into our clinic, our friendly staff will ensure that you receive the highest level of care, compassion, and personalized attention.\n\nExperience the Excellence of modern Eye Care at Swaraashi Netralaya, where your Vision and Well-being are our top priorities.',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
