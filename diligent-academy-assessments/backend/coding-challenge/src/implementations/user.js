import { Library } from "../sealed/library";

export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        if (library.getBooks().includes(book)) {
            this.books.push(book);
            library.removeBook(book);
        } else throw new Error("Library doesn't have the requested book available");
    }


    hasBook(book) {
        return this.books.includes(book);
    }

    return(book, library) {
        if (this.hasBook(book)) {
            this.books = this.books.filter(b => b !== book);
            library.addBook(book);
            return true;
        } else return false;
    }

    getBookNames() {
        return this.books.map(b => b.name);
    }
}