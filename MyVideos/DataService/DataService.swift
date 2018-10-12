//
//  DataService.swift
//  MyVideos
//
//  Created by MANAS VIJAYWARGIYA on 18/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import Foundation

class DataService {
    //singleton
    static let instance = DataService()
    
    private let videos = [
        Videos(authorName: "David Tran", videoFileName: "v1", description: "This is an example of local video.", thumbnailFileName: "v1"),
        Videos(authorName: "Tracy Noah", videoFileName: "v2", description: "This is an example of local video.", thumbnailFileName: "v2"),
        Videos(authorName: "Brendon Burchard", videoFileName: "v3", description: "This is an example of local video.", thumbnailFileName: "v3"),
        Videos(authorName: "Elon Musk", videoFileName: "v4", description: "This is an example of local video.", thumbnailFileName: "v4"),
        Videos(authorName: "David Tran", videoFileName: "v5", description: "This is an example of local video.", thumbnailFileName: "v5"),
        Videos(authorName: "Steve Jobs", videoFileName: "v6", description: "This is an example of local video.", thumbnailFileName: "v6")
    ]
    
    func getVideos() -> [Videos] {
        return videos
    }
}
