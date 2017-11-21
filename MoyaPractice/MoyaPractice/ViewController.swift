//
//  ViewController.swift
//  MoyaPractice
//
//  Created by Bao on 11/20/17.
//  Copyright © 2017 ViBao. All rights reserved.
//

import UIKit
import Moya

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Functions
    func fetchData() {
        let provider = MoyaProvider<CourseProvider>()
        provider.request(.getCourses()) { (result) in
            print(result)
            switch result {
            case let .success(moyaResponse):
                //print(moyaResponse)
                do {
                    let jsonData = try JSONDecoder().decode([CourseModel].self, from: moyaResponse.data)
                    print(jsonData)
                } catch let error {
                    print(error)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}

