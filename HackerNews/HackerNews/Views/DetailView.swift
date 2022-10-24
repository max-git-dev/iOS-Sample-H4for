//
//  DetailView.swift
//  HackerNews
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/24.
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


