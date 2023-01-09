//
//  ViewController.swift
//  WaveTreat
//
//  Created by Rehnuma Reza on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    private var waveView = WaveView()
    private var sunView = SunView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(waveView)
        view.addSubview(sunView)
        
        activateConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activateConstraints()
    }
    
    func activateConstraints(){
        waveView.translatesAutoresizingMaskIntoConstraints = false
        sunView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: - constraints for waveView
        NSLayoutConstraint.activate([
            waveView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            waveView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            waveView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            waveView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            ])
        
        //MARK: - constraints for sunView
        NSLayoutConstraint.activate([
            sunView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            sunView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            sunView.widthAnchor.constraint(equalToConstant: 65),
            sunView.heightAnchor.constraint(equalTo: sunView.widthAnchor)
            ])
    
    }

}

