//
//  ListViewController.swift
//  ContusDemo
//
//  Created by Prabu on 20/01/21.
//  Copyright © 2021 prabu. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tblListView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commonArray.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.imageView?.image = UIImage(named: commonArray[indexPath.row].img ?? "")
        cell.textLabel?.text = commonArray[indexPath.row].title ?? ""
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        isLastOpened = true
        lastSelectedRow = indexPath.row
        if viewOption == 1 {
            self.navigationController?.popViewController(animated: true)
        } else {
            self.performSegue(withIdentifier: "detail", sender: nil)
        }
    }
}
