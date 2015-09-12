//
//  MainViewController.swift
//  tvOS9-VideoPlayer
//
//  Created by Wlad Dicario on 12/09/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties
    let segueID = "ShowAVPlayer"
    
    // MARK: - Interface
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation
    @IBAction func playVideo(sender: AnyObject) {
        self.performSegueWithIdentifier(segueID, sender: self)
    }
}
