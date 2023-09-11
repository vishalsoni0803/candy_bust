//
//  appDetailsViewController.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 07/09/23.
//

import UIKit

class appDetailsViewController: UIViewController {
    
    // MARK: - VARIABLES
    
    var progress: Float = 0.0
    var timer : Timer?
   
    
    // MARK: - OUTLETS
    
    @IBOutlet weak var progressTopView: UIView!
    
    @IBOutlet weak var downloadBtn: UIButton!
    
    @IBOutlet weak var appDetailsCollectionView: UICollectionView!
    
    @IBOutlet weak var appIconImageView: UIImageView!
   
    @IBOutlet weak var progressMainView: UIView!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var stopBtnImage: UIImageView!
    
    @IBOutlet weak var stopBtnView: UIView!
    
    @IBOutlet weak var trellingConstent: NSLayoutConstraint!
    
    @IBOutlet weak var playBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
        appIconImageView.layer.cornerRadius = 10
        
        
        progressTopView.layer.cornerRadius = progressTopView.frame.height/4
        trellingConstent.constant = 0
        
        stopBtnView.isHidden = true
        
    }
    
    // MARK: - ACTIONS
    
    
    @IBAction func downloadButton(_ sender: UIButton) {
        
        progressView.setProgress(progress, animated: true)
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.updateProgrerss), userInfo: nil, repeats: true)
        
        trellingConstent.constant = 50
        stopBtnView.isHidden = false
        
        stopBtnImage.image = UIImage(named:"remove")
        progressView.backgroundColor = .clear
        
    }
    
    @objc func updateProgrerss(){
        progress = progress + 0.01
        
        
        progressView.progress = progress
        
        
        if progress >= 1 {
            timer?.invalidate()
            timer = nil
            
            stopBtnImage.image = UIImage(named:"correct")
            
            changeImageTimer()
            
        }
        
    }
    
    
    @IBAction func playButton(_ sender: UIButton) {
        let animationVc = self.storyboard?.instantiateViewController(identifier: "animationViewController") as! animationViewController
        
        animationVc.modalPresentationStyle = .overFullScreen
        
        
        animationVc.modalTransitionStyle = .coverVertical
        
        present(animationVc, animated: true)
       
        
        
    }
   
    
    // MARK: - FUNCTIONS
    
    func changeImageTimer(){
        Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: false)
    }
    
    @objc func changeImage(){
        
       
        stopBtnView.isHidden = true
        progressTopView.isHidden = true
        playBtn.isHidden = false
        playBtn.setTitle("PLAY", for: .normal)
        playBtn.backgroundColor = .blue
        downloadBtn.isHidden = true
        playBtn.layer.cornerRadius = 20
        playBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        playBtn.setTitleColor(UIColor.white, for: .normal)
        
        
    }
    
    
    // MARK: - ACTIONS
    
    @IBAction func crossBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func stopProgressBtn(_ sender: UIButton) {
        if progress >= 1{
            return
        }
       
        timer?.invalidate()
        timer = nil
        
        progress = 0
        progressView.progress = progress
       
       
        trellingConstent.constant = 5
        stopBtnView.isHidden = true
        
        progressView.backgroundColor = .systemGreen
       
    }
    
}


// MARK: - COLLECTION-VIEW


extension appDetailsViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "appDetailsCollectionViewCell", for: indexPath) as! appDetailsCollectionViewCell
        
        return cell
        
    }
    
}

