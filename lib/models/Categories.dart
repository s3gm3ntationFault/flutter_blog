class Category {
  final String name;
  final int numOfEntries;

  Category({
    required this.name,
    required this.numOfEntries,
  });
}

List<Category> categories = [
  Category(
    name: "Cyber Security",
    numOfEntries: 6,
  ),
  Category(
    name: "Netowrks",
    numOfEntries: 3,
  ),
  Category(
    name: "Beer",
    numOfEntries: 4,
  ),
  Category(
    name: "Cofee",
    numOfEntries: 2,
  ),
  Category(
    name: "Artificial Intelligence",
    numOfEntries: 1,
  ),
];
