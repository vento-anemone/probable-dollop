//
//  ViewController.swift
//  hogehoge
//
//  Created by hoge on 2017/11/23.
//  Copyright © 2017年 hoge. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let cellId = "TableViewCell"
    var flg:Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if flg {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! TableViewCell
            cell.updateLabel()
            return cell.frame.height
        }
        else {
            return 70
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        flg = !flg
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell
        cell.setLabel(isHidden: !flg)
        return cell
    }
    
    @IBOutlet weak var tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tv.register(UINib(nibName: cellId, bundle: nil),
                         forCellReuseIdentifier: cellId)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

