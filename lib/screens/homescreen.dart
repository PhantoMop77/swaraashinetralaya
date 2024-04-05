import 'package:flutter/material.dart';
import 'package:swaraashinetralaya/widgets/carousel.dart';
import 'package:swaraashinetralaya/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  DateTime current = DateTime.now();
  final List<String> imgList = [
    'assets/img1.png',
    'assets/img2.png',
    'assets/img3.png'
  ];

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
            'Swaraashi Netralaya',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      drawer: const Navdrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            children: [
              CarouselWithDotsPage(
                imgList: imgList,
              ),
              const Divider(
                height: 40,
                thickness: 2,
              ),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Why Choose Us",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '"Swaraashi Netralaya is one of the best Eye Care Center in Mumbai, bringing to our patients the very best and latest in Cataract and Refractive Surgery (LASIK) .This Eye Center in Mumbai is a place for You, offering world class care with state of art infrastructure and techniques while keeping it affordable and Pocket Friendly."',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    const Divider(
                      height: 40,
                      thickness: 2,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage("assets/background.jpg"),
                            fit: BoxFit.cover),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              "About Dr. Rakesh Shah",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/rakesh.jpeg',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Dr. Rakesh Shah is an established name in the field of vitreoretina, cataract and laser refractive surgery. In the sphere of professional qualifications, there is no second to Dr. Rakesh Shah .Dr. Rakesh Shah has finished his S.S.C and H.S.C with merit from Maharashtra board. He has done his MBBS from seth G.S. Medical College and K.E.M Hospital, Parel-Mumbai followed by DOMS and FCPS from college of Physician and Surgeons, Mumbai.He has done his MS from Sir J. J. Group of Hospital.\n\nDr. Rakesh Shah was visiting eye and Retina Surgeon to various organizations like, Ayodhya Eye Hospital, Devkunj Eye Hospital, Manav Kalyan Kendra, Dombivali, Lokmanya Tilak Medical College and Sion Hospital etc. He was also visiting retina surgeon to various private eye hospital.',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
