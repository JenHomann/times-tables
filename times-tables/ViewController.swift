//
//  ViewController.swift
//  times-tables
//
//  Created by Jen Homann on 11/30/17.
//  Copyright © 2017 Jen Homann. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var slider: UISlider!
    @IBOutlet var table: UITableView!
    var selectedValue: Int = 0
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "timestableCell")
        
        cell.textLabel?.text = String((indexPath.row + 1) * selectedValue)
        
        return cell
        
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        selectedValue = Int(slider.value)
        
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

