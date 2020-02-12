//
//  Extensions.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 12/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    func image(_ size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
    
    func image(_ rect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 32)) -> UIImage {
        return UIGraphicsImageRenderer(size: rect.size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(x: 0, y: rect.size.height-2, width: rect.size.width, height: 2))
        }
    }
}

