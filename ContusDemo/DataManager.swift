//
//  SingletonManager.swift
//  ContusDemo
//
//  Created by Prabu on 20/01/21.
//  Copyright © 2021 prabu. All rights reserved.
//

import UIKit

struct Items {
    var title: String?
    var Description: String?
    var img: String?
}

var commonArray = [Items]()
var lastSelectedRow = 0
var isLastOpened = false
var viewOption = 0


