import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Pandafood extends StatelessWidget {
  const Pandafood({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const PandafoodPage(),
    );
  }
}

class PandafoodPage extends StatefulWidget {
  const PandafoodPage({Key? key});

  @override
  _PandafoodPageState createState() => _PandafoodPageState();
}

class _PandafoodPageState extends State<PandafoodPage> {
  List<Map<String, String>> cart = [];

  void addToCart(String title, String price) {
    setState(() {
      cart.add({'title': title, 'price': price});
    });

    // Show confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Added to Cart'),
          content: const Text('Item added to your cart.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showCart(BuildContext context) {
    double totalPrice = cart.fold(
      0,
      (sum, item) => sum + double.parse(item['price']!.substring(1)),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Your Cart'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: cart.map((item) {
              return ListTile(
                title: Text(item['title']!),
                subtitle: Text(item['price']!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      cart.remove(item);
                    });
                    Navigator.of(context).pop();
                    showCart(context);
                  },
                ),
              );
            }).toList(),
          ),
          actions: [
            Text('Total : ${totalPrice.toStringAsFixed(2)}'),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PANDA FOOD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showCart(context);
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      // Handle search action
                      // You can navigate to search screen or show a search dialog here
                    },
                    icon: const Icon(Icons.search, color: Colors.white),
                    label: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            FoodCard(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.UooOna0brK7vsZgha641wAHaFa?w=274&h=200&c=7&r=0&o=5&dpr=1.4&pid=1.7',
              title: 'ก๋วยเตี๋ยวน้ำตก',
              description: 'เส้นเหนียวนุ่ม น้ำซุปเข้มข้น น้ำตกเท่านั้น!',
              price: '\$5',
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.st4CU3gFeL0poZTx0j9OxQHaEK?w=294&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
              title: 'ก๋วยเตี๋ยวน้ำใส',
              description: 'แค่ชามเดียวก็อิ่มใจ น้ำใสแสนอร่อย',
              price: '\$5',
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.S1N1PFvfGDQpkPgtrCOktAHaE8?w=225&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
              title: 'น้ำเงี้ยว',
              description: 'เติมพลังวันใหม่ด้วยน้ำเงี้ยวสุดฟิน',
              price: '\$5',
              addToCart: addToCart,
            ),
            FoodCard(
              imageUrl:
                  'https://th.bing.com/th/id/OIP.yipnIZmgKN367m_1G3JMHgHaE7?w=233&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7',
              title: 'เย็นตาโฟ',
              description: 'เย็นตาโฟ หอมๆ รสชาติเข้มข้น ไม่ลองไม่ได้แล้ว!',
              price: '\$5',
              addToCart: addToCart,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle tap
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text('Favorites'),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text('Search'),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            selectedColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final Function(String, String) addToCart;

  const FoodCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.addToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addToCart(title, price);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
