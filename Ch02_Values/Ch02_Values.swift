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
        
        print("======== {")
    }
    
    override func tearDown() {
        super.tearDown()
        
        print("======== }")
    }
    
    func testString() {
        // 문자열
        // "안녕, Swift"
        
        // 빈 문자열
        // "", String()
        print("")
        print(String())
        
        // 문자열은 합할 수 있다.
        print("testString> 안녕, " + "Swift")
        
        // 여러 열(Multi-line) 문자열을 만드는 간편한 방법은 없다.
        // 단지 +로 더하는 방법을 사용할 수 있다.
        print(
            "testString> 길고 긴... 문자열 \n" +
            "길고 긴.... 문자열"
        )
        
        // Unicode 문자
        print("testString> I \u{2665} Swift")
        
        // 다른 타입과 합할 수는 없다
        // print("안녕, " + "Swift" + 3.0)
        
        // 먼저 문자열로 변환한 후 합한다.
        print ("testString> 안녕, " + "Swift " + String(3))
        print ("testString> 안녕, " + "Swift " + String(3.0))
        
        // Count chars
        print("012345".characters.count)
    }

    
    func testStringSplit() {
        let mystr = "Colum1, Columm2, Column3"
        
        print(mystr.components(separatedBy: ","))
        print(mystr.components(separatedBy: [",", " "]))
        print(mystr.components(separatedBy: .whitespacesAndNewlines))
    }
    
    func testStringTrim() {
        let mystr = "  \t 1234567  "
        
        // String Trimming
        print("testStringTrim> |" + mystr.trimmingCharacters(in: .whitespacesAndNewlines) + "|")
    }
    
    func testStringIndex() {
        let mystr = "abcdefghijklm"
        
        print(mystr[mystr.startIndex])
        
        // 다음과 같이 영역을 벋어난 경우는 에러이다.
        //print(mystr[mystr.endIndex])
        
        print(mystr[mystr.index(before:mystr.endIndex)])
        
        print("testStringIndex> " + mystr.substring(to: mystr.endIndex))
        print("testStringIndex> " + mystr.substring(from: mystr.startIndex))
        
        print("testStringIndex> to 5: " + mystr.substring(to: mystr.index(mystr.startIndex, offsetBy: 5)))
        print("testStringIndex> from 5: " + mystr.substring(from: mystr.index(mystr.startIndex, offsetBy: 5)))
        
        // 아래의 String Extentions을 사용한 예
        print("testStringIndex> " + mystr.substring(from: 7))
        print("testStringIndex> " + mystr.substring(to: 5))
        print("testStringIndex> " + mystr.substring(with: 7..<11))
    }
}

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    
    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return substring(from: fromIndex)
    }
    
    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return substring(to: toIndex)
    }
    
    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return substring(with: startIndex..<endIndex)
    }
}
