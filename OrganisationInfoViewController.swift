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
    var salarySum = 0;
    
    var fetchedOrganisation = [Organisation]()
    
    override func viewDidLoad() {
       // var fetchedOrganisation = [Organisation]()
        
     fetchedOrganisation = (DatabaseController.requestResults(for: nil, sortDescriptors: nil, entity: "Organisation", from: (DatabaseController.sharedInstance().context)) as! [Organisation])
     
    }
    
    
    @IBAction func calculateSumOfSalary(_ sender: UIButton)
    {
        /// Organisation *editedOrganisation = fetchedOrganisation.firstObject
        //for
//        salarySum = fetchedOrganisation[0].calculateSumOfSalary()
//        print("Sum is \(fetchedOrganisation)");
    }
    
}
