//
//  CourseModel.swift
//  MoyaPractice
//
//  Created by Bao on 11/21/17.
//  Copyright © 2017 ViBao. All rights reserved.
//

import Foundation

struct CourseModel: Decodable {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
}
