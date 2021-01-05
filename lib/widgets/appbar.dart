import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NikeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        visualDensity: VisualDensity.comfortable,
        icon: SvgPicture.asset(
          'assets/images/menu.svg',
          color: Colors.black54,
        ),
        //Icon(Icons.menu_rounded),
        onPressed: () {},
        color: Colors.black54,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search_rounded,
            size: 28,
          ),
          //SvgPicture.asset('assets/images/search.svg',color: Colors.black54,),
          onPressed: () {},
          color: Colors.black54,
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/images/shopping-cart.svg',
            color: Colors.black54,
          ),
          onPressed: () {},
          //color: Colors.black54,
        )
      ],
    );
  }
}
