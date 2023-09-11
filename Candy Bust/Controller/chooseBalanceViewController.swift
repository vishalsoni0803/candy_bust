//
//  chooseBalanceViewController.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 09/09/23.
//

import UIKit

class chooseBalanceViewController: UIViewController {
    
    // MARK: - OUTLETS
    
    @IBOutlet weak var upperViewNew: UIView!
    
    
    @IBOutlet weak var lowerView: UIView!
    @IBOutlet weak var lowerViewNew: UIView!
    
    @IBOutlet weak var firstCircleView: UIView!
    @IBOutlet weak var firstCircleNew: UIView!
    
    
    @IBOutlet weak var secondCircleVIew: UIView!
    @IBOutlet weak var secondCircleViewNew: UIView!
    
    @IBOutlet weak var thirdCircleView: UIView!
    @IBOutlet weak var thirdCircleViewNew: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 20
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AnimateFirstView()
    }
    
    
    // MARK: - ACTIONS
    
    @IBAction func nextBtn(_ sender: UIButton) {
        let playVc = self.storyboard?.instantiateViewController(identifier: "playViewController") as! playViewController
      
        
        playVc.modalPresentationStyle = .overFullScreen
        playVc.modalTransitionStyle = .crossDissolve
        
        present(playVc, animated: true)
        
    }
    
    // MARK: - FUNCTIONS
    
    func AnimateFirstView(){
        
        UIView.animate(withDuration: 1) {
            // self.upperViewNew.contentScaleFactor = 2
            
            self.upperViewNew.transform = CGAffineTransformMakeScale(10,10)
            self.firstCircleNew.center = self.firstCircleView.center
            self.secondCircleViewNew.center = self.secondCircleVIew.center
            self.thirdCircleViewNew.center = self.thirdCircleView.center
        }
    }
    
    @IBAction func backScreenBtn(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
}
