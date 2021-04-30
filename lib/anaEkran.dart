
import 'package:flutter/material.dart';
import 'muzikSayfasi.dart';

class anaEkran extends StatefulWidget {
  final username;
  const anaEkran({Key key, @required this.username}) : super(key: key);

  @override
  _anaEkranState createState() => _anaEkranState();
}
class _anaEkranState extends State<anaEkran> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Text(
            widget.username == null ? "Kullanıcı Belirtilmedi" : widget.username,style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: ListView(
                children: <Widget>[

                  SizedBox(height: 40),
                  Text(
                    'Haftanın Hit Albümleri ve Şarkıcıları-Grupları',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildMuzik(
                        photoUrl: "assets/images/arzu.jpeg",
                        screenWidth: screenWidth,
                          sarkici: "Arzu Şahin"
                      ),
                      buildMuzik(
                        photoUrl: "assets/images/dadaşlar.jpeg",
                        screenWidth: screenWidth,
                          sarkici: "Grup Dadaşlar"
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildMuzik(
                        photoUrl: "assets/images/ezhel.jpeg",
                        screenWidth: screenWidth,
                          sarkici: "Ezhel"
                      ),
                      buildMuzik(
                        photoUrl: "assets/images/tarkan.jpeg",
                        screenWidth: screenWidth,
                          sarkici: "Tarkan"
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildMuzik(
                        photoUrl: "assets/images/musto2.jpeg",
                        screenWidth: screenWidth,
                          sarkici: "Mustafa Özarslan"
                      ),
                      buildMuzik(
                        photoUrl: "assets/images/indir8.jpeg",
                        screenWidth: screenWidth,
                        sarkici: "Grup Çığ"
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 119, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        girisNavigasyon(
                            text: 'Müzikler',
                            icon: Icons.music_note,
                            widget: muzikSayfasi(),
                            context: context),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget girisNavigasyon(
    {@required String text,
    @required IconData icon,
    Widget widget,
    BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ));
    },
    child: Column(
      children: [
        Container(
          width: 100,
          padding: EdgeInsets.all(20),
          child: Icon(icon, color: Colors.red, size: 30),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle, color: Colors.green),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
              color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildMuzik({String photoUrl,String sarkici, @required double screenWidth}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        Center(
         child:  Image.asset(photoUrl),
        ),
        Text("Şarkıcı : $sarkici"),
      ],
    ),
  );
}
