//
//  DetailViewController.swift
//  BSMS2
//
//  Created by ChenXin on 16/5/2.
//  Copyright © 2016年 ChenXin. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    var book : myModel!

    @IBOutlet var bookName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("book : \(book)")
        
        self.bookName.text = book.title

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
