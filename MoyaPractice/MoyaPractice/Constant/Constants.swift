//
//  Constants.swift
//  MoyaPractice
//
//  Created by Bao on 11/20/17.
//  Copyright © 2017 ViBao. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.shared.delegate as! AppDelegate

struct LocalAPIConstants {
    struct HeaderParams {
        // Authorization
        static let Authorization: String = "Authorization"
        // Content-Type
        static let ContentType: String = "Content-Type"
        // Content-Type-Value
        static let ContentTypeValue: String = "application/json"
    }
    static let BaseURL: String = "https://api.letsbuildthatapp.com/jsondecodable"
}
