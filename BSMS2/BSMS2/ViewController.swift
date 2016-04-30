//
//  ViewController.swift
//  BSMS2
//
//  Created by ChenXin on 16/4/28.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

var bookcells: [myModel] = []


class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bookcells = [
                     myModel(id: "1", image: "se", title: "《软件工程》", intro: "机械工业出版社/69.00元"),
                     myModel(id: "2", image: "linux", title: "《鸟哥的Linux私房菜》", intro: "人民邮电出版社/88.00元"),
                     myModel(id: "3", image: "algorithm", title: "《算法导论》", intro: "机械工业出版社/128.00元"),
                     myModel(id: "4", image: "html", title: "《深入浅出HTML与CSS、XHTML》", intro: "东南大学出版社/98.00元"),
                    myModel(id: "5", image: "java", title: "《Java核心技术·卷1：基础知识》", intro: "机械工业出版社/88.00元"),
                    myModel(id: "6", image: "ios", title: "《Hacking and Securing iOS Applications》", intro: "McGraw-Hill Osborne Media/98.00元"),
                    myModel(id: "7", image: "oc", title: "《Programming in Objective-C》", intro: " Addison-Wesley Professional/70.00元")
                    
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell


}

