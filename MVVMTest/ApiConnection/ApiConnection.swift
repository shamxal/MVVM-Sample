//
//  ApiConnection.swift
//  MVVMTest
//
//  Created by Shamkhal Guliyev on 11/12/18.
//  Copyright © 2018 Shamkhal Guliyev. All rights reserved.
//

import Foundation
import Alamofire

class ApiConnection: NSObject {
    
    static let shared = ApiConnection()
    
    func getListDatas(success: @escaping([Courses]) -> Void) {
        
        let url = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        
        Alamofire.request(url).responseData { response in
            guard let data = response.result.value else { return }
            
            do {
                success(try JSONDecoder().decode([Courses].self, from: data))
            } catch let err {
                print("Json error: \(err)")
            }
        }
    }
}
