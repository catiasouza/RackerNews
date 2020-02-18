//
//  ContentView.swift
//  RackerNews
//
//  Created by Catia Miranda de Souza on 17/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetwokManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts) {post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
                
            .navigationBarTitle("RackerNews")
        }
        .onAppear {
            self.networkManager.fechData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hello"),
//    Post(id: "3", title: "Hello")
//]
