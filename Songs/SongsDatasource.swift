//
//  SongsDatasource.swift
//  Songs
//
//  Created by Samuël Maljaars on 02/04/15.
//  Copyright (c) 2015 smaljaars. All rights reserved.
//

import Foundation
import UIKit

class SongsDatasource: NSObject, UITableViewDataSource {
    
    override init() {
        let song = Song(title: "Hallelujah", artist: "Mozart", albumName: "", artworkUrl: "")
        let song2 = Song(title: "Ave Verum Corpus", artist: "Bach", albumName: "", artworkUrl: "")
        let songsArray: [Song] = [song, song2]
        
        for gezang in songsArray {
            songs.append(gezang)
        }
        
    }
    
    var songs = [Song]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        

        
        return songs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = songs[indexPath.row].title
        cell.detailTextLabel?.text = songs[indexPath.row].artist
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "The Beatles"
    }
}