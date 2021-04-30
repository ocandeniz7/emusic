import 'package:flutter/material.dart';
import 'package:my_project/hakkindaSayfasi.dart';
import 'package:my_project/header.dart';


class muziklerSayfasi extends StatelessWidget {
 final String muziklerSayfasiBaslik;
  muziklerSayfasi(this.muziklerSayfasiBaslik);

 final List<Map> muzik = [

    {"isim": "Arzu Şahin", "fotograf": "assets/images/arzu.jpeg","Albüm" : "Cano"},
    {"isim": "Grup Çığ", "fotograf": "assets/images/as.jpeg","Albüm" : "Bilmez Yarim"},
    {"isim": "Mustafa Özarslan", "fotograf": "assets/images/musto2.jpeg","Albüm" : "Oy Ömrüm"},
    {"isim": "Ezhel", "fotograf": "assets/images/ezhel.jpeg","Albüm" : "Derman"},
    {"isim": "Tarkan", "fotograf": "assets/images/tarkan.jpeg","Albüm" : "Dudu" },
    {"isim": "Grup Dadaşlar", "fotograf": "assets/images/dadaşlar.jpeg","Albüm" : "Erzurum Güzelleri"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(muziklerSayfasiBaslik, context),
                  SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 1,
                      children: muzik.map((Map muzik) {
                        return buildContent(muzik["isim"],
                            muzik["fotograf"], muzik["Albüm"], context);
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildContent(String sanatci, String photoUrl, String album, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return hakkindaSayfasi();
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: Offset(0, 16)),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Image.asset(photoUrl,scale: 1.5,),
          SizedBox(
            height: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               "Sanatcı : $sanatci",
                style: TextStyle(
                    color: Color(0xFF3a1034),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Albüm : $album",
                style: TextStyle(
                    color: Color(0xFF3a1034),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),

            ],
          )
        ],
      ),
    ),
  );
}
