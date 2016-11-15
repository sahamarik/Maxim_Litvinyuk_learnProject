//
//  RequestManager.swift
//  test
//
//  Created by Max on 09.11.16.
//  Copyright © 2016 Max. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager: NSObject
{    
    class func fetchOrganisations(completion: @escaping ([String : AnyObject]) -> ())
    {
        let url = "http://gitlab.faifly.com/ios-general/ios-tutorial/uploads/75727472327ca7b210bb1d904438a2d7/tutorial.json"
        Alamofire.request(url).responseJSON{(response) in
            if let JSON = response.result.value
            {
                completion(JSON as! [String : AnyObject])
            }       
        }
    }
}
