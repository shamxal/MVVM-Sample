//
//  ViewController.swift
//  MVVMTest
//
//  Created by Shamkhal Guliyev on 11/8/18.
//  Copyright © 2018 Shamkhal Guliyev. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var tableList: UITableView!
    
    var coursesViewModel = CoursesViewModel()
    private var dataSource: TableViewDataSourceHelper<ListCell, Courses>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coursesViewModel.getDatas { courses in
            self.dataSource = TableViewDataSourceHelper(cellId: "ListCell", items: courses, configCell: { (cell, viewModel) in
                cell.lblTitle.text = viewModel.name
            })
            
            self.tableList.dataSource = self.dataSource
            self.tableList.reloadData()
        }
    }
}
