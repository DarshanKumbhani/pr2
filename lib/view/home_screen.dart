import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../provider/provider_g.dart';

class Staggered_Gallery extends StatefulWidget {
  const Staggered_Gallery({Key? key}) : super(key: key);

  @override
  State<Staggered_Gallery> createState() => _Staggered_GalleryState();
}

class _Staggered_GalleryState extends State<Staggered_Gallery> {
  Gprovider? sgpT;
  Gprovider? sgpF;

  @override
  Widget build(BuildContext context) {
    sgpT = Provider.of<Gprovider>(context);
    sgpF = Provider.of<Gprovider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "Tourism",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MasonryGridView.builder(
          itemCount: sgpF!.photos.length,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("${sgpT!.photos[index].image}"),
                    ),
                    Text(
                      "${sgpT!.photos[index].name}",
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 5,)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}