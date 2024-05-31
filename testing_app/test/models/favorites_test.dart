import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 36;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('A item has been removed from favorite', () {
      var number = 50;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
