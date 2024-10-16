import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maloooook_coffee_shop/app_style.dart';

class CoffeeDetailScreen extends StatefulWidget {
  static const String routeName = 'CoffeeDetailScreen';
  final String imagePath;
  final String title;
  final String category;
  final String price;
  final String rate;
  final String description;
  const CoffeeDetailScreen(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.category,
      required this.price,
      required this.rate,
      required this.description});

  @override
  State<CoffeeDetailScreen> createState() => _CoffeeDetailScreenState();
}

class _CoffeeDetailScreenState extends State<CoffeeDetailScreen> {
  String selectedIcon = 'S';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title:  Text("Details ",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imagePath,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
             Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),
            ),
            const SizedBox(height: 10),
             Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text("${widget.rate} (230)"),
              ],
            ),
            const SizedBox(height: 20),
             Text(
              "Description",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
             Text(
              "Size",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                                    selectedColor: Theme.of(context).colorScheme.primary,

                    label: const Text("S"),
                    selected: selectedIcon == 'S' ? true : false,
                    onSelected: (value) {
                      setState(() {
                        selectedIcon = 'S';
                      });
                    }),
                 ChoiceChip(
                  selectedColor: Theme.of(context).colorScheme.primary,
                                   label: const Text("M"),
                  selected: selectedIcon == 'M' ? true : false,
                  onSelected: (value) {
                    setState(() {
                      selectedIcon = 'M';
                    });
                  },
                ),
                 ChoiceChip(
                                    selectedColor: Theme.of(context).colorScheme.primary,

                    label: const Text("L"),
                    selected: selectedIcon == 'L' ? true : false,
                    onSelected: (value) {
                      setState(() {
                        selectedIcon = 'L';
                      });
                    }),
              ],
            ),
            const SizedBox(height: 20),
            Container( padding: const EdgeInsets.all(18.0),
              height: MediaQuery.of(context).size.height / 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Theme.of(context).colorScheme.secondary,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), 
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: [Text("Price: ${widget.price}",style:GoogleFonts.sora(
                      fontSize: 18,color: AppColors.primaryColor,fontWeight: FontWeight.w600
                    ),),
                const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                    ),
                    child:  Text("Buy Now",style:GoogleFonts.sora(
                      fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600
                    ) ,),
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
