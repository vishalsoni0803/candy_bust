//
//  ViewController.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 07/09/23.
//

import UIKit

class homeViewController: UIViewController {

  // MARK: - OUTLETS
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - ACTION
    
    
    @IBAction func nextPageBtn(_ sender: UIButton) {
        
        let appDetailVc = self.storyboard?.instantiateViewController(identifier: "appDetailsViewController") as! appDetailsViewController
        self.navigationController?.pushViewController(appDetailVc, animated: true)
        
        
    }
    
}

// MARK: - TABLE-VIEW


extension homeViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.detailView.layer.cornerRadius = 10
        cell.imgView.layer.cornerRadius = 10
        cell.nextButton.layer.cornerRadius = 20
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        450
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myTableView.deselectRow(at: indexPath, animated: false)
        
        let appDetailVc = self.storyboard?.instantiateViewController(identifier: "appDetailsViewController") as! appDetailsViewController
        self.navigationController?.pushViewController(appDetailVc, animated: true)
      
    }
   
}
