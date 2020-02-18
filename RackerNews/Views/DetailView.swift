//
//  DetailView.swift
//  RackerNews
//
//  Created by Catia Miranda de Souza on 17/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

