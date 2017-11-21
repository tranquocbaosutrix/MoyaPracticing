//
//  CourseProvider.swift
//  MoyaPractice
//
//  Created by Bao on 11/21/17.
//  Copyright © 2017 ViBao. All rights reserved.
//

import Foundation
import Moya

public enum CourseProvider {
    case getCourses()
}

extension CourseProvider: TargetType {
    public var baseURL: URL {
        return URL(string: LocalAPIConstants.BaseURL)!
    }
    
    public var path: String {
        switch self {
        case .getCourses():
            return "/courses"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        switch self {
        case .getCourses():
            return "[{\"id\": 1}]".data(using: .utf8)!
        }
    }
    
    public var task: Task {
        switch self {
        case .getCourses():
            return .requestPlain
        }
    }
    
    public var headers: [String : String]? {
        return nil
    }
    
}
