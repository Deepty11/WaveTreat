//
//  WaveView.swift
//  WaveTreat
//
//  Created by Rehnuma Reza on 29/12/22.
//

import Foundation
import UIKit

class WaveView: UIView{
    enum Direction{
        case right
        case left
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        createLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createLabel()
    }
    
    private weak var displayLink: CADisplayLink?
    private var startTime: CFTimeInterval = 0
    
    var myLayer = CAShapeLayer()
    
    var speed:Double = 10 // to animate the wave
    var frequency = 55.0 // to change the height
    var parameterA = 1.5 // paramA and paramB are to change the length of the wave
    var parameterB = 9.0
    var phase = 0.0
    
    var preferredColor = UIColor.systemCyan
    
    private var label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18.0)
        label.textColor = .orange
        label.text = "What a wave !! 🌊"
        label.textAlignment = .center
        
        return label
    }()
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        myLayer.frame = rect

        let width = Double(self.frame.width)
        let height = Double(self.frame.height)

        let mid = height * 0.5

        let waveLength = width / frequency
        let waveHeightCoef = Double(frequency)

        path.move(to: CGPoint(x: 0, y: frame.maxY))
        path.addLine(to: CGPoint(x: 0, y: mid))

        for x in stride(from: 0, to: width, by: 1){
            let actualX = x / waveLength
            let sine = -cos(parameterA * (actualX + phase)) * sin((actualX + phase)/parameterB)

            let y = waveHeightCoef * sine + mid

            path.addLine(to: CGPoint(x: x, y: y))

        }

        path.addLine(to: CGPoint(x: CGFloat(width), y: frame.maxY))
        path.addLine(to: CGPoint(x: 0, y: frame.maxY))

        myLayer.path = path.cgPath
        myLayer.fillColor = preferredColor.cgColor
        myLayer.strokeColor = preferredColor.cgColor
        self.layer.addSublayer(myLayer)

    }
    
    func createLabel(){
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
    }

}
