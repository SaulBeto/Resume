//
//  ServiceConnection.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import Foundation

class ServiceConnection {
    
    
    /**
    Completion to make a Request to achive resume data.
    - Parameters:
        - url: The url to get de data.
        - completion: Return resume data.
        - completionError: Returns an error if  exist.
    */

    static func getResponse(url: URL, completion: @escaping (data) -> Void, completionError: @escaping(Error) -> Void){
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.timeoutInterval = 10
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { (dataRequest, request, errorRequest) in
            if let error = errorRequest{
                
                completionError(error)
                
            }else if let jsonData = dataRequest{
                do{
                    guard let responseObj = try? JSONDecoder().decode(info.self, from: jsonData) else { return}
                    
                    if let response = responseObj.data{
                        completion(response)
                    }
                }
            }
        }
        
        task.resume()
    }
}
