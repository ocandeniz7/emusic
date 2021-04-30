import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class hakkindaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 200,),
          Image.asset("assets/images/halay.png"),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183311064 numaralı Onur Can DENİZ tarafından 28 Nisan 2021 günü yapılmıştır."),
          ),
        ],),
      ),
      );
  }
}
