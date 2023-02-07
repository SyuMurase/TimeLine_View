//
//  OkashiData.swift
//  shoku_ver2
//
//  Created by 村瀬嵩 on 2023/02/05.
//

import SwiftUI

class OkashiData: ObservableObject {
    
    struct ResultJson: Codable {
        struct Item: Codable {
            let name: String?
            let url: URL?
            let image: URL?
        }
        
        let item: [Item]?
    }
    
//    @Published var okashiList: [OkashiItem] = []
    
    //web API検索用メソッド　第一引数：keyward
    func searchOsakashi(keyword: String) async {
        
        //asyncは非同期
        print(keyword)
        
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        else {
            return
        }
        
        guard URL(string: "https://sysbird.jp/toriko/api/?apikey=guest&format=json&keyword=\(keyword_encode)&max=10&order=r") != nil else {
                    return
         }

    }
    
}
