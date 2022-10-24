//
//  ContentView.swift
//  HackerNews
//
//  Created by fcctwit on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) {post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Hacker🙈News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

 
