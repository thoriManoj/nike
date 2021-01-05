import 'package:flutter/material.dart';

class ShoeDetails extends StatefulWidget {
  @override
  _ShoeDetailsState createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
  //String _currentValue = 'US';
  String _currentItemSelected = 'US';

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShoesMorePhoto(imageURL: 'assets/images/cardio1.jpg',),
                ShoesMorePhoto(imageURL: 'assets/images/cardio2.jpg',),
                ShoesMorePhoto(imageURL: 'assets/images/cardio3.jpg',),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Size".toUpperCase(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          "Default:".toUpperCase(),
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) {
                            return <String>['US', 'UK', "EU", "AUS"].map((str) {
                              return PopupMenuItem(
                                value: str,
                                child: Text(
                                  str,
                                ),
                              );
                            }).toList();
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                _currentItemSelected.toUpperCase(),
                                style: TextStyle(fontSize: 16),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                          onSelected: (_select) {
                            setState(() {
                              _currentItemSelected = _select;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  child: Wrap(
                    direction: Axis.vertical,
                    // alignment: WrapAlignment.spaceAround,
                    // crossAxisAlignment: WrapCrossAlignment.start,
                    // runAlignment: WrapAlignment.spaceAround,
                    runSpacing: 5.0,
                    spacing: 5.0,
                    children: [
                      ShoeSize(
                        shoeSize: "4",
                      ),
                      ShoeSize(
                        shoeSize: "4.5",
                      ),
                      ShoeSize(
                        shoeSize: "5",
                      ),
                      ShoeSize(
                        shoeSize: "7",
                      ),
                      ShoeSize(
                        shoeSize: "8",
                      ),
                      ShoeSize(
                        shoeSize: "8.5",
                      ),
                      ShoeSize(
                        shoeSize: "10",
                      ),
                      ShoeSize(
                        shoeSize: "12",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'COLORS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShoeColors(
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ShoeColors(
                      color: Colors.blue[600],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ShoeColors(
                      color: Colors.lightGreen,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ShoesMorePhoto extends StatelessWidget {
  final String imageURL;

  const ShoesMorePhoto({
    this.imageURL,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      //color: Colors.blue,
      child: Image.asset(imageURL,),
    );
  }
}

class ShoeColors extends StatelessWidget {
  final Color color;

  const ShoeColors({
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }
}

class ShoeSize extends StatelessWidget {
  final String shoeSize;

  const ShoeSize({
    this.shoeSize,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),
      child: Center(
          child: Text(
        shoeSize,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey),
      )),
    );
  }
}
