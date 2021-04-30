import 'package:flutter/material.dart';
import 'package:my_project/muziklerSayfasi.dart';


void main() {
  runApp(muzikSayfasi());
}

final List<String> sarkiTurleri = [
  "POP",
  "HALAY",
  "METAL",
  "ROCK",
  "TÜRK SANAT MÜZİĞİ",
  "HALK MÜZİGİ"
];

class muzikSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset("assets/images/as.jpeg",scale: 3,),
                  ),
                  Expanded(
                      child: ListView(
                        reverse: true,
                    children: sarkiTurleri
                        .map((String title) => buildMuzikler(title, context))
                        .toList(),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMuzikler(String title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return muziklerSayfasi(title);
      }));
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4)
          ]),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
