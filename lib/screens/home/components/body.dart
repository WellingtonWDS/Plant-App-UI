// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/components/recomend_plant.dart';
import 'package:flutter_application_1/screens/home/components/title_with_more_btn.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // Vai definir a altura e largura total da tela

    Size size = MediaQuery.of(context).size;

    //Permite scroll em dispositivos menores
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn( title: 'Recomendado', press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn( title: 'Patrocinadas', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)

          
        ],
      ),
    );
  }
  
}



