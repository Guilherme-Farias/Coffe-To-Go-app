import 'package:coffetogo/components/my_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

const String userName = 'Nadia';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.only(left: 15.0),
          children: [
            SizedBox(height: 50.0),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Welcome, $userName',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 45.0),
              child: Container(
                child: Text(
                  'Let\'s select the best taste for yor next coffe break',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF85837f),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'Taste of the week',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0xFF473D3A),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF85837f),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 410.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _coffeListCard(
                    'assets/starbucks.png',
                    'Caffè Misto',
                    'CofeeShop\'s',
                    'Our dark, rich espresso balanced with steamed milk and a light layer of foam.',
                    '\$4.99',
                    false,
                  ),
                  _coffeListCard(
                    'assets/starbucks.png',
                    'Caffè Latte',
                    'BrownHouse\'s',
                    'Rich, full-bodied espresso with bittersweet sauce and steamed milk',
                    '\$3.99',
                    true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'Explore nearby',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0xFF473D3A),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF85837f),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('assets/coffee.jpg', 'Mr Black Coffee'),
                  _buildImage('assets/coffee2.jpg', ' São Braz Coffe Shop'),
                  _buildImage('assets/coffee3.jpg', 'Delta Express'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar());
  }

  _coffeListCard(String imgPath, String coffeName, String shopName,
      String description, String cost, bool isFavorite) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                  top: 75,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 260,
                    width: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFDAB88A),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60),
                        Text(
                          shopName,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          coffeName,
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          description,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14.0,
                              color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              cost,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xFF3A4742),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                  size: 15.0,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 225,
                child: Center(
                  child: Text(
                    'Order now',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF473D3A),
                    borderRadius: BorderRadius.circular(25)),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildImage(String imgPath, String shopName) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(shopName),
        ],
      ),
    );
  }
}
