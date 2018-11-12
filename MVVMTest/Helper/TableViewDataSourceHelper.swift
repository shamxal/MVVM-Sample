//
//  TableViewDataSourceHelper.swift
//  MVVMTest
//
//  Created by Shamkhal Guliyev on 11/12/18.
//  Copyright © 2018 Shamkhal Guliyev. All rights reserved.
//

import UIKit
import Foundation

class TableViewDataSourceHelper <Cell: UITableViewCell, ViewModel>: NSObject, UITableViewDataSource {
    
    private var cellId: String!
    private var items: [ViewModel]!
    var configureCell: (Cell, ViewModel) -> ()
    
    init(cellId: String, items: [ViewModel], configCell: @escaping(Cell, ViewModel) -> ()) {
        self.cellId = cellId
        self.items = items
        self.configureCell = configCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! Cell
        
        configureCell(cell, items[indexPath.row])
        
        return cell
    }
}
