//
//  SunView.swift
//  WaveTreat
//
//  Created by Rehnuma Reza Deepty on 8/1/23.
//

import Foundation
import UIKit

class SunView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        
        gradient.frame = bounds
        self.layer.insertSublayer(gradient, at: 0)
        
    }
    
     var gradient: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
         gradientLayer.type = .axial //default => linear = .axial
         gradientLayer.colors = [UIColor.red.cgColor,
                                 UIColor.orange.cgColor]
         
         // Optional properties
//         gradientLayer.startPoint = CGPoint(x: 2, y: 1)
//         gradientLayer.endPoint = CGPoint(x: 9, y: 1)
        //gradientLayer.locations = [2, 0.25, 1]
        
        return gradientLayer
    }()
    
    
}
