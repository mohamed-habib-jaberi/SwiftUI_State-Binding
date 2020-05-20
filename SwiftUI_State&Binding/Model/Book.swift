//
//  Book.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//


import SwiftUI

struct Book: Identifiable {
  var id = UUID()
  var title: String
  var imageName: String
  var isLiked = false
}

extension Book: Equatable {
  static func == (lhs: Book, rhs: Book) -> Bool {
    return lhs.id == rhs.id
  }
}

extension Book {
  static let demoBooks = [
    Book(title: "Swift UI", imageName: "SwiftUI"),
    Book(title: "RxSwift: Reactive Programming with Swift", imageName: "RxSwift"),
    Book(title: "Server Side Swift", imageName: "Vapor"),
    Book(title: "ARKit by Tutorials", imageName: "ARKit"),
    Book(title: "Metal by Tutorials", imageName: "Metal")
  ]
}
