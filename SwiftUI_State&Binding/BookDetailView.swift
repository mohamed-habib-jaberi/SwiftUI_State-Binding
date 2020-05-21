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
    @ObservedObject var user: User
    
  var body: some View {
    VStack {
      
      Text(book.title)
      Image(book.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .scaledToFit()
        
          Button(action: {
               self.book.isLiked.toggle()
            
            switch(self.book.isLiked, self.user.likedBooks.firstIndex(of: self.book)){
                //the book wasn't there, so add it to
            case(true, nil):
                self.user.likedBooks.append(self.book)
             case(false, let index?):
                //we found this book, so remove it from the array
                self.user.likedBooks.remove(at: index)
            default:
                break
            }
            
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
    BookDetailView(book: .constant(Book.demoBooks.randomElement()!), user: User.exampleUser )
  }
}
