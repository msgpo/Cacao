//
//  FontTests.swift
//  Cacao
//
//  Created by Alsey Coleman Miller on 5/31/16.
//  Copyright © 2016 PureSwift. All rights reserved.
//

import XCTest
import Cacao

final class FontTests: XCTestCase {
    
    static let allTests = [("testCreateFont", testCreateFont),
                           ("Load System Font", testSystemFonts),
                           ("Load Bold System Font", testBoldSystemFonts)
    ]
    
    func testCreateFont() {
        
        let fontNames = [
            ("MicrosoftSansSerif", "Microsoft Sans Serif"),
            ("MicrosoftSansSerif-Bold", "Microsoft Sans Serif"),
            ("TimesNewRoman", "Times New Roman"),
            ("TimesNewRoman-Bold", "Times New Roman")
        ]
        
        for (fontName, expectedFullName) in fontNames {
            
            guard let font = UIFont(name: fontName, size: 17)
                else { XCTFail("Could not create font"); return }
            
            XCTAssert(fontName == font.fontName, "\(expectedFullName) == \(fontName)")
        }
    }
    
    func testSystemFonts() {
        UIFont.systemFont(ofSize: 12.0)
    }
    
    func testBoldSystemFonts() {
        UIFont.boldSystemFont(ofSize: 12.0)
    }
}
