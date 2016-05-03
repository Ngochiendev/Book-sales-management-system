//
//  myModel.swift
//  BSMS2
//
//  Created by ChenXin on 16/4/29.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class myModel: NSObject {
    var id: String
    var image: String
    var rank: String
    var title: String
    var intro: String
    var price: Int
    var descriptions: String
    
    init (id: String, image: String, rank: String, title: String, intro: String, price: Int, descriptions: String) {
        self.id = id
        self.image = image
        self.rank = rank
        self.title = title
        self.intro = intro
        self.price = price
        self.descriptions = descriptions
    }
}
