import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maloooook_coffee_shop/app_configration_provider.dart';
import 'package:maloooook_coffee_shop/app_style.dart';
import 'package:maloooook_coffee_shop/screens/coffee_detail_screen.dart';
import 'package:maloooook_coffee_shop/widgets/product_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

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
      'title': 'Americano',
      'category': 'with Oat Milk',
      'price': '90 LE',
      'rate': '4.9',
      'description': 'Smooth cappuccino made with oat milk, ideal for a dairy-free alternative with a rich flavor.',
    },
    {
      'imagePath': 'assets/5.png',
      'title': 'Flat white',
      'category': 'with Almond Milk',
      'price': '50 LE',
      'rate': '4.5',
      'description': 'A delightful cappuccino crafted with almond milk, offering a nutty and light flavor profile.',
    },
    {
      'imagePath': 'assets/4.png',
      'title': 'mocha',
      'category': 'with Soy Milk',
      'price': '60 LE',
      'rate': '4.7',
      'description': 'A creamy cappuccino made with soy milk, providing a plant-based option with a smooth taste.',
    },
    {
      'imagePath': 'assets/7.jpg',
      'title': 'Spanish Latte',
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

  HomeScreen({super.key});

  // Stream<String> _getTime() {
  //   return Stream.periodic(const Duration(seconds: 1), (_) {
  //     final now = DateTime.now();
  //     return DateFormat('HH:mm').format(now);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
            var provider = Provider.of<AppConfigProvider>(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Stack(
          children: [
           const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0),
                  
                ),
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: provider.currentThemeMode ==  ThemeMode.dark?Theme.of(context).primaryColor:Colors.white,
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      color: Theme.of(context).textTheme.titleLarge?.color,

                    
                    ),
                     Positioned(
                      top: 20,
                      left: 16,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                              child: Text(
                                "Maloook Shop",
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 25, color: provider.currentThemeMode ==  ThemeMode.dark?Theme.of(context).primaryColor:Colors.white,),),),
                                 IconButton(
                                                 icon:  Icon(
                                                   Icons.dark_mode,
                                                   color: Theme.of(context).colorScheme.secondary,
                                                   size: 40,
                                                 ),
                                                 onPressed: () {
                                                     provider.swapThemeMode();
                                                 }),
                              
                          ],
                        ),
                      ),
                    ),
                //     Positioned(
                //       height: 44,
                //       width: 44,
                //       top: 20,
                //       right: 16,
                //       child:  IconButton(
                // icon: const Icon(
                //   Icons.dark_mode,
                //   color: Colors.white,
                //   size: 40,
                // ),
                // onPressed: () {
                //     provider.swapThemeMode();
                // }),
                //     ),
                    Positioned(
                      bottom: 0,
                      right: 24,
                      left: 24,
                      child: Image.asset('assets/Banner.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        "Cappuccino",
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 3 / 4,
                    ),
                    itemCount: cappuccinoList.length,
                    itemBuilder: (context, index) {
                      final item = cappuccinoList[index];
                      return ProductCard(
                        imagePath: item['imagePath']!,
                        title: item['title']!,
                        category: item['category']!,
                        price: item['price']!,
                        rate: item['rate']!,
                        description: item['description']!,
                        index: index,
                        onAddPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoffeeDetailScreen(
                                imagePath: item['imagePath']!,
                                title: item['title']!,
                                category: item['category']!,
                                price: item['price']!,
                                rate: item['rate']!,
                                description: item['description']!,
                              ),
                            ),
                          );
                        },
                      );
                    },
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
