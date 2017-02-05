//
//  Ch02_Values.swift
//  Ch02_Values
//
//  Created by  HyunWoo Lee on 2017. 2. 5..
//  Copyright © 2017년  HyunWoo Lee. All rights reserved.
//

import XCTest

class Ch02_Values: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testString() {
        // 문자열
        // "안녕, Swift"
        
        // 빈 문자열
        // "", String()
        print("")
        print(String())
        
        // 문자열은 합할 수 있다.
        print("> 안녕, " + "Swift")
        
        // 여러 열(Multi-line) 문자열을 만드는 간편한 방법은 없다.
        // 단지 +로 더하는 방법을 사용할 수 있다.
        print(
            "> 길고 긴... 문자열 \n" +
            "길고 긴.... 문자열"
        )
        
        // 다른 타입과 합할 수는 없다
        // print("안녕, " + "Swift" + 3.0)
        
        // 먼저 문자열로 변환한 후 합한다.
        print ("> 안녕, " + "Swift " + String(3))
        print ("> 안녕, " + "Swift " + String(3.0))
    }
    
}
