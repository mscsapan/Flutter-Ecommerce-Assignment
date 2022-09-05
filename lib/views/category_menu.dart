import 'package:flutter/material.dart';

import '../data/category_data.dart';

class CatMenu extends StatelessWidget {
  const CatMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.22,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      // color: Colors.red,
      child: Wrap(
        runSpacing: 8.0,
        spacing: 6.0,
        alignment: WrapAlignment.spaceBetween,
        children: List.generate(
          category.length,
          (index) => SizedBox(
            height: 96.0,
            width: 80.0,
            child: Column(
              children: [
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE8EEF2),
                  ),
                  child: Image.asset(category[index].image),
                ),
                const SizedBox(height: 4.0),
                Text(category[index].name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
