//
//  ViewController.swift
//  Tablas de multiplicar
//
//  Created by iXavy on 31/5/16.
//  Copyright © 2016 iXavy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var sliderValue:Int = 0
    
    @IBOutlet weak var slideOutlet: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func slider(sender: AnyObject) {

        sliderValue = Int(slideOutlet.value * 10 )
        label.text = String(sliderValue)
        table.reloadData()
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(sliderValue * (indexPath.row + 1))
        cell.detailTextLabel?.text = String(indexPath.row + 1
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

