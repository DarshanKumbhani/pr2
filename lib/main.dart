import 'package:flutter/material.dart';
import 'package:pr2/provider/provider_g.dart';
import 'package:pr2/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Gprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Staggered_Gallery()
        },
      ),
    )
  );
}

