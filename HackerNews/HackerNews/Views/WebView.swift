//
//  WebView.swift
//  HackerNews
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/25.
//

import SwiftUI 
import WebKit

 
struct WebView: UIViewRepresentable {
   
    
     
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURLString  = urlString {
            if let url = URL(string: safeURLString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
     
    
    
}
