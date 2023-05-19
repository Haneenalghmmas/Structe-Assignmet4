import Foundation
/*:
 ## Struct Lab - Tuwaiq Bootcamp

 Create a struct called Book that contains the following properties:

 - title: a String representing the title of the book
 - author: a String representing the author of the book
 - pages: an integer representing the number of pages in the book
 - topic: a String representing the topic or genre of the book (e.g. Computer Science, Programming, Self-Development, etc.)
 
 */
struct Book{
    var title : String
    var author : String
    var page : Int
    var topic : Int.random(in: 100...500)
    
    init(title : String , author : String , page : int , topic : String ) {
        
        self.title = title
        self.author = author
        self.page = page
        self.topic = topic
        
        print("the title of the book is \(title), it was written by \(author) it has \(pages) pages and it was about \(topic)")

    }
}

var myBppk = Book(title:"The Mysterious Affair at Styles "  , author: "Agatha Christie", topic: "Crime novel"  )
/*:
 Create an array of type Book and populate it with at least 3 books using a loop.
 */
var books = [Book]()

let book1 = Book(title: "All Thr Light we Cannot See", author: "Anthony Doerr", topic: "survival")
let book2 = Book(title: "Ten days that shook the world ", author: "john reed", topic: "russian revolution")
let book3 = Book(title: "the double ", author: "fyodor dostoevsky", topic: "psychological ")

print("here are the members of my array of books:")
print("MyBooks")
for i in [book1, book2, book3]{
    
    books.append(i)
    print(i.title)
}
/*:
 Then, write a function called printBooksInTopic that takes two arguments: the array of books and a topic as a String. The function should print out the title and author of each book in the array that matches the specified topic.
 */

// Example usage:
// printBooksInTopic(books, topic: "Programming")

// Example usage:
//printBooksInTopic(books, topic: "Programming")

//Output
/*
 Clean Code: A Handbook of Agile Software Craftsmanship by Robert C. Martin
 Cracking the Coding Interview: 189 Programming Questions and Solutions by Gayle Laakmann McDowell
 */
print("Some of the boos are crime novel ")
func printBooksInTopic(books: [Book], topic: String) {
    for book in books {
        if book.topic == topic {
         
            print("\(book.title) by \(book.author)")
         
        }
    }
}
printBooksInTopic(books: books, topic: "psychological")
