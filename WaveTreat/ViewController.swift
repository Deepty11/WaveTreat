//
//  ViewController.swift
//  WaveTreat
//
//  Created by Rehnuma Reza on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    private var waveView = WaveView()
    
    private var newView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(waveView)
        activateConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activateConstraints()
        
    }
    
    func activateConstraints(){
        waveView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            waveView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            waveView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            waveView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            waveView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            ])
    
    }



}

