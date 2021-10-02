//
//  DetailViewController.swift
//  ContusDemo
//
//  Created by Prabu on 20/01/21.
//  Copyright © 2021 prabu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgBrand: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imgBrand.image = UIImage(named: commonArray[lastSelectedRow].img ?? "")
        lblTitle.text = commonArray[lastSelectedRow].title
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    @IBAction func onEdit(_ sender: UIButton){
        let alertController = UIAlertController(title: "Edit Title", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.text = commonArray[lastSelectedRow].title
        }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let textField = alertController.textFields![0] as UITextField
            self.lblTitle.text = textField.text
            commonArray[lastSelectedRow].title = textField.text
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
            (action : UIAlertAction!) -> Void in })
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func deleteAction(_ sender: Any) {
        commonArray.remove(at: lastSelectedRow)
        lastSelectedRow = -1
        self.navigationController?.popViewController(animated: true)
    }
}
