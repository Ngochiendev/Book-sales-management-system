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
    var title: String
    var intro: String
    
    
    init (id: String, image: String, title: String, intro: String) {
        self.id = id
        self.image = image
        self.title = title
        self.intro = intro
    }
}
