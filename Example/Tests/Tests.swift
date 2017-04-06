import UIKit
import XCTest
import TLCustomMask

class Tests: XCTestCase {
    var customMask : TLCustomMask?
    var customMask2 : TLCustomMask?
    var customMaskEmpty : TLCustomMask?
    var customMaskEmpty2 : TLCustomMask?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        customMask = TLCustomMask(formattingPattern: "$$$-$$")
        customMask2 = TLCustomMask(formattingPattern: "***-**")
        customMaskEmpty = TLCustomMask(formattingPattern: "")
        customMaskEmpty2 = TLCustomMask()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNoMatches(){
        var string : String
        string = (customMask?.formatString(string: "abcdefg"))!
        XCTAssertTrue(string == "")
        
        string = (customMask2?.formatString(string: "123456"))!
        XCTAssertTrue(string == "")
    }
    
    func testOnlyNumbers() {
        // This is an example of a functional test case.
        var string : String
        
        string = (customMask?.formatString(string: "123456"))!
        XCTAssertTrue(string == "123-45")
        
        string = (customMask?.formatString(string: "abc123456"))!
        XCTAssertTrue(string == "123-45")
        
        string = (customMask?.formatString(string: "123abc456"))!
        XCTAssertTrue(string == "123-45")
        
        string = (customMask?.formatString(string: "123456abc"))!
        XCTAssertTrue(string == "123-45")
        
    }
    
    func testOnlyStrings(){
        var string : String
        
        string = (customMask2?.formatString(string: "abcdef"))!
        XCTAssertTrue(string == "abc-de")
        
        string = (customMask2?.formatString(string: "123abcdef"))!
        XCTAssertTrue(string == "abc-de")
        
        string = (customMask2?.formatString(string: "abc123def"))!
        XCTAssertTrue(string == "abc-de")
        
        string = (customMask2?.formatString(string: "abcdef123"))!
        XCTAssertTrue(string == "abc-de")
    }
    
    func testPatternGreaterThanString(){
        var string : String
        string = (customMask?.formatString(string: "123"))!
        XCTAssertTrue(string == "123")
        string = (customMask?.formatString(string: "1234"))!
        XCTAssertTrue(string == "123-4")
        
        string = (customMask2?.formatString(string: "abc"))!
        XCTAssertTrue(string == "abc")
        string = (customMask2?.formatString(string: "abcd"))!
        XCTAssertTrue(string == "abc-d")
    }
    
    func testStringGreaterThanPattern(){
        var string : String
        string = (customMask?.formatString(string: "1234567891"))!
        XCTAssertTrue(string == "123-45")
        
        string = (customMask2?.formatString(string: "abcdefghi"))!
        XCTAssertTrue(string == "abc-de")
    }
    
    func testEmptyString(){
        var string : String
        string = (customMask?.formatString(string: ""))!
        XCTAssertTrue(string == "")
        
        string = (customMask2?.formatString(string: ""))!
        XCTAssertTrue(string == "")
    }
    
    func testEmptyMask(){
        var string : String
        string = (customMaskEmpty?.formatString(string: "123456"))!
        XCTAssertTrue(string == "123456")
        
        string = (customMaskEmpty?.formatString(string: ""))!
        XCTAssertTrue(string == "")
        
        string = (customMaskEmpty2?.formatString(string: "123456"))!
        XCTAssertTrue(string == "123456")
        
        string = (customMaskEmpty2?.formatString(string: ""))!
        XCTAssertTrue(string == "")
    }
    
    func testRepeatedString(){
        var string : String
        string = (customMask?.formatString(string: "1111111"))!
        XCTAssertTrue(string == "111-11")
        
        string = (customMask2?.formatString(string: "aaaaaaaa"))!
        XCTAssertTrue(string == "aaa-aa")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
