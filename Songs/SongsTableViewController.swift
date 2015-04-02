//
//  SongsTableViewController.swift
//  Songs
//
//  Created by Samuël Maljaars on 01/04/15.
//  Copyright (c) 2015 smaljaars. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "row \(indexPath.row)"
        if let detail = self.tableView(tableView, titleForHeaderInSection: indexPath.section){
            cell.detailTextLabel?.text = "in \(detail)"
        }
        return cell
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "section a"
        case 1:
            return "section b"
        case 2:
            return "section c"
        default :
            return nil
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        let detailViewController = segue.destinationViewController as SongDetailViewController
        detailViewController.song = Song(title:"Love sweet love", artist:"KLMH", rating:4.0, chartPosition:5)
    }


}
