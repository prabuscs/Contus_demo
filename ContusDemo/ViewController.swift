//
//  ViewController.swift
//  ContusDemo
//
//  Created by Prabu on 20/01/21.
//  Copyright © 2021 prabu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgBrand: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    /// Method to append stub data
    fileprivate func appendData() {
        commonArray.removeAll()
        commonArray.append(Items(title: "Honda", Description: nil, img: "1"))
        commonArray.append(Items(title: "GMC", Description: nil, img: "2"))
        commonArray.append(Items(title: "Chrysler", Description: nil, img: "3"))
        commonArray.append(Items(title: "Chevrolet", Description: nil, img: "4"))
        commonArray.append(Items(title: "Kia", Description: nil, img: "5"))
        commonArray.append(Items(title: "Toyota", Description: nil, img: "6"))
        commonArray.append(Items(title: "Ford", Description: nil, img: "7"))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if commonArray.count > 0  &&  lastSelectedRow != -1 && isLastOpened {
            imgBrand.image = UIImage(named: commonArray[lastSelectedRow].img ?? "")
            lblTitle.text = commonArray[lastSelectedRow].title ?? ""
        }
        appendData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        viewOption = segue.identifier == "listandBack" ? 1 : 0
    }
}

