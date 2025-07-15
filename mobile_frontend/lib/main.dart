import 'package:flutter/material.dart';

// Sample audiobook data model
class Audiobook {
  final String title;
  final String author;
  final String imageUrl;

  Audiobook({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}

// Use a placeholder image for now
const String placeholderCover =
    'https://via.placeholder.com/150x220.png?text=Cover';

/*
 * List of sample audiobooks for the store.
 * Added a variety of titles, authors, and unique cover images from open sources and placeholder services.
 */
final List<Audiobook> sampleAudiobooks = [
  Audiobook(
    title: 'The Art of War',
    author: 'Sun Tzu',
    imageUrl: 'https://covers.openlibrary.org/b/id/8156191-L.jpg',
  ),
  Audiobook(
    title: '1984',
    author: 'George Orwell',
    imageUrl: 'https://covers.openlibrary.org/b/id/7222246-L.jpg',
  ),
  Audiobook(
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    imageUrl: 'https://covers.openlibrary.org/b/id/8231996-L.jpg',
  ),
  Audiobook(
    title: 'The Hobbit',
    author: 'J.R.R. Tolkien',
    imageUrl: 'https://covers.openlibrary.org/b/id/8101346-L.jpg',
  ),
  Audiobook(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    imageUrl: 'https://covers.openlibrary.org/b/id/8228691-L.jpg',
  ),
  Audiobook(
    title: 'Frankenstein',
    author: 'Mary Shelley',
    imageUrl: 'https://covers.openlibrary.org/b/id/9756082-L.jpg',
  ),
  Audiobook(
    title: 'Moby Dick',
    author: 'Herman Melville',
    imageUrl: 'https://covers.openlibrary.org/b/id/7222276-L.jpg',
  ),
  Audiobook(
    title: 'The Adventures of Sherlock Holmes',
    author: 'Arthur Conan Doyle',
    imageUrl: 'https://covers.openlibrary.org/b/id/8231428-L.jpg',
  ),
  Audiobook(
    title: 'Hamlet',
    author: 'William Shakespeare',
    imageUrl: 'https://covers.openlibrary.org/b/id/7915041-L.jpg',
  ),
  Audiobook(
    title: 'Dracula',
    author: 'Bram Stoker',
    imageUrl: 'https://covers.openlibrary.org/b/id/10026390-L.jpg',
  ),
  Audiobook(
    title: 'Don Quixote',
    author: 'Miguel de Cervantes',
    imageUrl: 'https://covers.openlibrary.org/b/id/8279045-L.jpg',
  ),
  Audiobook(
    title: 'A Tale of Two Cities',
    author: 'Charles Dickens',
    imageUrl: 'https://covers.openlibrary.org/b/id/10252731-L.jpg',
  ),
  // Additional unique audiobooks below
  Audiobook(
    title: 'The Little Prince',
    author: 'Antoine de Saint-Exupéry',
    imageUrl: 'https://covers.openlibrary.org/b/id/8795831-L.jpg',
  ),
  Audiobook(
    title: 'Crime and Punishment',
    author: 'Fyodor Dostoevsky',
    imageUrl: 'https://covers.openlibrary.org/b/id/10342641-L.jpg',
  ),
  Audiobook(
    title: 'Brave New World',
    author: 'Aldous Huxley',
    imageUrl: 'https://covers.openlibrary.org/b/id/8772234-L.jpg',
  ),
  Audiobook(
    title: 'The Catcher in the Rye',
    author: 'J.D. Salinger',
    imageUrl: 'https://covers.openlibrary.org/b/id/8224440-L.jpg',
  ),
  Audiobook(
    title: 'Wuthering Heights',
    author: 'Emily Brontë',
    imageUrl: 'https://covers.openlibrary.org/b/id/8231856-L.jpg',
  ),
  Audiobook(
    title: 'Great Expectations',
    author: 'Charles Dickens',
    imageUrl: 'https://covers.openlibrary.org/b/id/6760942-L.jpg',
  ),
  Audiobook(
    title: 'Alice\'s Adventures in Wonderland',
    author: 'Lewis Carroll',
    imageUrl: 'https://covers.openlibrary.org/b/id/8657032-L.jpg',
  ),
  Audiobook(
    title: 'Les Misérables',
    author: 'Victor Hugo',
    imageUrl: 'https://covers.openlibrary.org/b/id/8613361-L.jpg',
  ),
  Audiobook(
    title: 'The Odyssey',
    author: 'Homer',
    imageUrl: 'https://covers.openlibrary.org/b/id/8219253-L.jpg',
  ),
  Audiobook(
    title: 'Emma',
    author: 'Jane Austen',
    imageUrl: 'https://covers.openlibrary.org/b/id/8244157-L.jpg',
  ),
  Audiobook(
    title: 'Jane Eyre',
    author: 'Charlotte Brontë',
    imageUrl: 'https://covers.openlibrary.org/b/id/8224817-L.jpg',
  ),
  Audiobook(
    title: 'Fahrenheit 451',
    author: 'Ray Bradbury',
    imageUrl: 'https://covers.openlibrary.org/b/id/10430613-L.jpg',
  ),
  Audiobook(
    title: 'Anna Karenina',
    author: 'Leo Tolstoy',
    imageUrl: 'https://covers.openlibrary.org/b/id/8231440-L.jpg',
  ),
  Audiobook(
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    imageUrl: 'https://covers.openlibrary.org/b/id/7222279-L.jpg',
  ),
  Audiobook(
    title: 'The Scarlet Letter',
    author: 'Nathaniel Hawthorne',
    imageUrl: 'https://covers.openlibrary.org/b/id/9811165-L.jpg',
  ),
  Audiobook(
    title: 'Little Women',
    author: 'Louisa May Alcott',
    imageUrl: 'https://covers.openlibrary.org/b/id/8322638-L.jpg',
  ),
];

void main() {
  runApp(const MyApp());
}

// PUBLIC_INTERFACE
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// The root widget of the application, sets up the MaterialApp theme and home screen.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audiobook Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const StoreScreen(),
    );
  }
}

// PUBLIC_INTERFACE
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  /// Displays the store of audiobooks in a responsive grid with vertical scrolling.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audiobook Store'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: sampleAudiobooks.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Display 2 items per row
            childAspectRatio: 0.66, // Taller cards for book covers
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final book = sampleAudiobooks[index];
            return AudiobookGridTile(audiobook: book);
          },
        ),
      ),
    );
  }
}

// PUBLIC_INTERFACE
class AudiobookGridTile extends StatelessWidget {
  final Audiobook audiobook;

  const AudiobookGridTile({super.key, required this.audiobook});

  /// Widget for displaying an individual audiobook's cover, title, and author in the grid.
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to audiobook detail or purchase
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Selected "${audiobook.title}"')),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha((0.03 * 255).toInt()),
                blurRadius: 4,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  audiobook.imageUrl,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[300],
                    height: 150,
                    child: const Icon(Icons.book, size: 64, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  audiobook.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                child: Text(
                  audiobook.author,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Placeholder for purchase/add logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Purchase "${audiobook.title}" coming soon!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                  ),
                  child: const Text('Buy'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
