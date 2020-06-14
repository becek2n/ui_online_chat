import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Online Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _current = 0;
  List _objUserPost = [
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg", "assets/mountain1.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
    {"userImage" : "assets/person3.jpg", "imagePost" : ["assets/mountain.jpg"], "status" : "Beauty view in the morning"},
  ];


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _onlinPost(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _onlinPost(){
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text("User online", style: TextStyle(fontSize: 12),),
          ),

          Container(
            height: 80,
            child: ListView.builder(
              itemCount: 15,
              padding: EdgeInsets.only(top: 10, left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Container(
                          width: 35.0,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("assets/person3.jpg")
                            )
                          ),
                        )
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 28, left: 28),
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white),
                            color: Colors.green
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
            )
          ),

          //posting 
          Expanded(
            child: ListView.builder(
              itemCount: _objUserPost.length,
              itemBuilder: (context, index){
                //mendapatkan jumlah image yang di posting setiap user
                List listImageSlider = _objUserPost[index]["imagePost"];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Container(
                                  width: 20.0,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: new AssetImage("assets/person3.jpg")
                                    )
                                  ),
                                )
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white),
                                    color: Colors.green
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text("djanuar_aransyah", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          
                        ],
                      ),
                    ),
                    //image post
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 255,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, data){
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                        items: listImage(_objUserPost[index]["imagePost"]),
                      ),
                    ),

                    //icon 
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset("assets/stars.png", fit: BoxFit.fill, height: 20,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset("assets/comment.png", fit: BoxFit.fill, height: 18,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset("assets/share.png", fit: BoxFit.fill, height: 25,),
                          ),

                          //indicator image
                          //tambahkan statment jika gambar hanya ada 1 maka indikator image tidak perlu di tampilkan
                          listImageSlider.length == 1 ? Container() : 
                          Padding(
                            padding: EdgeInsets.only(left:70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: map<Widget>(listImage(_objUserPost[index]["imagePost"]), (index, url){
                                return Container(
                                  width: 6,
                                  height: 6,
                                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle, 
                                    color: _current == index ? Colors.blue : Colors.grey
                                  ),
                                );
                              }),
                            ),
                          )
                        ],
                      ),
                    ),


                    //menampilkan status 
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        children: [
                          Text("djanuar_aransyah", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Beauty view in the morning", style: TextStyle(fontSize: 10),),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }
            ),
          )
        ],
      )
    );
  }
  
  //fungsi untuk handle indicator image
  List<T> map<T>(List list, Function handler){
    List<T> result = [];
    for(var i=0; i<list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }

  //fungsi untuk return image list carousel
  List<Widget> listImage(List list){
    var obj = list.map((url){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(url, fit: BoxFit.fill, height: 255,),
            )
          ],
        ),
      );
    }).toList();
    return obj;
  }
}
