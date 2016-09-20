//
//  VideoPlayerViewController.swift
//  tvOS9-VideoPlayer
//
//  Created by Wlad Dicario on 12/09/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class VideoPlayerViewController: AVPlayerViewController {
    
    // MARK: - Properties
    let overlay = UIView(frame: CGRect(x: 100, y: 100, width: 285, height: 225))
    let watermark = "Nasa-Watermark"
    var url = "http://s3.amazonaws.com/akamai.netstorage/HD_downloads/earth_night_rotate_1080.mov"
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setVideoPlayer()
    }
}

//MARK: - VideoPlayer -> VideoPlayerViewController Extension
typealias VideoPlayer = VideoPlayerViewController
extension VideoPlayer {
    
    /// set video player for view
    func setVideoPlayer() {
        // watermark overlay (logo tv by example..)
        overlay.addSubview(UIImageView(image: UIImage(named: watermark)))
        contentOverlayView?.addSubview(overlay)
        
        // AVPlayer Instance with NSURL
        player = AVPlayer(url: URL(string: url)!)
        
        // Just Play!
        player?.play()
    }
}
