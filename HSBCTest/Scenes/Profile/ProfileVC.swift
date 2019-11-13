//
//  ProfileVC.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    //MARK: - IBOutlets

    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRolName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var tvSummary: UITextView!
    
    //MARK: - Variables
    var arrDataJobs = [workExperience]()
    let JobVCBar    = 1
    
    //MARK: - ViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        tvSummary.layer.borderWidth = 0.25
        tvSummary.layer.borderColor = UIColor.lightGray.cgColor
        performSelector(inBackground: #selector(callCVService), with: nil)

    }
    
    
    //MARK: - Funtions
    
    /**
    Invoque web service to download resume data.
    */
     @objc func callCVService(){
        
        let url = URL(string: Endpoints.cvData)
        self.showActivity(aTitle: "Wait", aMessage: "Downloading data")
        
        ServiceConnection.getResponse(url: url!, completion: { [unowned self] (data) in
            
            self.setData(data: data)
            self.dismissActivity()
            
        }) { (error) in
            
            self.showError(error)
            
        }
    }
    
    /**
      Set data achive in each UIComponent.
      */
    func setData(data: data){
        
        DispatchQueue.main.async {

            self.arrDataJobs        = data.workExperience;
            self.ivProfile.image    = data.profileImage.base64ToImage()
            self.lblName.text       = data.name
            self.lblRolName.text    = data.rolName
            self.lblAge.text        = "\(data.age) years"
            self.lblEmail.text      = data.email
            self.tvSummary.text     = data.summary
            
            let jobVC = self.tabBarController?.viewControllers?[self.JobVCBar] as! JobsVC
            jobVC.arrDataJobs = self.arrDataJobs
            
        }
    }
}
