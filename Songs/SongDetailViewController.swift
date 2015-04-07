//
//  SongDetailViewController.swift
//  Songs
//
//  Created by Samuël Maljaars on 01/04/15.
//  Copyright (c) 2015 smaljaars. All rights reserved.
//

import UIKit

class SongDetailViewController: UIViewController {
    
    var song:Song?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView()
    }
    
    func updateView(){
        titleLabel.text = song?.title
        artistLabel.text = song?.artist
        
    }
    
}
