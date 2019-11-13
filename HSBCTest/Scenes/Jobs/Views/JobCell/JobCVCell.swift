//
//  JobCVCell.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

class JobCVCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var ivLogo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblRolName: UILabel!
    @IBOutlet weak var lblDateFromTo: UILabel!
    @IBOutlet weak var lblResponsabilities: UILabel!
    
    //MARK: - Variables

    static let cellIdentifier = "cellJob"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor    = UIColor.clear
        self.clipsToBounds      = true
        self.layer.cornerRadius = 5
    }
    
    //MARK: - Funtions
    
    func configWorkExperience(dataWE: workExperience){
        
        ivLogo.image                = dataWE.logo.base64ToImage()
        lblCompanyName.text         = dataWE.companyName
        lblRolName.text             = dataWE.rol
        lblDateFromTo.text          = "\(dataWE.dateFrom) - \(dataWE.dateTo)"
        lblResponsabilities.text    = dataWE.responsabilities
    }
    
}
