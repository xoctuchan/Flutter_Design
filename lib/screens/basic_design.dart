// ignore_for_file: deprecated_member_use

//import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class BasicDesignScreen extends StatelessWidget {

  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('LEnim eu elit duis aliqua laboris Lorem ex do dolor id magna commodo magna. Id labore velit ullamco duis quis et qui. Exercitation laboris excepteur eu proident. Esse duis incididunt voluptate laborum amet aute. Veniam labore Lorem pariatur dolor amet officia ea ut exercitation incididunt quis veniam exercitation id. Esse deserunt laboris nostrud ex eu culpa duis.')
          )
        ],
      ),
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red,),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  
  const ButtonSection({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //final String whatsapp = "whatsapp://send?phone=+50255746377&text=${Uri.encodeComponent('https://www.m2guate.com/Guatemala/Apartamento/Renta/Zona-15/13183/M2Guate-R8700-Apartamento-en-Renta-Guatemala-Zona-15')}";
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /*TextButton(
            onPressed: (() async{
              //launch(whatsapp);
            }), child: Text('Whatsapp'),
          ),*/
          CustomButton(text: 'Call', icon: Icons.call),
          CustomButton(text: 'Route', icon: Icons.route),
          CustomButton(text: 'Share', icon: Icons.share),
      ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size:30),
        Text(this.text, style: const TextStyle(color: Colors.blue),)
      ],
    );
  }
}

