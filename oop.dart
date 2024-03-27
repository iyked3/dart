// Interface for printable objects
abstract class Printable {
  void printDetails();
}

// Base class for items
class Item {
  String name;
  double price;

  Item(this.name, this.price);

  // Inherited method to display basic item details
  void displayDetails() {
    print("Name: $name, Price: \$$price");
  }
}

// Class inheriting from Item and implementing Printable
class Book extends Item implements Printable {
  String author;

  Book(String name, double price, this.author) : super(name, price);

  // Override displayDetails to include author information
  @override
  void displayDetails() {
    super.displayDetails();
    print("Author: $author");
  }

  // Implement printDetails to display book details in a specific format
  @override
  void printDetails() {
    print("=========");
    print("Book Title: $name");
    print("Author: $author");
    print("Price: \$$price");
    print("=========");
  }

  // Method to read book data from a file (simulated)
  static List<Book> readBooksFromFile(String filePath) {
    List<Book> books = [];
    // Simulate reading data from file (replace with actual file reading logic)
    for (int i = 0; i < 3; i++) {
      books.add(Book("Book $i", 10.0 * (i + 1), "Author $i"));
    }
    return books;
  }
}

void main() {
  // Read books from a simulated file
  List<Book> books = Book.readBooksFromFile("books.txt");

  // Loop through books and print details using the implemented method
  for (Book book in books) {
    book.printDetails();
    print("");
  }
}
