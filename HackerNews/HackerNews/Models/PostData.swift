//
//  PostData.swift
//  HackerNews
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/24.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable,Identifiable {
    var id:String{
        return objectID
    }
    let objectID:String
    let title:String
    let points:Int
    let url:String?
}
