//
//  trainViewController.swift
//  test02
//
//  Created by john john on 2017/4/12.
//  Copyright © 2017年 john john. All rights reserved.
//

import UIKit

class trainViewController: UITableViewController {
    
    let placesNameAry = ["台北地區","台中地區","高雄地區"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Train Page"
        
        tableView.register(myTrainCell.self, forCellReuseIdentifier: "train")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesNameAry.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "train", for: indexPath) as! myTrainCell
        cell.nameLabel.text = placesNameAry[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let somethingNew = newTrainView()
        navigationController?.pushViewController(somethingNew, animated: true)
    }
    
}

class myTrainCell: UITableViewCell {
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

class newTrainView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
    }
    
}
