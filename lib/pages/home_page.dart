import 'package:coffe_ui/components/coffee_tile.dart';
import 'package:coffe_ui/components/coffee_type.dart';
import 'package:coffe_ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeTypes = [
    ['Cappuccino', true],
    ['Espresso', false],
    ['Late', false],
    ['Flat Wind', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  hintText: "Find your coffee..",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // horizontal listview of coffee types
            Container(
              height: 45,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeTypes.length,
                  itemBuilder: (context, index) => CoffeeType(
                        type: coffeeTypes[index][0],
                        isSelected: coffeeTypes[index][1],
                        onTap: () {
                          setState(() {
                            // deselect rest of the types
                            for (int i=0; i < coffeeTypes.length; i++) {
                              coffeeTypes[i][1] = false;
                            }

                            coffeeTypes[index][1] = true;
                          });
                        },
                      )),
            ),

            // horizontal listview of coffee tiles
            Container(
              height: 280,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => CoffeeTile(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailPage()),
                  );
                },),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // special for you
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Special for you",
                style: TextStyle(fontSize: 22),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: AssetImage('images/c2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 70,
                          width: 165,
                          child: Text(
                            "5 Coffee Beans You Must Try!",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 90,
                          width: 165,
                          child: Text(
                            "5 Coffee Beans You Must TryCoffee Beans You Must Try!Coffee Beans You Must Try!Coffee Beans You Must Try! Coffee Beans You Must Try!Coffee Beans You Must Try! Coffee Beans You Must Try!",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
