//
//  NetworkManager.swift
//  HackerNews
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/24.
//

import Foundation

class NetworkManager:ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(
            string: "https://hn.algolia.com/api/v1/search?tags=front_page"
        )
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: URLRequest(url: url)) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safedata = data {
                        do
                        {
                            let results = try decoder.decode(Results.self, from: safedata)
                            self.posts = results.hits
                        }
                        catch
                        {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
