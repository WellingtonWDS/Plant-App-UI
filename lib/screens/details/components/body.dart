import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/components/icon_card.dart';
import 'package:flutter_application_1/screens/details/components/image_and_icons.dart';
import 'package:flutter_application_1/screens/details/components/title_and_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title:  "Samambaia", country: "Brasil", price: 110),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Compre Agora",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,

                    ),
                  ),
                )
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Descrição"),
                ),
              ),
            ],
          ),
          //SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}

