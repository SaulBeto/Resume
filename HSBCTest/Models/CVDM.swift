//
//  CVDM.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import Foundation

struct info: Decodable{
    var data: data?
}

struct data: Decodable {
    
    var summary: String
    var skills : String
    var name: String
    var age: Int
    var rolName: String
    var email: String
    var workExperience: [workExperience]
    var hobbies: String
    var profileImage: String
    
}

struct workExperience: Decodable {
    
    var companyName: String
    var logo: String
    var rol: String
    var dateFrom: String
    var dateTo: String
    var responsabilities: String
}
