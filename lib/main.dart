import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  // This class is the configuration for the state. It holds the
  // values (in this case nothing) provided by the parent and used by the build
  // method of the State. Fields in a Widget subclass are always marked "final".

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var tags = ['Web Dev', 'Android Dev', 'JAVA Dev' ,'Google Dev', 'Frontend Dev', 'PHP'];
  var category = [
    '3D Designer','UI/UX Designer','3Ds MAX','Coder','Guitar','Sketching','Editing'
  ];
   final List<String> images = [
    "https://miro.medium.com/max/3200/1*5FF-WiNYehgcBgtgAka1Og.png",
    "https://cdn.dribbble.com/users/2665708/screenshots/6028880/shot.png",
    "https://wistech.biz/wp-content/uploads/2019/06/app-development-framework.png",
    "https://www.pulsetechsolutions.com.au/wp-content/uploads/2018/09/img-ui-ux-design.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://www.galeanasvandykedodge.net/assets/stock/ColorMatched_01/White/640/cc_2018DOV170002_01_640/cc_2018DOV170002_01_640_PSC.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    // for instance, as done by the _increment method above.
    // The Flutter framework has been optimized to make rerunning
    // build methods fast, so that you can just rebuild anything that
    // needs updating rather than having to individually change
    // instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 7.0),
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage('assets/ritik.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 17.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Rajasthan',
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 2,
                                letterSpacing: 4,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '77k',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                     Text(
                  'Followers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '7299',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                     Text(
                  'Following',
                  style: TextStyle(
                    color: Colors.white,
                     fontSize: 20,
                  ),
                ),
                  ],
                ),
                  Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 2.0, bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                      colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                      begin: Alignment.bottomRight,
                      end: Alignment.centerLeft  
                      ),
                  ),
                   child: Text('follow', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                ),
               
              ],
            ),
          ),
          //tags selections
          Container(
            height: 44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.white12)
                ),
                margin: EdgeInsets.only(right: 13, left: 2.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8, bottom: 5, right: 20),
                  child: Text(tags[index],style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
              );
             },
            ),
          ),
            Expanded(
              child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top:Radius.circular(34))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 25, left: 25, bottom: 10 ),
                      child: Text('Portfolio',style: 
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    ), 
                    Container(
                      height: 40.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (BuildContext context, int index) {
                        return 
                        index==1?
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(category[index],
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                              ),
                              ),
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: Colors.blueAccent,
                              )
                            ],
                          ),
                        ):
                        Container(
                          margin: EdgeInsets.only(right: 13, left: 2.0),
                            child: Text(
                              category[index], 
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.9),fontSize: 20.0
                                ),
                            ),
                        );
                       },
                      ),
                    ),
                    Expanded(
                      child: Stack(alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Align(alignment: Alignment.topCenter,
                        
                        child: Container(
                          height: 200,
                            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.white12)
                ),
                margin: EdgeInsets.only(right: 13, left: 2.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.network(images[index], fit: BoxFit.cover,),
                ),
              );
             },
            ),
                        ),
                        

                        )
                        ,Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 12, left: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(33),
                            ),
                            
                          ),
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.home,color: Color(0xff434BE6),),
                              Icon(Icons.notifications_active, color: Colors.grey.withOpacity(0.6),),
                              Icon(Icons.person, color: Colors.grey.withOpacity(0.6),)
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 23,
                          child: Container(
                            height: 55,
                            width: 55,
                            child: Icon(Icons.add,size:27,color: Colors.white,),
                            decoration: BoxDecoration(
                              borderRadius:
                                BorderRadius.all(Radius.circular(55)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff6615C1),
                                    Color(0xff484FDE),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                            ),
                          ),
                        )
                      ],
                      // children: <Widget>[
                      //   Align(alignment: Alignment.topCenter,
                        
                      //   child: Container(
                      //     padding: EdgeInsets.only(right: 25, left: 25),
                      //     height: 200,
                      //     child: StaggeredGridView.countBuilder(
                      //       crossAxisCount: 4,
                      //       itemCount: 4,
                      //       itemBuilder: (BuildContext context,int index)=>Container(
                      //         child: ClipRRect(
                      //           borderRadius: BorderRadius.all(Radius.circular(12)),
                      //           child: Image.asset('assets/img${index+1}.jpg', fit: BoxFit.cover,),

                      //         ),
                      //       ),
                      //       staggeredTileBuilder: (int index)=>StaggeredTile.count(2,index.isEven?3:1),
                      //       mainAxisSpacing: 9,
                      //       crossAxisSpacing: 8,
                      //     ),
                      //   ),

                      //   )
                      // ],

                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
