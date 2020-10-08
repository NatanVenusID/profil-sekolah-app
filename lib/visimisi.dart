import 'package:flutter/material.dart';
import 'package:maps_schoolapp/page_maps.dart';
import 'package:maps_schoolapp/pagehome.dart';

class VisiMisiPaud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Visi Misi Paud",
            style: TextStyle(color: Colors.amber),
          ),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) =>HomePage()));
          },),
          ),
      body: ListView(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/paud.jpg"))),
              ),
              SizedBox(
                height: 20,
              ),
                SizedBox(height: 20),
              Text(
                "Visi \nSekolah unggulan berdasarkan Pendidikan Kristen melalui pembiasaan dan interaksi belajar kreatif serta peduli lingkungan.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "MISI \n1. Meletakkan dasar kasih Kristus sebagai landasan pendidikan.\n2. Melatih anak melalui pembiasaan hidup yang disiplin dan mandiri.\n3. Mengembangkan rasa ingin tahu anak melalui proses interaksi belajar yang kreatif.\n4. Menumbuhkan rasa cinta terhadap lingkungan.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ]),
    );
  }
}
