import 'package:facility_management/core/shared_widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(.1),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // moves the shadow down
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder:
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,

              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                color: Colors.white.withOpacity(.2) ,
                // width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'Search for service, offer',
            prefixIcon: IconButton(
              onPressed: (){},
              icon: const Opacity(
                opacity: .8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
