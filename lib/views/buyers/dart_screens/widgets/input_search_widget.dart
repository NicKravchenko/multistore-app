import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputSearchWidget extends StatelessWidget {
  const InputSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search for products',
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/search.svg'),
              )
          ),
        ),
      ),
    );
  }
}
