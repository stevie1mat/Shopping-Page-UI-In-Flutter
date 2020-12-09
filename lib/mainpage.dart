import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  final List<String> images = [
    "images/airpods.png",
    "images/laptop.png",
    "images/mobile.png",
    "images/mouse.png",
  ];
  final List<String> text = [
    "Airpod Max",
    "Airpod Max",
    "Airpod Max",
    "Airpod Max",
  ];
  final List<int> iconcolor = [
    0xFFFF06292,
    0xFFF64B5F6,
    0xFFF81C784,
    0xFFFe57373,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        //currentIndex: currentIndex,
        //onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
        elevation: 30,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.headset_mic,
                color: Colors.grey[800],
              ),
              activeIcon: Icon(
                Icons.headset_mic,
                color: Colors.indigo,
              ),
              title: Text("Folders")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.mobile_screen_share_outlined,
                color: Colors.grey[800],
              ),
              activeIcon: Icon(
                Icons.mobile_friendly_outlined,
                color: Colors.green,
              ),
              title: Text("Menu"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nov, 8',
                        style: GoogleFonts.lato(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Hi, Steven!',
                        style: GoogleFonts.lato(
                            color: Colors.grey[800],
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Image.network(
                        'https://www.pngkey.com/png/full/115-1150420_avatar-png-pic-male-avatar-icon-png.png',
                        height: 40,
                      )),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 0.0),
                  child: Material(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(8),
                    elevation: 0,
                    child: Container(
                        height: 35,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 0.0),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    elevation: 4,
                    child: Container(
                        height: 35,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Expenses',
                                style: GoogleFonts.lato(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 0.0),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    elevation: 4,
                    child: Container(
                        height: 35,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 0.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Funds',
                                style: GoogleFonts.lato(
                                    color: Colors.grey[600],
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) => Material(
                    elevation: 1,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          images[index],
                          height: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text[index],
                                  style: GoogleFonts.lato(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                      letterSpacing: 0.6,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  '\$30',
                                  style: GoogleFonts.lato(
                                      color: Colors.grey[800],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Material(
                                color: Color(iconcolor[index]),
                                borderRadius: BorderRadius.circular(6),
                                elevation: 6,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 24.0,
                  crossAxisSpacing: 14.0,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Featured',
                    style: GoogleFonts.cinzel(
                        color: Colors.grey[900],
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      'See All',
                      style: GoogleFonts.lato(
                          color: Colors.grey[600],
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            Container(
                height: 250,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, top: 20, bottom: 10),
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/headphone.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Headphone',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[600],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    '\$20',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[800],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            Material(
                                color: Colors.yellow[700],
                                borderRadius: BorderRadius.circular(6),
                                elevation: 6,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    ))),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, top: 20, bottom: 10),
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/fmobiles.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'New Mobiles',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[600],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    '\$100',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[800],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            Material(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(6),
                                elevation: 6,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    ))),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28.0, top: 20, bottom: 10),
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/flaptop.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'New Laptop',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[600],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    '\$200',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[800],
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            Material(
                                color: Colors.green[300],
                                borderRadius: BorderRadius.circular(6),
                                elevation: 6,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                    ))),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
