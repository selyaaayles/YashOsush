import 'package:flutter/material.dart';

import '../utils/style.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: theme,
            autocorrect: false,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: maintxt),
              prefixIcon: Icon(
                Icons.search,
                size: 22,
                color: icon,
              ),
              hintText: 'Search Destination',
              hintStyle: heading3,
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: theme, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: theme, width: 2)),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: theme, borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/filter_icon.png')))
      ],
    );
  }
}
