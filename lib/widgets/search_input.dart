import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Container(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/icons/search.png',
                      width: 20,
                    ),
                  )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Image.asset('assets/icons/filter.png'),
          )
        ],
      ),
    );
  }
}
