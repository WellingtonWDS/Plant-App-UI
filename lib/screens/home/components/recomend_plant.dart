import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'assets/images/image_1.png', 
            title: 'Begônia',
            country: "Brasil",
            price: 90,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
    
          ),
          RecomendPlantCard(
            image: 'assets/images/image_2.png', 
            title: 'Samambaia',
            country: "Brasil",
            price: 110,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
    
          ),
          RecomendPlantCard(
            image: 'assets/images/image_3.png', 
            title: 'Bambu',
            country: "Brasil",
            price: 50,
            press: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
    
          ),
    
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key, required this.image, required this.title, required this.country, required this.price, required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(), 
                          style: Theme.of(context).textTheme.button, 
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          )
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.button?.copyWith(color: kPrimaryColor),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}