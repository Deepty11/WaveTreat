//
//  ViewController.swift
//  WaveTreat
//
//  Created by Rehnuma Reza on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let waveView = WaveView(frame: CGRect(x: 0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 2))
        view.addSubview(waveView)
        
        
        
        
    }


}

