//
//  VideoTableViewCell.swift
//  MyVideos
//
//  Created by MANAS VIJAYWARGIYA on 18/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailVideoImage: UIImageView!
    @IBOutlet weak var ib_btn: UIImageView!
    @IBOutlet weak var ib_userName: UILabel!
    
    func updateViews(videos: Videos){
        thumbnailVideoImage.image = UIImage(named: videos.thumbnailFileName)
        ib_userName.text = videos.authorName
        
        thumbnailVideoImage.layer.cornerRadius = 8.0
        thumbnailVideoImage.layer.masksToBounds = true
    }
    
    
}
