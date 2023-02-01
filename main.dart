import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _twt = Uri.parse('https://twitter.com/home');
final Uri _wbt = Uri.parse('https://www.webtoons.com/id');
final Uri _call = Uri.parse('tel:+6282828282');
final Uri _sms = Uri.parse('sms:5550101234');

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF00dc64))),
                  onPressed: _launchwbt,
                  child: Text('go to Webtoon')),
            ),
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 0, 139, 220))),
                  onPressed: _launchtwt,
                  child: Text('go to Twiter')),
            ),
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 220, 180, 0))),
                  onPressed: _launchcall,
                  child: Text('calling someone')),
            ),
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 220, 0, 0))),
                  onPressed: _launchsms,
                  child: Text('SMS ama Cha Gyeol')),
            )
          ],
        ),
      ),
    );
  }
}

// void main() => runApp(
//       const MaterialApp(
//         home: Material(
//           child: Center(
//             child: ElevatedButton(
//               onPressed: _launchUrl,
//               child: Text('Twitter'),
//             ),
//           ),
//         ),
//       ),
//     );

Future<void> _launchwbt() async {
  if (!await launchUrl(_wbt)) {
    throw Exception('Could not launch $_wbt');
  }
}

Future<void> _launchtwt() async {
  if (!await launchUrl(_twt)) {
    throw Exception('Could not launch $_twt');
  }
}

Future<void> _launchcall() async {
  if (!await launchUrl(_call)) {
    throw Exception('Could not launch $_call');
  }
}

Future<void> _launchsms() async {
  if (!await launchUrl(_sms)) {
    throw Exception('Could not launch $_sms');
  }
}
