//
//  Videos.swift
//  MyVideos
//
//  Created by MANAS VIJAYWARGIYA on 18/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import Foundation

struct Videos {
    private(set) public var authorName: String
    private(set) public var videoFileName: String
    private(set) public var description: String
    private(set) public var thumbnailFileName: String
    
    init(authorName: String, videoFileName: String, description: String, thumbnailFileName: String) {
        self.authorName = authorName
        self.videoFileName = videoFileName
        self.description = description
        self.thumbnailFileName = thumbnailFileName
    }
}
