import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:maps_schoolapp/visimisi.dart';

class CarouselDemo extends StatefulWidget {
  CarouselController buttonCarouselController = CarouselController();
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://i.postimg.cc/X7TvCxmh/harijantung.jpg',
    'https://i.postimg.cc/Jnf1kzdX/hariperdamaian.jpg',
    'https://i.postimg.cc/fyNGstr8/hutkudus.jpg',
    'https://i.postimg.cc/1zV2NrxW/haripalangmerah.jpg',
    'https://i.postimg.cc/hvc56FXw/kesakitanpancasila.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
              children:<Widget>[ Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 350.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  reverse: false,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 5000),
                  scrollDirection: Axis.horizontal,
                ),
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
            
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.blue : Colors.amber,
                    ),
                  );
                }),
              ),


              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/paud.jpg"))),
              ),
              RaisedButton(
                  child: Text(
                    "Visi Misi Paud  ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.black,
                  onPressed: () {
                 Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => VisiMisiPaud()));
                  },
                ),
                Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/TK.jpg"))),
              ),
                RaisedButton(
                  child: Text(
                    "Visi Misi KB-TK",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.black,
                  onPressed: () {
                
                  },
                ),
                Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/SD.jpg"))),
              ),
                RaisedButton(
                  child: Text( 
                    "Visi Misi SD       ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.black,
                  onPressed: () {
                
                  },
                ),
                Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/SMP.jpg"))),
              ),
                RaisedButton(
                  child: Text(
                    "Visi Misi SMP    ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.black,
                  onPressed: () {
                
                  },
                ),
                Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/SMA.jpg"))),
              ),
                MaterialButton(
                  child: Text(
                    "Visi Misi SMA    ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.black,
                  onPressed: () {
                
                  },
                ),
                
            ],
          ),
        ),
               ] ),
      
    );
  }
}
