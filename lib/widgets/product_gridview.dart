import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:nike/model/nikeShoe.dart';

class ProductGridView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final int _columnCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 3,
      isAlwaysShown: true,
      controller: _scrollController,
      child: AnimationLimiter(
        child: GridView.builder(
          controller: _scrollController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _columnCount,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: shoesList.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredGrid(
              position: index + 2,
              duration: const Duration(milliseconds: 375),
              columnCount: _columnCount,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: Container(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(index);
                          },
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.asset(
                                shoesList[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            shoesList[index].title,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
