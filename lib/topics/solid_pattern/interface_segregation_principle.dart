// Segregated Interfaces
abstract class Printer {
  void printDocument(String content);
}

abstract class PhotoPrinter {
  void printPhoto(String photoContent);
}

// Class implementing only document printing
class DocumentPrinter implements Printer {
  @override
  void printDocument(String content) {
    print('Printing document: $content');
  }
}

// Class implementing both document and photo printing
class AllInOnePrinter implements Printer, PhotoPrinter {
  @override
  void printDocument(String content) {
    print('Printing document: $content');
  }

  @override
  void printPhoto(String photoContent) {
    print('Printing photo: $photoContent');
  }
}
