import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    HomeScreen(),
    InfoScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.sort))],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _getIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  void _getIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget textRichWidget(String textData, String textData2, Color colorValue1,
    Color colorValue2, double fontSizeTxt) {
  return RichText(
    text: TextSpan(
      text: textData,
      style: TextStyle(
        color: colorValue1,
        fontSize: fontSizeTxt,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      children: [
        TextSpan(
          text: textData2,
          style: TextStyle(
            color: colorValue2,
          ),
        ),
      ],
    ),
  );
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(onTap: ()=>{},
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          offset: Offset(0, 0),
                          blurRadius: 1,
                          spreadRadius: 0.5)
                    ], borderRadius: BorderRadius.circular(35)),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/profile.png"),
                        radius: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: textRichWidget("HASSAAN'S", " WARDROBES", Colors.grey,
                      Colors.black, 23.0),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0.2,
                      offset: Offset(1, 1),
                      blurRadius: 1)
                ]),
            width: 230,
            height: 40,
            child: Form(
                child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
            )),
          ),
        ),
        Container(
          width: 170,
          height: 170,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(width: 2)),
                child: InkWell(
                  onTap: () {},
                  child: Image(
                    image: AssetImage(
                      "images/shirt.jpg",
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.black.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.all(9.5),
                  child: Positioned(
                    top: 100,
                    child: Text(
                      "COMPENSATED",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  right: -20,
                  top: 70,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.teal[900],
                    size: 40,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        textRichWidget("ABOUT", " FASHIONISTA", Colors.grey, Colors.black, 20),
        SizedBox(height:20),
        Stack(
        children:[
        icon:Icon(Icons.add),
        
        ],
        ),
        ),
      ],
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
  
    );
  }
}
