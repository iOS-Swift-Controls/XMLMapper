//
//  ViewController.swift
//  XMLMapper
//
//  Created by gcharita on 09/14/2017.
//  Copyright (c) 2017 gcharita. All rights reserved.
//

import UIKit
import XMLMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let object = XMLMapper<TestXMLMappable>().map(XMLfile: "basic_test.xml")
        print(object?.testElement.testAttribute ?? "nil")
        print(object?.toXMLString() ?? "nil")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

