//
//  CVActivityVC.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/13/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

class CVActivityVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
     //MARK: - Variables
     var nameTitle: String?
     var message: String?
     weak var viewParent: UIView!

     convenience init(title: String, message: String, view: UIView) {
         self.init(nibName:"CVActivityVC", bundle:.main)
         
         self.nameTitle = title
         self.message = message
         self.viewParent = view
         
         self.view.frame = self.viewParent.frame
         self.view.center = self.viewParent.center
     }
     
     deinit {
         print("denit CVActivityCV")
     }
     
    
     override func viewDidLoad() {
         super.viewDidLoad()
         setData()
     }
     
     private func setData(){
         lblTitle.text = self.nameTitle
         lblDescription.text = self.message
     }
     
     func showActivity(){
         UIView.transition(with: self.viewParent, duration: 0.5, options: .transitionCrossDissolve, animations: {
             self.viewParent.addSubview(self.view)
         }, completion: nil)
     }
     
     func removeActivity(){
         UIView.transition(with: self.viewParent, duration: 0.3, options: .transitionCrossDissolve, animations: {
             DispatchQueue.main.async {
                 self.view.removeFromSuperview()
                 self.view = nil;
             }
         }, completion: nil)
     }

}
