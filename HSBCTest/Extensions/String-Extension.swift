//
//  String-Extension.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/13/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

extension String {
    
    /**
    Covert base64 to an image.
     
    - Returns: An image `recipient`.
    */
    func base64ToImage() -> UIImage? {

        if let imageData = Data(base64Encoded: self, options: Data.Base64DecodingOptions.ignoreUnknownCharacters){
            return UIImage(data: imageData)

        }
        return nil
    }
}
