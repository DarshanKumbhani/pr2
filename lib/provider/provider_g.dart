import 'package:flutter/cupertino.dart';

import '../model/model_class.dart';

class Gprovider extends ChangeNotifier
{
  List<gallery> photos = [
    gallery(name: "Burj Khalifa",image: "assets/images/burj.jpg"),
    gallery(name: "Dwarka Temple",image: "assets/images/dwarka.jpg"),
    gallery(name: "Goa",image: "assets/images/goa.jpg"),
    gallery(name: "Kutumb Minar",image: "assets/images/kutumb.jpg"),
    gallery(name: "Mumbai",image: "assets/images/mumbai.jpg"),
    gallery(name: "Saputara",image: "assets/images/saputara.jpg"),
    gallery(name: "Somnath",image: "assets/images/somnath.jpg"),
    gallery(name: "Satute of Unity",image: "assets/images/unity.jpg"),
  ];
}