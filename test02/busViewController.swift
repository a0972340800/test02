//
//  ViewController.swift
//  test02
//
//  Created by john john on 2017/4/12.
//  Copyright © 2017年 john john. All rights reserved.
//

import UIKit

class busViewController: UITableViewController {
    
    let placesNameAry = ["台北公車","台中公車","高雄公車"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Bus Page"
        
        tableView.register(myCell.self, forCellReuseIdentifier: "bus")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesNameAry.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bus", for: indexPath) as! myCell
        cell.nameLabel.text = placesNameAry[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let somethingNew = newView()
        navigationController?.pushViewController(somethingNew, animated: true)
    }
    
}

class myCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setting()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let nl = UILabel()
        nl.translatesAutoresizingMaskIntoConstraints = false
        nl.text = "Test Simple"
        nl.font = UIFont.systemFont(ofSize: 20)
        return nl
    }()
    
    func setting() {
        addSubview(nameLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    }
}

class newView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }
    
}



