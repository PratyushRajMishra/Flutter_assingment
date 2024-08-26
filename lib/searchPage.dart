import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Define a list of image paths
  final List<String> _imagePaths = [
    'assets/images/topSellers1.png',
    'assets/images/topSellers2.png',
    'assets/images/topSellers3.png',
    'assets/images/sellers1.png',
    'assets/images/sellers2.png',
    'assets/images/sellers3.png',
    'assets/images/sellers4.png',
    // Add more images as needed
  ];

  // Method to show the bottom sheet
  void _showOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allow scrolling if needed
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // Use minimum size for the bottom sheet
            children: [
              const SizedBox(height: 5,),
              const Text('Choose an Option', style: TextStyle(fontSize: 20, color: Color.fromRGBO(26, 69, 20, 1),),),
              const SizedBox(height: 15,),
              ListTile(
                leading: Image.asset(
                  'assets/images/topSellers1.png', // Replace with your image path
                  width: 100.0, // Adjust size as needed
                  height: 120.0, // Adjust size as needed
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('5 kg', style: TextStyle(fontSize: 20),),
                            SizedBox(width: 5,),
                            Text('(₹ 32/ Kg)', style: TextStyle(fontSize: 14, color: Colors.grey),)
                          ],
                        ),
                        Row(
                          children: [
                            Text('₹300', style: TextStyle(fontSize: 20, color: Colors.grey.shade600, fontWeight: FontWeight.w700),),
                            const SizedBox(width: 5,),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 2.0),
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
                              ),
                              child: const Text(
                                '₹ 360 Off',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.grey.shade200)
                      ),
                      height: 50,
                      width: 80,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('-', style: TextStyle(color: Color.fromRGBO(26, 69, 20, 0.5,), fontSize: 30, fontWeight: FontWeight.w900),),
                          Text('1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                          Text('+', style: TextStyle(color: Color.fromRGBO(26, 69, 20, 0.5,), fontSize: 30, fontWeight: FontWeight.w700),)
                        ],
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle Option 1
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
              const SizedBox(height: 10,),
              ListTile(
                leading: Image.asset(
                  'assets/images/topSellers1.png', // Replace with your image path
                  width: 100.0, // Adjust size as needed
                  height: 120.0, // Adjust size as needed
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('5 kg', style: TextStyle(fontSize: 20),),
                            SizedBox(width: 5,),
                            Text('(₹ 32/ Kg)', style: TextStyle(fontSize: 14, color: Colors.grey))
                          ],
                        ),
                        Row(
                          children: [
                            Text('₹300', style: TextStyle(fontSize: 20, color: Colors.grey.shade600, fontWeight: FontWeight.w700),),
                            const SizedBox(width: 5,),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 2.0),
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
                              ),
                              child: const Text(
                                '₹ 360 Off',
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: Colors.grey.shade200)
                      ),
                      height: 50,
                      width: 80,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Add +', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),)
                        ],
                      ),
                    )
                  ],
                ),
                onTap: () {
                  // Handle Option 2
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          Text('Also paired by', style: TextStyle(fontSize: 18, color: Colors.grey.shade600,),),
                          const SizedBox(width: 3,),
                          const Text('10+ Customers', style: TextStyle(fontSize: 18, color: Color.fromRGBO(26, 69, 20, 1), fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/topSellers1.png', // Replace with your image path
                        width: 70.0, // Adjust size as needed
                        height: 70.0, // Adjust size as needed
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('10 kg', style: TextStyle(fontSize: 15),),
                                  SizedBox(width: 4,),
                                  Text('(₹ 32/ Kg)', style: TextStyle(fontSize: 12, color: Colors.grey))
                                ],
                              ),
                              Row(
                                children: [
                                  Text('₹540', style: TextStyle(fontSize: 16, color: Colors.grey.shade600, fontWeight: FontWeight.w700),),
                                  const SizedBox(width: 3,),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 2.0),
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
                                    ),
                                    child: const Text(
                                      '₹ 360 Off',
                                      style: TextStyle(color: Colors.white, fontSize: 8),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white, // White background
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.grey.shade200),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1), // Shadow color with opacity
                                  spreadRadius: 2, // Spread radius of the shadow
                                  blurRadius: 5, // Blur radius of the shadow
                                  offset: const Offset(0, 4), // Offset of the shadow (horizontal, vertical)
                                ),
                              ],
                            ),
                            height: 35,
                            width: 80,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Add +', style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )

                        ],
                      ),
                      onTap: () {
                        // Handle Option 2
                        Navigator.pop(context); // Close the bottom sheet
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: TextField(
          autofocus: false,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          decoration: InputDecoration(
            hintText: "Atta",
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Text('Sort',
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.grey.shade300, // Divider color
                  width: 1.0,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: Colors.black,
                          size: 25,
                        ),
                        SizedBox(width: 8),
                        Text('Filter',
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _imagePaths.length, // Use the length of the image list
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0), // Rounded corners
                                child: Image.asset(
                                  _imagePaths[index], // Use the image path based on index
                                  width: 100.0, // Adjust as needed
                                  height: double.infinity, // Match the height of the ListTile
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 8.0,
                                left: 5.0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(25, 88, 249, 1),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: const Text(
                                    '50% Off',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Shakti Bhog',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Louis Vuitton',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 19),
                                  ),
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.star, color: Colors.amber, size: 23.0),
                                      Icon(Icons.star, color: Colors.amber, size: 23.0),
                                      Icon(Icons.star, color: Colors.amber, size: 23.0),
                                      Icon(Icons.star, color: Colors.amber, size: 23.0),
                                      Icon(Icons.star_outline, color: Colors.amber, size: 23.0),
                                      SizedBox(width: 5),
                                      Text(
                                        '200 ratings',
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '5 kg',
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            '(₹ 32/ Kg)',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            '₹ 35',
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          _showOptionsBottomSheet(context);
                                        },
                                        style: OutlinedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 4.0),
                                          side: const BorderSide(color: Colors.green),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          minimumSize: const Size(0, 0),
                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: const Row(
                                          children: [
                                            Text(
                                              '2 Options',
                                              style: TextStyle(fontSize: 12.0),
                                            ),
                                            SizedBox(width: 4),
                                            Icon(Icons.keyboard_arrow_down, size: 16),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 7),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 2.0),
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
                                    ),
                                    child: const Text(
                                      'Get extra 2% off on 1 item(s) (Price Inclusive)',
                                      style: TextStyle(color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                // Handle tap event here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(), // Gap between tiles
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}