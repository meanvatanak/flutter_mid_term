import 'package:flutter/material.dart';
import 'package:mid_term/utilities/constants.dart';
import 'package:mid_term/wigdet/cliprrect.dart';
import 'package:mid_term/wigdet/trip_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> city = [
      'Phnom Penh',
      'Siem Reap',
      'Kampot',
      'Kep',
      'Sihanoukville',
      'Koh Kong',
      'Kratie',
      'Mondulkiri',
      'Ratanakiri',
      'Battambang',
      'Kampong Cham',
      'Kampong Thom',
      'Kampong Speu',
      'Kampong Chhnang',
      'Kandal',
      'Preah Vihear',
      'Prey Veng',
      'Pursat',
      'Stung Treng',
      'Svay Rieng',
      'Takeo',
      'Tboung Khmum',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'http://camasean.edu.kh/img/employee/Mean%20Vatanak1665116241.jpg',
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vatanak',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Let's get",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_active_outlined,
                color: primaryColor,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //search bar
            Container(
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Explore City',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    20,
                    (index) => CircleImageTitle(
                      title: "Classroom $index",
                      imagePath: 'https://picsum.photos/200/300?random=$index',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Recommended for your next trip',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    20,
                    (index) => TripCard(
                      index: index,
                      name: "${city[index % 22]}",
                      kilometers: "${(index + 1) * 54}",
                      imagePath:
                          'https://picsum.photos/200/300?random=${index * 11}',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Popular Destination',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                ...List.generate(
                  4,
                  (index) => ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        child: Image.network(
                          'https://picsum.photos/240/200?random=$index',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      "${city[index % 22]}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: primaryColor,
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "${(index + 1) * 54} kilometers",
                              style: TextStyle(
                                fontSize: 12,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "Start from \$${(index + 1) * 54} per Night",
                              style: TextStyle(
                                fontSize: 12,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
