import 'package:flutter/material.dart';
import 'package:test_food_order_app/presentation/components/pizza_bottom_sheet.dart';

class ViewRestaurant extends StatefulWidget {
  const ViewRestaurant({super.key});

  @override
  State<ViewRestaurant> createState() => _ViewRestaurantState();
}

class _ViewRestaurantState extends State<ViewRestaurant> {
  int orders = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/pizza.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.black87,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.black87,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Container(
                            height: 100,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/pizza.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 18.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Pizza King',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Pizza, Pasta',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 16,
                                          ),
                                          Text(
                                            '4.5 ',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            '(100+)',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      height: 70,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                Text(
                                  'Delivery fee',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.grey,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Delivery time',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '20 mins',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.grey,
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Delivery by',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Free',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      const Icon(Icons.dehaze),
                      TextButton(
                          onPressed: () {}, child: const Text('Appappetizers')),
                      TextButton(
                          onPressed: () {},
                          child: const Text('cheese manakish')),
                      TextButton(onPressed: () {}, child: const Text('pizza')),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SizedBox(
                      height: 850,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      orders++;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Pizza King',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: const Text(
                                                'Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey,
                                                    fontSize: 12),
                                              ),
                                            ),
                                            const SizedBox(height: 6),
                                            const Text(
                                              'EGP 22.00 ',
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/pizza.png'),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Divider(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Add EGP 22.00 to start your order',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            if (orders != 0) {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => const PizzaBottomSheet(),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: orders == 0
                                ? const Color(0xFF7B8F96)
                                : const Color(0xFF067B96),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              '$orders   View basket',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
