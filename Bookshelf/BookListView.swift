//
//  ContentView.swift
//  Bookshelf
//
//  Created by Laura Gongaware on 7/7/22.
//

import SwiftUI

struct BookListView: View {
    
    @State var viewModel = BookDataStore()
    
    var body: some View {
        NavigationView {
        VStack {
            List{
                ForEach(BookDataStore.books) {
                    book in
                    NavigationLink {
                        BookDetailView(book: .constant(book))
                    } label: {
                        HStack {
                            Image(book.coverArt)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 200, alignment: .leading)
                            VStack(alignment: .leading){
                                Text(book.title)
                                    .font(.system(size: 15))
                                    .bold()
                                
                                Text(book.author)
                                    .font(.system(size: 11))
                                HStack{
                                    ProgressBar()
                                    Text("50%")
                                }
                                HStack{
                                    Image(systemName: "heart")
                                    Text("69")
                                    Image(systemName: "message")
                                    Text("420")
                                }
                                
                            }.padding()
                        }
                    }
                }
            }
            }
        .navigationBarTitle("Bookshelf", displayMode: .inline)
        }
    }
}

struct ProgressBar: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Capsule().frame(width: 100, height: 5)
                .opacity(0.3)
                .foregroundColor(.gray)
            Capsule().frame(width: 50, height: 5)
                .foregroundColor(.orange)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
