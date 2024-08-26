import 'package:assingment_flutter/searchPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopDetailsPage extends StatefulWidget {
  const ShopDetailsPage({super.key});

  @override
  State<ShopDetailsPage> createState() => _ShopDetailsPageState();
}

class _ShopDetailsPageState extends State<ShopDetailsPage> {
  int selectedIndex = 2; // Index of the selected container

  final List<Map<String, String>> popularCategory = [
    {'image': 'assets/images/popularcat1.png', 'text': 'Baby Care'},
    {'image': 'assets/images/popularcat2.png', 'text': 'Fitness Supplements'},
    {'image': 'assets/images/popularcat3.png', 'text': 'Healthy Snacks'},
    {'image': 'assets/images/popularcat3.png', 'text': 'First Aid'},
    {'image': 'assets/images/popularcat3.png', 'text': 'Cold & Cough'},
  ];

  final List<Map<String, String>> ourCategory = [
    {'image': 'assets/images/ourcat1.png'},
    {'image': 'assets/images/ourcat2.png'},
    {'image': 'assets/images/ourcat3.png'},
  ];

  final List<Map<String, String>> items = [
    {'image': 'assets/images/ourcat1.png'},
    {'image': 'assets/images/ourcat2.png'},
    {'image': 'assets/images/ourcat3.png'},
    {'image': 'assets/images/ourcat1.png'},
    {'image': 'assets/images/ourcat2.png'},
    {'image': 'assets/images/ourcat3.png'},
    {'image': 'assets/images/ourcat2.png'},
    {'image': 'assets/images/ourcat3.png'},
  ];

  final List<Map<String, dynamic>> buttons = [
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
      'text': 'Best Sellers',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/allProducts2.png', // Replace with your image asset
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        'FreshMart', // Replace with your text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                          shadows: [
                            Shadow(
                              blurRadius: 12.0,
                              color: Colors.black.withOpacity(0.7),
                              offset: const Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Organic Produce',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.circle, color: Colors.white, size: 6),
                          SizedBox(width: 5),
                          Text(
                            'Fresh Delivery',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.circle, color: Colors.white, size: 6),
                          SizedBox(width: 5),
                          Text(
                            'Best Prices',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF1A4514),
                                  Color(0xFF2E7D32),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 6.0,
                                  offset: const Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              const Text(
                                '20.5K ratings',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration
                                      .none, // Remove default underline
                                ),
                              ),
                              Positioned(
                                bottom:
                                -1, // Adjust the gap between text and underline
                                child: Container(
                                  width:
                                  85, // Adjust this to match the text width
                                  height: 2.0, // Thickness of the underline
                                  color: Colors.white, // Color of the underline
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: Color.fromRGBO(26, 69, 20, 1),
                                  size: 17,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  '30min - 1hr',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 30.0),
                                Text(
                                  'Aashiana',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(width: 30.0),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor:
            Colors.transparent, // Make AppBar background transparent
            elevation: 0.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50, // Length of the first divider
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Popular Categories',
                          style: TextStyle(fontSize: 15)),
                    ),
                    Expanded(
                      child: Divider(), // This will take up the remaining space
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height:
                110, // Slightly increased height for better visual balance
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularCategory.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 100, // Width of the square container
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(
                            26, 69, 20, 0.08), // Background color
                        border: Border.all(
                          color:
                          const Color.fromRGBO(0, 0, 0, 0.1), // Border color
                          width: 0.3, // Border width
                        ),
                        borderRadius:
                        BorderRadius.circular(15), // More rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.25), // Darker shadow color
                            blurRadius: 10,
                            offset:
                            const Offset(0, 5), // Shadow is cast 5px downward
                            spreadRadius: 0.1, // Slightly spread the shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10), // Clip image to fit container
                              child: Image.asset(
                                popularCategory[index]['image']!,
                                width: 100,
                                height: 110,
                                fit: BoxFit
                                    .cover, // Ensure image covers the container
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 7,
                            right: 7,
                            child: Text(
                              popularCategory[index]['text']!,
                              style: const TextStyle(
                                color: Colors.white, // Set text color to white
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black26,
                                    offset: Offset(1.0, 0),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2, // Allow text to wrap to the next line
                              overflow: TextOverflow
                                  .ellipsis, // Add ellipsis if text still overflows
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50, // Length of the first divider
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:
                      Text('Our Categories', style: TextStyle(fontSize: 15)),
                    ),
                    Expanded(
                      child: Divider(), // This will take up the remaining space
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 250, // Adjust the height if needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ourCategory.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(1.0),
                      height: 250, // Set the height for the container
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8.0), // Adjust spacing between items
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.3), width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset:
                            const Offset(0, 4), // Slightly offset shadow for depth
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 6, // 60% of the space for the image
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.vertical(top: Radius.circular(15)),
                              child: Image.asset(
                                ourCategory[index][
                                'image']!, // Accessing image from ourCategory list
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4, // 40% of the space for the text
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(5.0),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(26, 69, 20,
                                    0.05), // Background color for the text section
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(15)),
                              ),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Align text to the left
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Epigamia Greek Yogurt (90g cup)', // Replace with your text
                                    style: TextStyle(
                                      color: Color.fromRGBO(26, 69, 20, 1),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign
                                        .left, // Ensure text aligns to the left
                                  ),
                                  Text(
                                    'High in protein and probiotics, available in various flavors without added sugar.',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 8.0,
                                      height:
                                      1.2, // Adjust line height for readability
                                    ),
                                    textAlign: TextAlign
                                        .left, // Ensure text aligns to the left
                                  ),
                                  Divider(
                                    color: Colors.black38,
                                    thickness: 1.0,
                                  ),
                                  Text(
                                    '20% Off',
                                    style: TextStyle(
                                      color: Color.fromRGBO(20, 26, 69, 1),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign
                                        .left, // Ensure text aligns to the left
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 30, // Set a height for the ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: buttons.length,
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
                                buttons[index]['icon'],
                                size: 16,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : const Color.fromRGBO(26, 69, 20, 1),
                              ),
                            if (index == 0) const SizedBox(width: 4),
                            Text(
                              buttons[index]['text'],
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
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50, // Length of the first divider
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child:
                      Text('Items', style: TextStyle(fontSize: 18)),
                    ),
                    Expanded(
                      child: Divider(), // This will take up the remaining space
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
                child: Row(
                  children: [
                    const Text(
                      'Top Discounts',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(20, 69, 26, 1),
                      ),
                    ),
                    const SizedBox(width: 16.0), // Add space between text and text field
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SearchPage()), // Navigate to SearchPage
                          );
                        },
                        child: AbsorbPointer(
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              autofocus: false,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                              decoration: InputDecoration(
                                hintText: "Search here",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16.0,
                                ),
                                prefixIcon: const Icon(Icons.search, color: Color(0xFF1A4514)),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.mic, color: Color(0xFF1A4514)),
                                  onPressed: () {
                                    // Add functionality for mic icon, if needed
                                  },
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade600, width: 1.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: const EdgeInsets.all(12.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 8.0, // Space between columns
                          mainAxisSpacing: 8.0, // Space between rows
                          childAspectRatio: 200 / 250, // Aspect ratio of each item
                        ),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(15),

                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8, // 60% of the space for the image
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                                        child: Image.asset(
                                          items[index]['image']!, // Accessing image from ourCategory list
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
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
                                          child: const Row(
                                            children: [
                                              Text(
                                                '4.2',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                              SizedBox(width: 4),
                                              Icon(Icons.star,
                                                  color: Colors.white,
                                                  size: 12), // Example icon
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 7, // 40% of the space for the text
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 3,
                                        right: 2,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 0),
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(236, 191, 52, 1),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: const Text(
                                            'Bestseller',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 16.5,
                                        right: 1,
                                        child: Icon(Icons.add_box, color: Color.fromRGBO(26, 69, 20, 1), size: 35,),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(26, 69, 20, 0.05), // Background color for the text section
                                          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
                                        ),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded( // This will allow the text to wrap to the next line if needed
                                                  child: Text(
                                                    'Epigamia Greek Yogurt (90g cup)', // Replace with your text
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(26, 69, 20, 1),
                                                      fontSize: 14.0,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                    maxLines: 2, // Allow a maximum of 2 lines for the text
                                                    overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows beyond 2 lines
                                                  ),
                                                ),
                                                SizedBox(width: 5), // Add some space between the text and the price
                                                Text('₹35', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),),
                                                SizedBox(width: 5,),
                                                Text(
                                                  '₹50',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'High in protein and probiotics, available in various flavors without added sugar.',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 8.0,
                                                height: 1.2, // Adjust line height for readability
                                              ),
                                              textAlign: TextAlign.left, // Ensure text aligns to the left
                                            ),
                                            Divider(
                                              color: Colors.black38,
                                              thickness: 1.0,
                                            ),
                                            Text(
                                              '20% Off',
                                              style: TextStyle(
                                                color: Color.fromRGBO(20, 26, 69, 1),
                                                fontSize: 14.0,
                                              ),
                                              textAlign: TextAlign.left, // Ensure text aligns to the left
                                            ),
                                          ],
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
                    ],
                  ),
                ),
              ),


            ],
          ),
        ));
  }
}