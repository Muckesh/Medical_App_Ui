import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String img;
  final String category;
  const CategoryCard({
    Key? key,
    required this.img,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(18.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                img,
                height: 40,
                color: Colors.deepPurple,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                category,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
