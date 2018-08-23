//
//  KGCustomButton.swift
//  IOS-Swift-IBDesignableCustomButton
//
//  Created by Pooya on 2018-08-23.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

@IBDesignable
open class KGCustomButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setTitle("MyTitle", for: .normal)
        setTitleColor(UIColor.blue, for: .normal)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0  {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor?  {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }

}
