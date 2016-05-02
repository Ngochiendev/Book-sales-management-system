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
            
            myModel(id: "2", image: "linux", range: "Top2:", title: "《鸟哥的Linux私房菜》", intro: "人民邮电出版社/88.00元", price: 88.0, descriptions: "----------内容简介：----------\n本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。"),
            
            myModel(id: "3", image: "algorithm", range: "Top3:", title: "《算法导论》", intro: "机械工业出版社/128.00元", price: 128.00, descriptions: "----------内容简介：----------\n在有关算法的书中，有一些叙述非常严谨，但不够全面；另一些涉及了大量的题材，但又缺乏严谨性。本书将严谨性和全面性融为一体，深入讨论各类算法，并着力使这些算法的设计和分析能为各个层次的读者接受。全书各章自成体系，可以作为独立的学习单元；算法以英语和伪代码的形式描述，具备初步程序设计经验的人就能看懂；说明和解释力求浅显易懂，不失深度和数学严谨性。\n全书选材经典、内容丰富、结构合理、逻辑清晰，对本科生的数据结构课程和研究生的算法课程都是非常实用的教材，在IT专业人员的职业生涯中，本书也是一本案头必备的参考书或工程实践手册。"),
            
            myModel(id: "4", image: "html", range: "Top4:", title: "《深入浅出HTML与CSS、XHTML》", intro: "东南大学出版社/98.00元", price: 98.0, descriptions: "----------内容简介：----------\n"),
            
            myModel(id: "5", image: "java", range: "Top5:", title: "《Java核心技术·卷1：基础知识》", intro: "机械工业出版社/88.00元",price: 88.00, descriptions: "----------内容简介：----------\n本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。"),
            
            myModel(id: "6", image: "ios", range: "Top6:", title: "《Hacking and Securing iOS Applications》", intro: "McGraw-Hill Osborne Media/98.00元",price:  98.0, descriptions: "----------内容简介：----------\n本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。"),
            
            myModel(id: "7", image: "oc", range: "Top7:", title: "《Programming in Objective-C》", intro: "Addison-Wesley Professional/70.00元", price: 70.00, descriptions: "----------内容简介：----------\n本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。")
            
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

