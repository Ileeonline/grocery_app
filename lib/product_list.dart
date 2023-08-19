import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Menu"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: shopProvider.items.length,
        itemBuilder: (context, index) {
          final item = shopProvider.items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridTile(
              child: Container(
                decoration: BoxDecoration(
                  color: item.color,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(item.imagePath, height: 80),
                    const SizedBox(height: 10),
                    Text(item.name, style: const TextStyle(fontSize: 18)),
                    const SizedBox(height: 5),
                    Text(item.price, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
