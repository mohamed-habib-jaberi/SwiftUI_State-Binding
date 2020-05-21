//
//  RecommendedRow.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct RecommendedRow: View {
  
 @Binding var book: Book
  
  var body: some View {
    
    VStack {
      Text(verbatim: "Featured Book")
        .foregroundColor(.white)
        .font(Font.system(.headline, design: .rounded))
        .padding()
      Text(book.title)
        .foregroundColor(.white)
        .font(Font.system(.subheadline, design: .rounded))
        .padding()
      Image(book.imageName)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 200, height: 200)
      
    }
      
      .shadow(color: .black, radius: 5, x: 5, y: 5)
    
  }
}

struct RecommendedRow_Previews: PreviewProvider {
  static var previews: some View {
    RecommendedRow(book: .constant(Book.demoBooks.randomElement()!))
  }
}
