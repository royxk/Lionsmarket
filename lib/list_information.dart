class ListInformation {
  //picture
  late String title;
  late String city;
  late String timestamp;
  late double price;
  late int likes;

  ListInformation(
      String title, String city, String timestamp, double price, int likes) {
    this.title = title;
    this.city = city;
    this.timestamp = timestamp;
    this.price = price;
    this.likes = likes;
  }
}

List<ListInformation> useditemListings = [
  ListInformation("Pencil", "State college", "44 seconds ago", 50, 2),
  ListInformation("Ps5", "State college", "20 minutes ago", 345, 21),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
  ListInformation("Coat", "State college", "3 days ago", 75, 200),
];
