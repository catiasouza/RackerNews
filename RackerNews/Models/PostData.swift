//
//  PostData.swift
//  RackerNews
//
//  Created by Catia Miranda de Souza on 17/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    
   var id: String{
    return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
