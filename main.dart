void main() {
  Map<String, dynamic> menu = {
    'burger': 6.5,
    'pizza': 5,
    'water': 1.5,
  };

  menu['chocolate cake'] = 3;
  menu['water'] = 0.75;

  print('Menu:');
  for (var item in menu.entries) {
    print('${item.key} -> ${item.value}KD');
  }

  const order = ['pizza', 'water'];

  double total = 0;
  for (var item in order) {
    total += menu[item];
  }
  print('Total: KD${total}');

  const order2 = ['pizza', 'bread'];
  double total2 = 0;
  for (var item in order2) {
    if (menu[item] == null) {
      print('${item} is not on the menu');
    } else {
      total2 += menu[item];
    }
  }
  print('Total: KD${total2}');
}
