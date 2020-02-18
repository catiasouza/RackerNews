//
//  NetworkManager.swift
//  RackerNews
//
//  Created by Catia Miranda de Souza on 17/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import Foundation

class NetwokManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    func fechData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                           let results =  try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                           
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
