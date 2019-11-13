//
//  JobsVC.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

class JobsVC: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var cvJobs: UICollectionView!
    
    //MARK: - Variables
    
    var arrDataJobs = [workExperience]()


    //MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }
    
    //MARK: - Funtions
    
    
    func setUpCollectionView(){
        
        cvJobs.delegate     = self
        cvJobs.dataSource   = self
        cvJobs.register(UINib(nibName: "JobCVCell", bundle: Bundle.main), forCellWithReuseIdentifier: JobCVCell.cellIdentifier)
    }
    
}
