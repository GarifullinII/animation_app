//
//  ViewController.swift
//  animation_app
//
//  Created by Ildar Garifullin on 06/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func coreAnimationButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [weak self] in
                guard let self = self else {return}
                
                if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                    self.coreAnimationView.frame.origin.x -= 20
                }
            }
    }
}

