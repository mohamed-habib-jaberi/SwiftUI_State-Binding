//
//  BooksView.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BooksView: View {
  
    @Binding var books : [Book]
    @ObservedObject var user: User
  
  var body: some View {
    HStack {
      
      ForEach(Range(0...books.count-1)) { iteration in
        GeometryReader { proxy in
          
            BookRow(book: self.$books[iteration], user: self.user, proxy: proxy)
          
        }
        .frame(width: 200, height: 300)
      }
    }
  }
}

struct BooksView_Previews: PreviewProvider {
  
  static var previews: some View {
    BooksView(books: .constant(Book.demoBooks), user: User.exampleUser )
  }
}
