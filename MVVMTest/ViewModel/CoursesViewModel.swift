//
//  DescriptionViewModel.swift
//  MVVMTest
//
//  Created by Shamkhal Guliyev on 11/12/18.
//  Copyright © 2018 Shamkhal Guliyev. All rights reserved.
//

import Foundation

class CoursesViewModel: NSObject {
    
    override init() {
        super.init()
    }
    
    func getDatas(success: @escaping ([Courses])-> Void) {
        ApiConnection.shared.getListDatas { response in
            success(response)
        }
    }
}
