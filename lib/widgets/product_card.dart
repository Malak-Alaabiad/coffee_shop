import 'package:flutter/material.dart';
import 'package:maloooook_coffee_shop/app_style.dart';
import 'package:maloooook_coffee_shop/screens/coffee_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final List<Map<String, String>> cappuccinoList = [
    {
      'imagePath': 'assets/2.png',
      'title': 'Cappuccino',
      'category': 'with Chocolate',
      'price': '80 LE',
      'rate': '4.8',
      'description': 'A rich and creamy cappuccino topped with a hint of chocolate, perfect for a sweet treat.',
    },
    {
      'imagePath': 'assets/3.png',
      'title': 'Cappuccino',
      'category': 'with Oat Milk',
      'price': '90 LE',
      'rate': '4.9',
      'description': 'Smooth cappuccino made with oat milk, ideal for a dairy-free alternative with a rich flavor.',
    },
    {
      'imagePath': 'assets/5.png',
      'title': 'Cappuccino',
      'category': 'with Almond Milk',
      'price': '50 LE',
      'rate': '4.5',
      'description': 'A delightful cappuccino crafted with almond milk, offering a nutty and light flavor profile.',
    },
    {
      'imagePath': 'assets/4.png',
      'title': 'Cappuccino',
      'category': 'with Soy Milk',
      'price': '60 LE',
      'rate': '4.7',
      'description': 'A creamy cappuccino made with soy milk, providing a plant-based option with a smooth taste.',
    },
    {
      'imagePath': 'assets/7.jpeg',
      'title': 'Cappuccino',
      'category': 'with Coconut Milk',
      'price': '75 LE',
      'rate': '4.6',
      'description': 'A refreshing cappuccino with coconut milk, adding a tropical twist to your coffee experience.',
    },
    {
      'imagePath': 'assets/8.jpeg',
      'title': 'Cappuccino',
      'category': 'with Hazelnut Syrup',
      'price': '85 LE',
      'rate': '4.9',
      'description': 'A nutty cappuccino flavored with hazelnut syrup, perfect for a sweet and aromatic experience.',
    },
    {
      'imagePath': 'assets/9.jpeg',
      'title': 'Cappuccino',
      'category': 'with Vanilla',
      'price': '70 LE',
      'rate': '4.8',
      'description': 'A smooth cappuccino infused with vanilla, creating a sweet and delicate flavor profile.',
    },
    {
      'imagePath': 'assets/10.jpeg',
      'title': 'Cappuccino',
      'category': 'with Caramel',
      'price': '90 LE',
      'rate': '5.0',
      'description': 'A rich and creamy cappuccino topped with caramel syrup, adding a sweet touch to the bold coffee flavor.',
    }
  ];

  final String imagePath;
  final String title;
  final String category;
  final String price;
  final String rate;
  final String description;
  final int index;
  final VoidCallback onAddPressed;

  ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.category,
    required this.price,
    required this.rate,
    required this.description,
    required this.index,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoffeeDetailScreen(
              imagePath: cappuccinoList[index]['imagePath']!,
              title: cappuccinoList[index]['title']!,
              category: cappuccinoList[index]['category']!,
              price: cappuccinoList[index]['price']!,
              rate: cappuccinoList[index]['rate']!,
              description: cappuccinoList[index]['description']!,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                        height: 132,
                        width: 141,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          Text(
                            rate,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).textTheme.titleLarge?.color,

                    ),
                  ),
                  Text(
                    category,
                    style:  TextStyle(
                      color: Theme.of(context).textTheme.titleSmall?.color,
                      fontSize: 12,

                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline, color: AppColors.primaryColor),
                        onPressed: onAddPressed,
                      ),
                    ],
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
