import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  static String routeName = 'favorite_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) => FavoriteItemTile(value.items[index]),
        ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  const FavoriteItemTile(this.itemNo, {super.key});

  final int itemNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemNo'),
          icon: const Icon(Icons.close),
          onPressed: () {
            Provider.of<Favorites>(context, listen: false).remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from Favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
