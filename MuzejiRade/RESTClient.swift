//
//  RESTClient.swift
//  MuzejiRade
//
//  Created by Milos Kresovic on 4/14/17.
//  Copyright © 2017 attozoic. All rights reserved.
//

import Foundation
import Alamofire


class RESTClient {
    
    let ROOT = "http://muzejirade.com/wp-json/wp/v2/"
    let POSTS = "posts?_embed="
    
    func fireRequest() {
        Alamofire.request(ROOT).responseJSON { response in
            print(response.request!)  // original URL request
            print(response.response!) // HTTP URL response
            print(response.data!)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
    }
    }
}
