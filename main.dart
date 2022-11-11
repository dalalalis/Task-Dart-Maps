void main() {
  Map<String, dynamic> menu = {
    'burger': 6.5,
    'pizza': 5,
    'water': 1.5,
  };
  menu["chocolate cake"] = 3;
  menu["water"] = 0.750;
  print('Menu:');
  print("");
  for (var item in menu.entries) {
    print('${item.key} -> ${item.value}KD');
  }
  order(menu, ['water', 'burger', 'rice']);
}

void order(Map<String, dynamic> menu, List<String> order) {
  double total = 0;
  order.forEach((item) {
    if (menu[item] != null) {
      total += menu[item];
    } else {
      print('this $item does not exist');
    }
  });
  print(total);
}

    
  /*order.forEach((item) => menu[item] != null
      ? total += menu[item]
      : print('the ${menu[item]} is not on the menu'));
  return total;
}*/
