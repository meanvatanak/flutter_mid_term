import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    super.key,
    required this.index,
    required this.name,
    required this.kilometers,
    required this.imagePath,
  });

  final int index;
  final String name;
  final String kilometers;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 340,
      height: 280,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  child: Image.network(
                    'https://picsum.photos/300/180?random=$index',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: primaryColor,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '\$4.5 per night',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.yellow,
                ),
                Text(
                  //random number
                  '$kilometers kilometers away',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
