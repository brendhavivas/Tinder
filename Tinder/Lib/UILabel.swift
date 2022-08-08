//
//  UILabel.swift
//  Tinder
//
//  Created by Brendha Vivas Palhares Cardoso on 07/08/22.
//

import UIKit

extension UILabel {
    
    static func textLabel (size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel{
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    static func textBoldLabel (size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1) -> UILabel{
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    func adicionaShadow (){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
    
}
