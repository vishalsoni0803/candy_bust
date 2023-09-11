//
//  animationViewController.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 09/09/23.
//

import UIKit

class animationViewController: UIViewController {
    
    // MARK: - OUTLETS
    
    
    @IBOutlet weak var upperView: UIView!
    
    @IBOutlet weak var circle1: UIImageView!
    
    @IBOutlet weak var circle2: UIImageView!
    
    @IBOutlet weak var viewFirst: UIView!
    
    @IBOutlet weak var viewSecond: UIView!
    
    @IBOutlet weak var firstCircleBottomFirstView: UIView!
    
    @IBOutlet weak var firstCircleBottomSecondView: UIView!
    
    @IBOutlet weak var secondCircleFirstView: UIView!
 
    @IBOutlet weak var secondCircleSecondView: UIView!
    
    @IBOutlet weak var newView11: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var newView: UIView!

    @IBOutlet weak var newCircle1: UIImageView!
    
    @IBOutlet weak var newView1: UIView!
   
    @IBOutlet weak var newCircle2: UIImageView!
    
    @IBOutlet weak var newView2: UIView!
    
    @IBOutlet weak var newView22: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.layer.cornerRadius = 20
        
    
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AnimateFirstView()
    }
    
    // MARK: - ACTION
    
    @IBAction func nextBtn(_ sender: UIButton) {
        
        let chhoseBalanceVc = self.storyboard?.instantiateViewController(identifier: "chooseBalanceViewController") as! chooseBalanceViewController
        
        
        
        chhoseBalanceVc.modalPresentationStyle = .overFullScreen
        
        
        chhoseBalanceVc.modalTransitionStyle = .crossDissolve
        
        present(chhoseBalanceVc, animated: true)
        
        
    }
   
    // MARK: - FUNCTION
    
    
    func AnimateFirstView(){

        UIView.animate(withDuration: 1) {
            self.newView.center = self.upperView.center
            self.newCircle1.center = self.circle1.center
            self.newView1.center = self.firstCircleBottomFirstView.center
            self.newView11.center = self.firstCircleBottomSecondView.center
            
            self.newCircle2.center = self.circle2.center
            self.newView2.center = self.secondCircleFirstView.center
            self.newView22.center = self.secondCircleSecondView.center
        }


    }

    @IBAction func backScreenBtn(_ sender: UIButton) {
        
       dismiss(animated: true)
    }
    
}
