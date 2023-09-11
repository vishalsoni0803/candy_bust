//
//  playViewController.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 09/09/23.
//

import UIKit

class playViewController: UIViewController {
    
    // MARK: - OUTLETS
    
    
    @IBOutlet weak var readyToPlayLbl: UILabel!
    @IBOutlet weak var oswaldLbl: UILabel!
    
    @IBOutlet weak var firstCircleView: UIView!
    @IBOutlet weak var firstCircleViewNew: UIView!
    
    
    @IBOutlet weak var secondCircleView: UIView!
    
    @IBOutlet weak var secondCircleViewNew: UIView!
    
    
    @IBOutlet weak var thirdCircleView: UIView!
    
    @IBOutlet weak var thirdCircleViewNew: UIView!
    
    @IBOutlet weak var confirmButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.readyToPlayLbl.transform = CGAffineTransformMakeScale(0.1,0.1)
        
        self.oswaldLbl.transform = CGAffineTransformMakeScale(0.1,0.1)
        
        confirmButton.layer.cornerRadius = 20
        
    }
    override func viewDidAppear(_ animated: Bool) {
        AnimateFirstView()
    }
    
    // MARK: - FUNCTION
    
    func AnimateFirstView(){
        
        UIView.animate(withDuration: 1) {
            
            
            
            self.readyToPlayLbl.transform = CGAffineTransformMakeScale(1,1)
            
            self.oswaldLbl.transform = CGAffineTransformMakeScale(1,1)
            
            self.firstCircleViewNew.center = self.firstCircleView.center
            self.secondCircleViewNew.center = self.secondCircleView.center
            self.thirdCircleViewNew.center = self.thirdCircleView.center
        }
    }
    
    @IBAction func backScreenBtn(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
