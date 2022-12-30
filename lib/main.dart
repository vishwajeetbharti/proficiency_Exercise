import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Proficiency Exercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<String> tittle = [
//     "tittle",
//     "Flag",
//     "Transportation",
//     "Hockey Night in Canada",
//     "Eh",
//     "Housing",
//     "null",
//     "Space Program",
//     "Meese",
//     "Geography",
//     "Language"
//   ];
//   int i = 6;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Flutter Proficiency Exercise",
//             style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
//           ),
//         ),
//         body: ListView.builder(
//           itemCount: tittle.length,
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context, i) {
//             return Column(
//               children: const [
//                 Data(
//                     link:
//                         'http://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/American_Beaver.jpg/220px-American_Beaver.jpg',
//                     description:
//                         "Description:-\nBeavers are second only to\n humans in their ability to\n manipulate and change their environment.\n They can measure up to 1.3 metres long.\n A group of beavers is called a colony.",
//                     tittle: "tittle"),
//                 Data(
//                     link:
//                         "http://images.findicons.com/files/icons/662/world_flag/128/flag_of_canada.png",
//                     description: " ",
//                     tittle: "Flag"),
//                 Data(
//                     link:
//                         "http://1.bp.blogspot.com/_VZVOmYVm68Q/SMkzZzkGXKI/AAAAAAAAADQ/U89miaCkcyo/s400/the_golden_compass_still.jpg",
//                     description:
//                         "It is a well known fact that polar bears are\n the main mode of transportation in Canada.\n They consume far less gas and have the added\n benefit of being difficult to steal.",
//                     tittle: "Transportation"),
//                 Data(
//                     link:
//                         "http://fyimusic.ca/wp-content/uploads/2008/06/hockey-night-in-canada.thumbnail.jpg",
//                     description:
//                         "These Saturday night CBC broadcasts\n originally aired on radio in 1931.\n In 1952 they debuted on\n television and continue\n to unite (and divide)\n the nation each week.",
//                     tittle: "Hockey Night in Canada"),
//                 Data(
//                     link: "null",
//                     description:
//                         "A chiefly Canadian interrogative utterance,\n usually expressing surprise or doubt or\n seeking confirmation.",
//                     tittle: "Eh"),
//                 Data(
//                     link:
//                         "http://icons.iconarchive.com/icons/iconshock/alaska/256/Igloo-icon.png",
//                     description: "Warmer than you might think.",
//                     tittle: "Housing"),
//                 Data(
//                     link:
//                         "http://static.guim.co.uk/sys-images/Music/Pix/site_furniture/2007/04/19/avril_lavigne.jpg",
//                     description: " Sadly it's true.",
//                     tittle: "Public Shame"),
//                 Data(link: "null", description: 'null', tittle: 'null'),
//                 Data(
//                     link:
//                         "http://files.turbosquid.com/Preview/Content_2009_07_14__10_25_15/trebucheta.jpgdf3f3bf4-935d-40ff-84b2-6ce718a327a9Larger.jpg",
//                     description:
//                         'Canada hopes to soon launch a man \nto the moon.',
//                     tittle: 'Space Program'),
//                 Data(
//                     link:
//                         "http://caroldeckerwildlifeartstudio.net/wp-content/uploads/2011/04/IMG_2418%20majestic%20moose%201%20copy%20(Small)-96x96.jpg",
//                     description:
//                         '''A moose is a common sight in Canada.\n Tall and majestic, they represent many\n of the values which Canadians imagine\n that they possess. They grow up to 2.7\n metres long and can weigh over 700 kg.\n They swim at 10 km/h. Moose antlers\n weigh roughly 20 kg. The plural of moose \nis actually 'meese', despite what most\n dictionaries, encyclopedias, and \nexperts will tell you.''',
//                     tittle: 'Meese'),
//                 Data(
//                     link:
//                         "http://3.bp.blogspot.com/__mokxbTmuJM/RnWuJ6cE9cI/AAAAAAAAATw/6z3m3w9JDiU/s400/019843_31.jpg",
//                     description: 'null',
//                     tittle: 'Geography'),
//                 Data(
//                     link:
//                         "They are the law. They are also Canada's\n foreign espionage service. Subtle.",
//                     description: 'Nous parlons tous les langues importants.',
//                     tittle: 'Language'),
//               ],
//             );
//           },
//         ));
//   }
// }
//
// class Data extends StatelessWidget {
//   const Data({
//     Key? key,
//     required this.link,
//     required this.description,
//     required this.tittle,
//   }) : super(key: key);
//   final String link;
//   final String description;
//   final String tittle;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               tittle,
//               style: const TextStyle(
//                   fontSize: 25,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.black54),
//             ),
//           ],
//         ),
//         Container(
//           height: 300,
//           decoration: BoxDecoration(
//             color: const Color(0xff7c94b6),
//             image: DecorationImage(
//               image: NetworkImage(link),
//               fit: BoxFit.cover,
//             ),
//             border: Border.all(
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               description,
//               style: const TextStyle(
//                   fontSize: 25,
//                   fontStyle: FontStyle.italic,
//                   color: Colors.black54),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
