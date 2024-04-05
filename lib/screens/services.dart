import 'package:flutter/material.dart';
import 'package:swaraashinetralaya/screens/services/advancedphacoe.dart';
import 'package:swaraashinetralaya/screens/services/advancedretina.dart';
import 'package:swaraashinetralaya/screens/services/artificialeye.dart';
import 'package:swaraashinetralaya/screens/services/clearlens.dart';
import 'package:swaraashinetralaya/screens/services/cornealinf.dart';
import 'package:swaraashinetralaya/screens/services/corneatr.dart';
import 'package:swaraashinetralaya/screens/services/customlaser.dart';
import 'package:swaraashinetralaya/screens/services/diabetic.dart';
import 'package:swaraashinetralaya/screens/services/double.dart';
import 'package:swaraashinetralaya/screens/services/endothlial.dart';
import 'package:swaraashinetralaya/screens/services/examination.dart';
import 'package:swaraashinetralaya/screens/services/forenhancesight.dart';
import 'package:swaraashinetralaya/screens/services/foreyeinjury.dart';
import 'package:swaraashinetralaya/screens/services/glaucomafil.dart';
import 'package:swaraashinetralaya/screens/services/inflammation.dart';
import 'package:swaraashinetralaya/screens/services/intravtreal.dart';
import 'package:swaraashinetralaya/screens/services/keratoconus.dart';
import 'package:swaraashinetralaya/screens/services/lamellar.dart';
import 'package:swaraashinetralaya/screens/services/laserirido.dart';
import 'package:swaraashinetralaya/screens/services/lasik.dart';
import 'package:swaraashinetralaya/screens/services/limbalstem.dart';
import 'package:swaraashinetralaya/screens/services/macular.dart';
import 'package:swaraashinetralaya/screens/services/management.dart';
import 'package:swaraashinetralaya/screens/services/managementcong.dart';
import 'package:swaraashinetralaya/screens/services/managesquint.dart';
import 'package:swaraashinetralaya/screens/services/medicalsurgical.dart';
import 'package:swaraashinetralaya/screens/services/medmanagement.dart';
import 'package:swaraashinetralaya/screens/services/microinc.dart';
import 'package:swaraashinetralaya/screens/services/multifocal.dart';
import 'package:swaraashinetralaya/screens/services/nervepalsy.dart';
import 'package:swaraashinetralaya/screens/services/opticneuritis.dart';
import 'package:swaraashinetralaya/screens/services/paediatriccataract.dart';
import 'package:swaraashinetralaya/screens/services/paediatricglaucoma.dart';
import 'package:swaraashinetralaya/screens/services/paediatricretinal.dart';
import 'package:swaraashinetralaya/screens/services/pappiloedea.dart';
import 'package:swaraashinetralaya/screens/services/phakic.dart';
import 'package:swaraashinetralaya/screens/services/retinadetachment.dart';
import 'package:swaraashinetralaya/screens/services/retinopathypre.dart';
import 'package:swaraashinetralaya/screens/services/suturelessvitreo.dart';

class OurServices extends StatefulWidget {
  const OurServices({super.key});

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  var b1 = ExpansionTileController();
  var b2 = ExpansionTileController();
  var b3 = ExpansionTileController();
  var b4 = ExpansionTileController();
  var b5 = ExpansionTileController();
  var b6 = ExpansionTileController();
  var b7 = ExpansionTileController();
  var b8 = ExpansionTileController();
  var b9 = ExpansionTileController();
  var b10 = ExpansionTileController();
  var b11 = ExpansionTileController();

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
            'Our Services',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/services.jpeg'),
              const SizedBox(
                height: 40,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b1,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b1.expand();
                      }
                    },
                    title: const Text(
                      'Retina / Vitreous / UVEA',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Retina Detachment Surgery'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RetinaDetachment()));
                        },
                      ),
                      ListTile(
                        title: const Text('Advanced Retina Vitreous Surgery'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AdvancedRetinaVitreous()));
                        },
                      ),
                      ListTile(
                        title: const Text('Sutureless Vitreo-Retinal Surgery'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SuturelessVitreoRetinal()));
                        },
                      ),
                      ListTile(
                        title: const Text('Diabetic Retinopathy'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DiabeticRetinopathy()));
                        },
                      ),
                      ListTile(
                        title: const Text('Paediatric Retinal Diseases'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaediatricRetinalDiseases()));
                        },
                      ),
                      ListTile(
                        title: const Text('Macular Degeneration Treatment'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MacularDegeneration()));
                        },
                      ),
                      ListTile(
                        title: const Text('Intravtreal Injections'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const IntravtrealInjections()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Management of Complication of Cataract Surgery'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ManagementComplication()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Medical & Surgical Management of Uveitis'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MedicalSurgical()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b2,
                    onExpansionChanged: (value) {
                      if (value) {
                        b1.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b2.expand();
                      }
                    },
                    title: const Text(
                      'Refractive Surgery',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text(
                            'Laser Vision Correction Surgery (LASIK)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Lasik()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Customised Laser Vision Correction RElex/SMILE'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CustomLaser()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Phakic IOL Implant (for very high numbers)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PhakicIOL()));
                        },
                      ),
                      ListTile(
                        title: const Text('Clear Lens Extractions'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ClearLens()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b3,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b1.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b3.expand();
                      }
                    },
                    title: const Text(
                      'Cornea',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Cornea Transplants (Keratoplasty)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CorneaTransplant()));
                        },
                      ),
                      ListTile(
                        title: const Text('Lamellar Corneal Transplants'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Lamellar()));
                        },
                      ),
                      ListTile(
                        title:
                            const Text('Endothlial Keratoplasty (Sutureless)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Endothlial()));
                        },
                      ),
                      ListTile(
                        title: const Text('Limbal Stem Cell Transplantation'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LimbalStem()));
                        },
                      ),
                      ListTile(
                        title: const Text('Keratoconus Clinic'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Keratoconus()));
                        },
                      ),
                      ListTile(
                        title: const Text('Corneal Infection & Ulcers'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CornealInfection()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b4,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b1.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b4.expand();
                      }
                    },
                    title: const Text(
                      'Glaucoma',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Medical Management'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MedicalManagement()));
                        },
                      ),
                      ListTile(
                        title: const Text('Laser Iridotomy / SLT for Glaucoma'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LaserIridotomy()));
                        },
                      ),
                      ListTile(
                        title: const Text('Glaucoma Filteration Surgery'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GlaucomaFilter()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Management for Congenital & Secondary Glaucoma'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ManagementCong()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b5,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b1.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b5.expand();
                      }
                    },
                    title: const Text(
                      'Cataract',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text(
                            'Micro Incision Cataract Surgery (Sutureless)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MicroInc()));
                        },
                      ),
                      ListTile(
                        title: const Text(
                            'Advanced Phacoemulsification with Foldable IOL Implantion'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AdvancedPhacoe()));
                        },
                      ),
                      ListTile(
                        title: const Text('Multifocal & Toric IOL Implantion'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MulifocalToric()));
                        },
                      ),
                      ListTile(
                        title: const Text('Paediatric Cataract'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaediatricCataract()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b6,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b1.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b6.expand();
                      }
                    },
                    title: const Text(
                      "Children's Eye Care",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Paediatric Cataract & Glaucoma'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaediatricGlaucoma()));
                        },
                      ),
                      ListTile(
                        title: const Text('Retinopathy of Prematurity'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RetinopathyPre()));
                        },
                      ),
                      ListTile(
                        title: const Text('Examination under Anaesthesia'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Examination()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b7,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b1.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b7.expand();
                      }
                    },
                    title: const Text(
                      'Ocular Trauma Services',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('For Eye Injury'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForEyeInjury()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b8,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b1.collapse();
                        b9.collapse();
                        b10.collapse();
                        b11.collapse();
                        b8.expand();
                      }
                    },
                    title: const Text(
                      'Vision Therapy & Exercises *Squint & Ambylopia',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Management Squint & Lazy Eyes'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ManagementSquint()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b9,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b1.collapse();
                        b10.collapse();
                        b11.collapse();
                        b9.expand();
                      }
                    },
                    title: const Text(
                      'Ocular Prosthesis & Low Vision Aids',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Artificial Cosmetic Eyes'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ArtificialEye()));
                        },
                      ),
                      ListTile(
                        title: const Text('For Enhancing Sight'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForEnhanceSight()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b10,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b1.collapse();
                        b11.collapse();
                        b10.expand();
                      }
                    },
                    title: const Text(
                      'Uveitis & Ocular Immunology Services',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Inflammation of the Eyes'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InflammationEye()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ExpansionTile(
                    controller: b11,
                    onExpansionChanged: (value) {
                      if (value) {
                        b2.collapse();
                        b3.collapse();
                        b4.collapse();
                        b5.collapse();
                        b6.collapse();
                        b7.collapse();
                        b8.collapse();
                        b9.collapse();
                        b10.collapse();
                        b1.collapse();
                        b11.expand();
                      }
                    },
                    title: const Text(
                      'Neuro Ophthalmology',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      ListTile(
                        title: const Text('Optic Neuritis'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OpticNeuritis()));
                        },
                      ),
                      ListTile(
                        title: const Text('Pappiloedea'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Pappiloedea()));
                        },
                      ),
                      ListTile(
                        title: const Text('Nerve Palsy'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NervePalsy()));
                        },
                      ),
                      ListTile(
                        title: const Text('Double Vision (Diplopia)'),
                        trailing: const Icon(Icons.navigate_next_outlined),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DoubleVision()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
