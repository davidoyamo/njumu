import 'package:flutter/material.dart';
import '../config/paths.dart';
import '../models/item.dart';
import 'package:njumu/models/itemlist.dart';

class ItemTile extends StatelessWidget {
  items item;
  ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 224, 221, 221)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //image
          Expanded(
            child: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image text
                Text(
                  item.text,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 4),
                //price
                Text(
                  '\$' + item.price,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
