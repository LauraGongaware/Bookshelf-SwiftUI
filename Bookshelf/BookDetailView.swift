//
//  BookDetailView.swift
//  Bookshelf
//
//  Created by Laura Gongaware on 7/7/22.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        
        VStack{
            Image(book.coverArt)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 250, alignment: .center)
            Text(book.title)
                .font(.system(size: 20))
                .bold()
                
            Text(book.author)
                .font(.subheadline)
            HStack {
                VStack{
                    Text("Release")
                    Text(book.releaseYear)
                }
                VStack{
                    Text("Pages")
                    Text("1000")
                }
                VStack{
                    Text("Language")
                    Text("Eng")
                }
            }.padding()
            Text("Description")
            ScrollView {
            Text(book.description)
            }
        }.padding()

    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .constant(Book(title: "Go Dog Go", author: "PD Eastman", coverArt: "10x" , releaseYear: "2022", description: "Classic children's book")))
    }
}
