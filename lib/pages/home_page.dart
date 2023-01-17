import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        title: const Text(
          'News',
          style: TextStyle(
              color: Palette.deepBlue,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          TextField(
            cursorColor: Palette.deepBlue,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Palette.lightGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Palette.deepBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
