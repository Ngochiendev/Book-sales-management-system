//
//  ViewController.swift
//  BSMS2
//
//  Created by ChenXin on 16/4/28.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit


var bookcells: [myModel] = []
var bookShoppingCart: [myModel] = []


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    // MARK:- Life cycle 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bookcells = [
            myModel(id: "1", image: "se", range: "Top1:", title: "《软件工程》", intro: "机械工业出版社/69.00元", price: 69.00, descriptions: "----------内容简介：----------\n本书自1982年发行第1版以来，一直受到软件工程界的高度重视，成为高等院校计算机相关专业软件工程课程的重要教学参考书。近30年来，它的各个后继版本一直都是软件专业人土熟悉的读物，在国际软件工程界享有无可质疑的权威地位。它在全面而系统地介绍软件工程的有关概念、原则、方法和工具方面获得了广大读者的好评。第7版包含了很多新的内容，而且调整了全书的结构，以改进教学顺序，同时更加强调一些新的、重要的软件工程过程和软件工程实践知识。全书分软件过程、建模、质量管理、软件项目管理和软件工程高级课题五个部分，系统地论述了软件工程领域最新的基础知识，包括新的概念、原则、技术、方法和工具，同时提供了大量供读者进一步研究探索的参考信息。 本书适合作为本科生和研究生的软件工程及相关课程的教材，新版中五个部分的划分有利于教师根据学时和教学要求安排教学，同时也适合作为软件专业人员的工作指南，即使是资深专业人员，阅读本书也能获益匪浅。"),
            myModel(id: "2", image: "linux", range: "Top2:", title: "《鸟哥的Linux私房菜》", intro: "人民邮电出版社/88.00元", price: 88.0, descriptions: "----------内容简介：----------\n"),
            myModel(id: "3", image: "algorithm", range: "Top3:", title: "《算法导论》", intro: "机械工业出版社/128.00元", price: 128.00),
            myModel(id: "4", image: "html", range: "Top4:", title: "《深入浅出HTML与CSS、XHTML》", intro: "东南大学出版社/98.00元", price: 98.0),
            myModel(id: "5", image: "java", range: "Top5:", title: "《Java核心技术·卷1：基础知识》", intro: "机械工业出版社/88.00元",price: 88.00),
            myModel(id: "6", image: "ios", range: "Top6:", title: "《Hacking and Securing iOS Applications》", intro: "McGraw-Hill Osborne Media/98.00元",price:  98.0),
            myModel(id: "7", image: "oc", range: "Top7:", title: "《Programming in Objective-C》", intro: "Addison-Wesley Professional/70.00元", price: 70.00)
            
        ]
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "查看购物车",style: .Plain ,target: self, action: #selector(callMe))
    }
    
    @objc private func callMe() {
        print("call me?")
        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("shoppingCart")
        vc.navigationItem.title = self.navigationItem.rightBarButtonItem?.title
        self.navigationController?.pushViewController(vc, animated: true)
        

    }


    // MARK: - table view data source
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookcells.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        let book : myModel = bookcells[indexPath.row]
        bookShoppingCart.append(book)
        let alertView : UIAlertController = UIAlertController(title: "您已成功加入购物车！", message: book.title, preferredStyle: .Alert)
        let okaction : UIAlertAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            print("OK action")
        }
        alertView.addAction(okaction)
        self .presentViewController(alertView, animated: true) {
            print("niclas in block")
            
        }
        print("add to book shopping cart")
    }
    
    
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("bookcells")! as UITableViewCell
        
        let bookcell = bookcells[indexPath.row] as myModel
        
        let image = cell.viewWithTag(101) as! UIImageView
        let range = cell.viewWithTag(102) as! UILabel
        let title = cell.viewWithTag(103) as! UILabel
        let intro = cell.viewWithTag(104) as! UILabel
        
        image.image = UIImage(named: bookcell.image)
        range.text = bookcell.range
        title.text = bookcell.title
        intro.text = bookcell.intro
        
        return cell
    }
 
    //MARK: - tableView deleagte
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        let book : myModel = bookcells[indexPath.row]
        
        let detalVc : DetailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        detalVc.book = book
        self.navigationController?.pushViewController(detalVc, animated: true)
        
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//        let cell : UITableViewCell = sender as! UITableViewCell
//        let index : NSIndexPath = self.tableView.indexPathForCell(cell)!
//        let book : myModel = bookcells[index.row]
//        
//        let detailVc : DetailViewController = segue.destinationViewController as! DetailViewController
//        detailVc.book = book
//        
//    }
}

