//
//  mytableview.swift
//  BSMS
//
//  Created by ChenXin on 16/4/28.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

class mytableview: UITableView, UITableViewDataSource {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.dataSource = self
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
