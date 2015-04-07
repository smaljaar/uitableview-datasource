//
//  SongsTableViewController.swift
//  Songs
//
//  Created by Samuël Maljaars on 01/04/15.
//  Copyright (c) 2015 smaljaars. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {

    let dataSrc: SongsDatasource = SongsDatasource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSrc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        let detailViewController = segue.destinationViewController as SongDetailViewController
    }


}
