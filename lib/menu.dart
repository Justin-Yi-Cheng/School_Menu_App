class Menu {
  String weekday;
  String imageUrl;
  List<String> dishes;

  Menu(this.weekday, this.imageUrl, this.dishes);

  static List<Menu> schedule = [
    Menu('Monday', 'assets/Hot Oatmeal.jpg', [
      'Hot Oatmeal (V)',
      'Zuchinni Carrot Breakfast Bread (V)',
      'New York Yogurt Choice (V)',
      'Seasonal Fresh Fruit (VE)'
    ]),
    Menu('Tuesday', 'assets/Mini Blueberry Waffles.jpg',
        ['Mini Blueberry Waffles (V)', 'Fresh Plums (VE)']),
    Menu('Wednesday', 'assets/Mozzarella Sticks.jpg', [
      'Mozzarella Cheese Sticks (V)',
      'Banana Muffin (V)',
      'Fresh Oranges (VE)'
    ]),
    Menu('Thursday', 'assets/Buttermilk Pancakes.jpg',
        ['Buttermilk Pancakes (V)', 'Turkey Sausage', 'Fresh Apples (VE)']),
    Menu('Friday', 'assets/Assorted Fresh Bagels.jpg', [
      'Assorted Fresh Bagels (VE), served with Cream Cheese (V) & Jelly (VE)',
      'Fresh Pears (VE)'
    ])
  ];

  String getDishes() {
    String allDishes = "";

    for (int i = 0; i < dishes.length; i++) {
      allDishes += "${dishes[i]} \n";
    }

    return allDishes;
  }
}
