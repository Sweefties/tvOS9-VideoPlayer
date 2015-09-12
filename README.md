![](https://img.shields.io/badge/build-pass-brightgreen.svg?style=flat-square)
![](https://img.shields.io/badge/platform-tvOS9+-ff69b4.svg?style=flat-square)
![](https://img.shields.io/badge/Require-XCode7.1-lightgrey.svg?style=flat-square)


# tvOS 9 - New OS - Video Player tvOS! - Example
tvOS 9~ Experiments - Native AVKit VideoPlayer - appleTv.

## Example

![](https://raw.githubusercontent.com/Sweefties/tvOS9-VideoPlayer/master/source/tvOS9_Simulator2x_AVKitVideoPlayertvOS_1.jpg)
![](https://raw.githubusercontent.com/Sweefties/tvOS9-VideoPlayer/master/source/tvOS9_Simulator2x_AVKitVideoPlayertvOS_2.jpg)

## Video Source Example
current movie, watermark image from : [NASA Official Videos](http://www.nasa.gov/multimedia/hd/)


## Requirements

- >= XCode 7.1 beta~.
- >= Swift 2.
- >= tvOS 9.0

Tested on tvOS 9.0 Simulator.

## App Transport Security Settings

To support HTTP hosted : add the Boolean type Value to `YES` for `NSAllowsArbitraryLoads` in app's `info.plist` file.


## Code Example

Create a new Swift file

```swift
import Foundation
import UIKit
import AVKit

class VideoPlayerViewController: AVPlayerViewController {

    // MARK: - Properties
    let overlay = UIView(frame: CGRectMake(0, 0, 285, 225))
    let watermark = "your_image_name"
    var url = "http://www.your_url_string"

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setVideoPlayer()
    }

    // MARK: - Set video player for view
    func setVideoPlayer() {
        // watermark overlay (logo tv by example..)
        overlay.addSubview(UIImageView(image: UIImage(named: watermark)))
        contentOverlayView?.addSubview(overlay)

        // AVPlayer Instance with NSURL
        player = AVPlayer(URL: NSURL(string: url)!)

        // Just Play!
        player?.play()
    }
}
```

Configure your storyboard with AVKit Player View Controller Object Library.


## Usage

To run the example project, download or clone the repo.

