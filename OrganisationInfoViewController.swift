//
//  File.swift
//  test
//
//  Created by Max on 07.11.16.
//  Copyright © 2016 Max. All rights reserved.
//

import Foundation
extension MutableCollection where Indices.Iterator.Element == Index {
    /// Shuffles the contents of this collection.
    mutating func shuffle()
    {
        let c = count
        guard c > 1 else { return }
        
        for (unshuffledCount, firstUnshuffled) in zip(stride(from: c, to: 1, by: -1), indices)
        {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            swap(&self[firstUnshuffled], &self[i])
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

class OrganisationInfoViewController: UIViewController
{
    let kEmployeesOrderHasChanged = "Changed"
    
    var fetchedOrganisation: Organisation!
    
    @IBAction func calculateSumOfSalary(_ sender: UIButton)
    {
        var salarySum: Int32?
        salarySum = self.fetchedOrganisation.calculateSumOfSalary()
        
        let alertController = UIAlertController(title: "Summary salary of all employees", message: "\(salarySum!)", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func randomizeOrder(_ sender: UIButton)
    {
        for (index,employee) in self.fetchedOrganisation.employees!.shuffled().enumerated()
        {
            employee.order = Int32(index)
        }
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: kEmployeesOrderHasChanged), object: nil)
    }
}
