//
//  TableViewCell.swift
//  hogehoge
//
//  Created by kazuya on 2019/05/09.
//  Copyright © 2019年 hoge. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TableViewCell: UITableViewCell {
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet var ast: [UILabel]!
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    
    
    var dispose: Disposable?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabel(isHidden: Bool) {
        for lbl in self.ast {
            lbl.isHidden = isHidden
        }
        lbl1.isHidden = isHidden
        lbl2.isHidden = isHidden
        lbl3.isHidden = isHidden
        lbl4.isHidden = isHidden
        lbl5.isHidden = isHidden
        lbl6.isHidden = isHidden
    }
    
    func updateLabel() {
        lbl1.sizeToFit()
        lbl2.sizeToFit()
        lbl3.sizeToFit()
        lbl4.sizeToFit()
        lbl5.sizeToFit()
        lbl6.sizeToFit()
    }
    
}

extension Reactive where Base : TableViewCell {
    var acBtnTap: ControlEvent<Void> {
        return self.base.btn.rx.tap
    }
}
