import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multistore_app/views/buyers/dart_screens/widgets/banner_widget.dart';
import 'package:multistore_app/views/buyers/dart_screens/widgets/input_search_widget.dart';
import 'package:multistore_app/views/buyers/dart_screens/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //TODO hacerlo para web, hay que instalar paquetes como los que instalamos en un nuevo proyecto

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeTextWidget(),
        InputSearchWidget(),
        SizedBox(
          height: 20,
        ),
        BannerWidget()
      ],
    );
  }
}
