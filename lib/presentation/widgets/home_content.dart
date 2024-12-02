import 'package:flutter/material.dart';
import 'package:test_food_order_app/presentation/pages/view_restaurant.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  String? _selectedValue;
  final List<String> _items = [
    '6th Of October, Giza',
    'El Haram St., Giza',
    'El-Zmalek , Cairo',
  ];

  List<String> foodList = [
    'noodles',
    'grilled chicken',
    'pasta',
    'sushi',
    'salads',
  ];

  List<String> quickBrowseContent = ['food offers', 'top rated', 'live track'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1ST SECTION

          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color.fromARGB(25, 6, 42, 150),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Delivering to'),
                      DropdownButton<String>(
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black),
                        value: _selectedValue,
                        hint: const Text(
                          '6th Of October, Giza',
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        underline: const SizedBox(),
                        items: _items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'hey there!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const Text(
                          'log in or create an account for a faster ordering experience.'),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF067B96),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //EXPLORE SECTION

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                const Text(
                  'Explore Dishes',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Column(
                          children: [
                            Image.asset('assets/${foodList[index]}.png'),
                            const SizedBox(height: 6),
                            Text(foodList[index])
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // QUICK BROWSE SECTOIN

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                const Text(
                  'Quick Browse',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: quickBrowseContent.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.all(18),
                                  width: 140,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0x20FC0D0D),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                          'assets/${quickBrowseContent[index]}.png'),
                                      Text(
                                        quickBrowseContent[index],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          //RESTAURANTS YOU KNOW SECTION

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                const Text(
                  'Restaurants you know',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ViewRestaurant(),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 132,
                                width: 156,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/pizza.png'),
                                    ),
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(12))),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Pizza King',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Pizza, Pasta',
                                style: TextStyle(fontSize: 12),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '4.5 ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    '(100+)',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // FREE DELIVARY SECTION

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.maxFinite,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF067C96),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free delivery, on us',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'a gift for your first order',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ViewRestaurant(),
                          ),
                        );
                      },
                      child: const Text(
                        'Order now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // POPULAR TODAY SECTION

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                const Text(
                  'Popular Today',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 165,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: foodList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ViewRestaurant(),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 130,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/pizza.png'),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Pizza King',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    ' 36 mins',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
