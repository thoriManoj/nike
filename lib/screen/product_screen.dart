import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike/widgets/appbar.dart';
import 'package:nike/widgets/dropdown_button.dart';
import 'package:nike/widgets/product_gridview.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: NikeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CategoriesButton(),
              FlatButton.icon(
                onPressed: () {},
                icon: RotatedBox(
                    quarterTurns: -1,
                    child: SvgPicture.asset('assets/images/slider.svg')),
                //Icon(Icons.view_module_rounded),
                label: Text('Advance Filter'.toUpperCase()),
              ),
              Expanded(child: ProductGridView()),
            ],
          ),
        ),
      ),
    );
  }
}
