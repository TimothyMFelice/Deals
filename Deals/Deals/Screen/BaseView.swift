//
//  BaseView.swift
//  Deals
//
//  Created by Timothy Felice on 8/8/19.
//  Copyright © 2019 Timothy Felice. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
