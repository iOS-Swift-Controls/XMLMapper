//
//  TestXMLMappable.swift
//  XMLMapper
//
//  Created by Giorgos Charitakis on 14/09/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import XMLMapper

class TestXMLMappable: XMLMappable {
    var nodeName: String!
    
    var testElement: TestElementXMLMappable!
    
    required init(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        testElement <- map["TestElementXMLMappable"]
    }
}

enum EnumTest: String {
    case theEnumValue = "enumValue"
}

class TestElementXMLMappable: XMLMappable {
    var nodeName: String!
    
    var testString: String?
    var testBoolAndAttribute: TestBoolAndAttribute?
    var testAttribute: EnumTest?
    var testList: [Element]?
    var testCDATA: [Data]?
    
    required init(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        testString <- map["testString"]
        testBoolAndAttribute <- map["testBoolAndAttribute"]
        testAttribute <- map.attributes["testAttribute"]
        testList <- map["testList.element"]
        testCDATA <- map["testCDATA"]
    }
}

class Element: XMLMappable {
    var nodeName: String!
    
    var testInt: Int?
    var testDouble: Float?
    
    required init(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        testInt <- map["testInt"]
        testDouble <- map["testDouble"]
    }
}

class TestBoolAndAttribute: XMLMappable {
    var nodeName: String!
    
    var boolValue: Bool?
    var testAttribute: String?
    
    required init(map: XMLMap) {
        
    }
    
    func mapping(map: XMLMap) {
        boolValue <- map.innerText
        testAttribute <- map.attributes["testAttribute"]
    }
}
