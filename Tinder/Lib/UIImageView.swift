//
//  UIImageView.swift
//  Tinder
//
//  Created by Brendha Vivas Palhares Cardoso on 07/08/22.
//

import UIKit

extension UIImageView{
    
    static func fotoImageView (named: String? = nil) -> UIImageView{
        let imageView = UIImageView()
        if let named = named {
            imageView.image = UIImage(named: named)
            
        }
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
        
    }
    
    static func iconCard (named: String) -> UIImageView{
        let imageView = UIImageView()
        imageView.image = UIImage(named: named)
        imageView.size(size: .init(width: 70, height: 70))
        imageView.alpha = 0.0
        return imageView
        
    }
    
}
