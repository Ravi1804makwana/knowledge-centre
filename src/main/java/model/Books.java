/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Objects;

/**
 *
 * @author Ravikumar Makwana
 */
public class Books {
    public String title,author,publisher;
    public int stock,isbn_no;

    public Books() {
    }

    public Books(String title, String author, String publisher, int isbn_no, int stock) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.stock = stock;
        this.isbn_no = isbn_no;
    }

    public String getAuthor() {
        return author;
    }

    public int getIsbn_no() {
        return isbn_no;
    }

    public String getPublisher() {
        return publisher;
    }

    public int getStock() {
        return stock;
    }

    public String getTitle() {
        return title;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setIsbn_no(int isbn_no) {
        this.isbn_no = isbn_no;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    
}
