import 'package:assingment_flutter/searchPage.dart';
import 'package:assingment_flutter/shopDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 2; // Index of the selected container
  bool isLiked = false; // Tracks if the icon is liked (red) or not (white)

  final List<Map<String, String>> offers = [
    {'image': 'assets/images/offers1.png', 'text': 'Health'},
    {'image': 'assets/images/offers2.png', 'text': 'Festive'},
    {'image': 'assets/images/offers3.png', 'text': 'Coupon'},
    {'image': 'assets/images/offers4.png', 'text': ''},
    {'image': 'assets/images/offers5.png', 'text': ''},
  ];

  final List<Map<String, String>> sellers = [
    {'image': 'assets/images/sellers1.png', 'text': 'Atta, Rice & Dal'},
    {'image': 'assets/images/sellers2.png', 'text': 'Spices, Salt & Sugar'},
    {'image': 'assets/images/sellers3.png', 'text': 'Oil & Ghee'},
    {'image': 'assets/images/sellers4.png', 'text': 'Dry Fruits'},
  ];

  final List<Map<String, String>> topSellers = [
    {
      'image': 'assets/images/topSellers1.png',
      'text': 'Fortune Premium Kachi Ghani',
      'price': '₹299',
      'rating': '4.2'
    },
    {
      'image': 'assets/images/topSellers2.png',
      'text': 'Red Bull Energy Drink',
      'price': '₹450',
      'rating': '4.1'
    },
    {
      'image': 'assets/images/topSellers3.png',
      'text': 'Emami Healthy Tasty',
      'price': '₹570',
      'rating': '4.0'
    },
  ];

  final List<Map<String, dynamic>> allProducts = [
    {
      'icon': CupertinoIcons
          .slider_horizontal_3, // Add the icon only to the first item
      'text': 'Sort',
    },
    {
      'icon': null, // No icon for this item
      'text': 'Rating 4.0 +',
    },
    {
      'icon': null, // No icon for this item
      'text': 'High Discount',
    },
    {
      'icon': null, // No icon for this item
      'text': 'Cost Low to High',
    },
  ];

  final List<Map<String, String>> allProductsCard = [
    {
      'image': 'assets/images/allProducts2.png',
      'text': 'FreshMart',
      'description':
      'FreshMart offers a wide variety of fresh produce, dairy, and household essentials. Known for their organic options and quick delivery.',
      'time': '30 min - 1 hrs',
      'distance': '0.35 km',
      'rating': '4.2',
      'discount': '20% off on First Order'
    },
    {
      'image': 'assets/images/allProducts1.png',
      'text': 'GreenGrocer',
      'description':
      'GreenGrocer specializes in farm-fresh vegetables, fruits, and other groceries. They support local farmers and offer eco-friendly packaging.',
      'time': '30 min - 1 hrs',
      'distance': '1.00 km',
      'rating': '4.5',
      'discount': '20% off on First Order'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color.fromRGBO(26, 69, 20, 1),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Krishna Vihar Colony',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Text(
                      'Home Address, Block D, Street 10, 221198',
                      style: TextStyle(
                          fontSize: 10, color: Color.fromRGBO(80, 78, 78, 1)),
                    )
                  ],
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 40,
              color: Color.fromRGBO(26, 69, 20, 0.6),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()), // Navigate to SearchPage
                  );
                },
                child: const AbsorbPointer( // Prevents the TextField from receiving user input
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "'Cold and Cough'",
                        hintStyle: TextStyle(
                          color: Color(0xFF1A4514),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(Icons.search, color: Color(0xFF1A4514)),
                        suffixIcon: Icon(Icons.mic, color: Color(0xFF1A4514)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Add image here
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/images/home.png', // Path to your image in the assets folder
                width: double.infinity,
                height: 200, // Set preferred height
                fit: BoxFit.cover, // Adjusts how the image should fit the space
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(
                  width: 50, // Length of the first divider
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('Offers', style: TextStyle(fontSize: 15)),
                ),
                Expanded(
                  child: Divider(), // This will take up the remaining space
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 85, // Set a height for the ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: 90, // Width of the square container
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(
                          26, 69, 20, 0.08), // Background color
                      border: Border.all(
                        color:
                        const Color.fromRGBO(0, 0, 0, 0.09), // Border color
                        width: 0.3, // Border width
                      ),
                      borderRadius:
                      BorderRadius.circular(10), // Slightly rounded corners
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            offers[index]['image']!,
                            width: 90,
                            height: 90,
                            fit: BoxFit
                                .cover, // Ensure image covers the container
                          ),
                        ),
                        Positioned(
                          bottom: 3,
                          left: 7,
                          child: Text(
                            offers[index]['text']!,
                            style: const TextStyle(
                              color: Color.fromRGBO(26, 69, 20, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(
                  width: 50, // Length of the first divider
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('Our Top Bestsellers',
                      style: TextStyle(fontSize: 15)),
                ),
                Expanded(
                  child: Divider(), // This will take up the remaining space
                ),
              ],
            ),
            const SizedBox(height: 15),

            SizedBox(
              height: 100, // Set a height for the ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sellers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: 100, // Width of the circular container
                    height: 100, // Height of the circular container
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(
                          26, 69, 20, 0.08), // Background color
                      border: Border.all(
                        color:
                        const Color.fromRGBO(0, 0, 0, 0.09), // Border color
                        width: 0.3, // Border width
                      ),
                      shape: BoxShape.circle, // Make the container circular
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipOval(
                            child: Image.asset(
                              sellers[index]['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            sellers[index]['text']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 180,
              width: double.infinity,
              color: const Color.fromRGBO(26, 69, 20, 0.12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Top Sellers',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(26, 69, 20, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100, // Set a height for the ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: topSellers.length,
                      itemBuilder: (context, index) {
                        final seller = topSellers[index];
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          width: 250, // Width of the rectangular container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                            color: Colors.white, // Background color
                            border: Border.all(
                              color:
                              const Color.fromRGBO(0, 0, 0, 0.09), // Border color
                              width: 0.3, // Border width
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Stack(
                                  children: [
                                    // Positioned the badge fully on the screen
                                    Positioned(
                                      top: 5.0,
                                      left:
                                      5.0, // Adjust the left position to bring the badge on screen
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6.0, vertical: 0.0),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(26, 69, 20, 1),
                                          borderRadius:
                                          BorderRadius.circular(3),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              topSellers[index][
                                              'rating']!, // Display the rating from the data
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            seller['text'] ??
                                                'No Title', // Use null-aware operator
                                            style: const TextStyle(
                                              color:
                                              Color.fromRGBO(26, 69, 20, 1),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                            overflow: TextOverflow
                                                .ellipsis, // Handle overflow with ellipsis
                                            maxLines:
                                            2, // Limit text to 2 lines
                                          ),
                                          Text(
                                            seller['price'] ??
                                                'No Price', // Use null-aware operator
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 0,
                                      left: 8.0,
                                      child: Text(
                                        'Exciting offer',
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          12), // Rounded corners for image
                                      child: Image.asset(
                                        seller['image'] ??
                                            'assets/images/default.png', // Provide a default image
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(
                  width: 50, // Length of the first divider
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('All Products', style: TextStyle(fontSize: 15)),
                ),
                Expanded(
                  child: Divider(), // This will take up the remaining space
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 30, // Set a height for the ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allProducts.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index; // Update the selected index
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? const Color.fromRGBO(26, 69, 20, 1)
                            : const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(
                              0, 0, 0, 0.1), // Border color
                          width: 0.5, // Border width
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color:
                            Colors.black.withOpacity(0.15), // Shadow color
                            offset:
                            const Offset(0, 4), // Offset only on the y-axis
                            blurRadius: 10, // Shadow blur radius
                            spreadRadius: 0, // No spread
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          if (index == 0)
                            Icon(
                              allProducts[index]['icon'],
                              size: 16,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : const Color.fromRGBO(26, 69, 20, 1),
                            ),
                          if (index == 0) const SizedBox(width: 4),
                          Text(
                            allProducts[index]['text'],
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : const Color.fromRGBO(26, 69, 20, 1),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopDetailsPage()), // Navigate to SearchPage
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: allProductsCard.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10.0), // Adds gap between the cards
                          child: Card(
                            color: const Color.fromRGBO(26, 69, 20, 0.01),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 2, // Adds shadow to the card
                            shadowColor: Colors.grey.withOpacity(
                                0.5), // Color and opacity of the shadow
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                          top: Radius.circular(12)),
                                      child: Image.asset(
                                        allProductsCard[index]['image']!,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 120,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isLiked =
                                              !isLiked; // Toggle the liked state
                                            });
                                          },
                                          child: isLiked
                                              ? const Icon(
                                            CupertinoIcons.heart_fill,
                                            color: Colors.red,
                                            size: 25,
                                          )
                                              : const Icon(
                                            CupertinoIcons.heart,
                                            color: Colors.white,
                                          )),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 4),
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(26, 69, 20, 1),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8.0)),
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(Icons.fire_truck,
                                                color: Colors.white,
                                                size: 16), // Example icon
                                            const SizedBox(width: 4),
                                            Text(
                                              allProductsCard[index]['distance']!,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            allProductsCard[index]['text']!,
                                            style: const TextStyle(
                                              color:
                                              Color.fromRGBO(26, 69, 20, 1),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.watch_later,
                                                  color: Color.fromRGBO(
                                                      26, 69, 20, 1),
                                                  size: 16),
                                              const SizedBox(width: 3.0),
                                              Text(
                                                allProductsCard[index]['time']!,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey.shade700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 3.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              color:
                                              const Color.fromRGBO(26, 69, 20, 1),
                                            ),
                                            child: Text(
                                              '${allProductsCard[index]['rating']} ★',
                                              style: TextStyle(
                                                color:
                                                Colors.white.withOpacity(0.8),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '${allProductsCard[index]['description']}',
                                        style: const TextStyle(
                                          color: Color.fromRGBO(26, 69, 20, 1),
                                          fontSize: 11,
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.blueGrey,
                                      ),
                                      Text(
                                        '${allProductsCard[index]['discount']}',
                                        style: const TextStyle(
                                          color: Color.fromRGBO(26, 69, 20, 1),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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