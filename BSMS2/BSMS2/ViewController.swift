//
//  ViewController.swift
//  BSMS2
//
//  Created by ChenXin on 16/4/28.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit

var bookcells: [myModel] = []


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bookcells = [
            myModel(id: "1", image: "se", range: "Top1:", title: "《软件工程》", intro: "机械工业出版社/69.00元"),
                     myModel(id: "2", image: "linux", range: "Top2:", title: "《鸟哥的Linux私房菜》", intro: "人民邮电出版社/88.00元"),
                     myModel(id: "3", image: "algorithm", range: "Top3:", title: "《算法导论》", intro: "机械工业出版社/128.00元"),
                     myModel(id: "4", image: "html", range: "Top4:", title: "《深入浅出HTML与CSS、XHTML》", intro: "东南大学出版社/98.00元"),
                    myModel(id: "5", image: "java", range: "Top5:", title: "《Java核心技术·卷1：基础知识》", intro: "机械工业出版社/88.00元"),
                    myModel(id: "6", image: "ios", range: "Top6:", title: "《Hacking and Securing iOS Applications》", intro: "McGraw-Hill Osborne Media/98.00元"),
                    myModel(id: "7", image: "oc", range: "Top7:", title: "《Programming in Objective-C》", intro: "Addison-Wesley Professional/70.00元")
                    
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookcells.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("bookcells")! as UITableViewCell
        
        var bookcell = bookcells[indexPath.row] as myModel
        
        var image = cell.viewWithTag(101) as! UIImageView
        var range = cell.viewWithTag(102) as! UILabel
        var title = cell.viewWithTag(103) as! UILabel
        var intro = cell.viewWithTag(104) as! UILabel
        
        image.image = UIImage(named: bookcell.image)
        range.text = bookcell.range
        title.text = bookcell.title
        intro.text = bookcell.intro
        
        return cell
    }
    
    
}

