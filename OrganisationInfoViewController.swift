//
//  File.swift
//  test
//
//  Created by Max on 07.11.16.
//  Copyright © 2016 Max. All rights reserved.
//

import Foundation


class OrganisationInfoViewController: UIViewController
{
    var salarySum: Int32?
    var fetchedOrganisation: Organisation?
    
    override func viewDidLoad() {
     
    }
    
    
    @IBAction func calculateSumOfSalary(_ sender: UIButton)
    {
        salarySum = fetchedOrganisation!.calculateSumOfSalary()
        
        let alertController = UIAlertController(title: "Summary salary of all employees", message: "\(salarySum!)", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
