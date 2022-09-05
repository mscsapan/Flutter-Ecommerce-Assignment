import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 7.0,
              child: SizedBox(
                height: 60.0,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: const Color(0xFFFEFEFE),
                    hintText: 'Search your product',
                    // hintStyle: hintStyle(),
                    prefixIcon: const Icon(Icons.search,
                        size: 26.0, color: Color(0xFF9B9B9B)),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 52.0,
            width: 44.0,
            margin: const EdgeInsets.only(left: 5.0),
            decoration: BoxDecoration(
                color: Color(0xFFF54748),
                borderRadius: BorderRadius.circular(4.0)),
            child: Icon(Icons.menu_open_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
