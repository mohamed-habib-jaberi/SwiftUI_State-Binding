//
//  BookDetailView.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BookDetailView: View {
  
  @Binding var book: Book
  
  var body: some View {
    VStack {
      
      Text(book.title)
      Image(book.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .scaledToFit()
        
          Button(action: {
               self.book.isLiked.toggle()
           }) {
               Text("👍 Like")
                   .padding()
                   .foregroundColor(book.isLiked ? .secondary : .primary)
                   .background(book.isLiked ? Color.myGreen : Color.white)
                   .cornerRadius(10)
           }
      
    }
  }
}

struct BookDetailView_Previews: PreviewProvider {
  
  static var previews: some View {
    BookDetailView(book: .constant(Book.demoBooks.randomElement()!) )
  }
}
