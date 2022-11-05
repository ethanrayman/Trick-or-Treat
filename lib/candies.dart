class Candies {
  String imageUrl;
  int candyVal;

  Candies(this.imageUrl, this.candyVal);

  static List<Candies> allCandies = [
    Candies('assets/candiesclip.jpg', 2),
    Candies('assets/chocolate.jpg', 5),
    Candies('assets/strawberry.jpg', 2),
    Candies('assets/candycorn.jpg', 4),
    Candies('assets/redCandy.jpg', 1),
    Candies('assets/multiCandy.jpg', 3),
  ];
}
