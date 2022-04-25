//
//  HeaderView.swift
//  project-ios
//
//  Created by User on 20.04.22.
//  Copyright © 2022 viktoriya. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    static func instantiate() -> HeaderView{
        let view: HeaderView = initFromNib()
        return view
    }
}

extension UIView{
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}

