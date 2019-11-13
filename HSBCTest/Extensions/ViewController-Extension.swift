//
//  ViewController-Extension.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/13/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit
extension UIViewController{
    
    /**
    Show a view of CVActivityVC on ViewController  like an alert with certain data.
    - Parameters:
        - aTitle: Title of alert.
        - aMessage: Short message of alert.
    */
    func showActivity(aTitle:String, aMessage: String){
        DispatchQueue.main.async {
            cvActivity =  CVActivityVC(title: aTitle, message: aMessage, view: self.view)
            cvActivity.showActivity()
        }
    }
    
    /**
    Dissmis a  view of  CVActivityVC showing an error message.
    - Parameters:
        - e: error to show in alert.
    */
    func showError(_ e:Error){
        DispatchQueue.main.async {
            cvActivity.removeActivity()
            cvActivity = nil
            self.basicWithTitle(title: "Error", msg: e.localizedDescription)
        }
    }
    
    /**
    Dissmis a  view created  of  CVActivityVC .
    */
    func dismissActivity(){
        DispatchQueue.main.async {
            cvActivity.removeActivity()
            cvActivity = nil
        }
    }
    
    /**
     Show an alert with a title and a short message.
    - Parameters:
        - aTitle: Title of alert.
        - msg: Short message of alert.
    */
    func basicWithTitle(title: String, msg:String)  {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Accept", style: .default))
        
        self.present(alert, animated: true)
    }
    
    /**
     Show an alert wiht a short message.
    - Parameters:
        - msg: Short message of alert.
    */
    func basic( msg:String)  {
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Accept", style: .default))
        
        self.present(alert, animated: true)
    }
    
}


