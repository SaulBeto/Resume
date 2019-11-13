//
//  JobsVC-CollectionView-Extension.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/13/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

/**
  Extension that has Delegate, DataSource and DelegateFlowLayout of CollectionView
  */

extension JobsVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDataJobs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JobCVCell.cellIdentifier, for: indexPath) as? JobCVCell{
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = cell as? JobCVCell{
            cell.configWorkExperience(dataWE: arrDataJobs[indexPath.row])
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 130)
    }
    
}
