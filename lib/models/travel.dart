class Travel {
  String name;
  String address;
  String image;
  Travel(this.name, this.address, this.image);

  static List<Travel> generatedTravelList() {
    return [
      Travel("Bear", "Address 1", "images/1.png"),
      Travel("Minion", "Address 2", "images/2.jpg"),
      Travel("Robot", "Address 3", "images/3.jpg"),
      Travel("Penguin", "Address 4", "images/4.jpg"),
      Travel("Tom", "Address 5", "images/5.png"),
      Travel("Bird", "Address 6", "images/6.png")
    ];
  }
}
