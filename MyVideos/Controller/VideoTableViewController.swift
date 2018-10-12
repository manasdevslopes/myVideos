//
//  VideoTableViewController.swift
//  MyVideos
//
//  Created by MANAS VIJAYWARGIYA on 18/07/1940 Saka.
//  Copyright © 1940 MANAS VIJAYWARGIYA. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoTableViewController: UITableViewController {

    let video = DataService.instance.getVideos()
    
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    
    func playVideo(at indexPath: IndexPath)  {
        let selectedVideo = video[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoFileName, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        
        self.present(playerViewController, animated: true, completion: {
            self.playerViewController.player?.play()
        })
        
    }

}
extension VideoTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return video.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? VideoTableViewCell else { return UITableViewCell()}
        let videos = video[indexPath.row]
        cell.updateViews(videos: videos)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        playVideo(at: indexPath)
    }
    
    
}
