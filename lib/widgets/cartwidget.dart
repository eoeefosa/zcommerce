import 'package:flutter/material.dart';

class CartWiget extends StatelessWidget {
  final int count;
  const CartWiget({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              // TODO : USING STYLE FOR OUTSIDE TO SET THE DEFAULT VALUES
              // size: 32,
              // color: Colors.white,
            ),
          ),
        ),
        count == 0
            ? Container()
            : Positioned(
                right: 6,
                top: 10,
                child: Container(
                  // padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.yellow[900],
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    maxHeight: 16,
                    minHeight: 16,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                      child: Text(
                        '$count',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          decorationThickness: 0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
