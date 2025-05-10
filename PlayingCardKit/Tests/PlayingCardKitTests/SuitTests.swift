//
//  SuitTests.swift
//  PlayingCardKit
//
//  Created by Amarjit on 10/05/2025.
//

import XCTest
@testable import PlayingCardKit

final class SuitTests: XCTestCase {
    func testSuitStringEquality() {
        XCTAssertEqual(String(describing: Suit.spades), "♠︎")
        XCTAssertEqual(String(describing: Suit.hearts), "♡")
        XCTAssertEqual(String(describing: Suit.diamonds), "♢")
        XCTAssertEqual(String(describing: Suit.clubs), "♣︎")
    }
    
    func testSuitComparable() {
        XCTAssertGreaterThan(Suit.spades, Suit.diamonds)
        XCTAssertGreaterThan(Suit.hearts, Suit.diamonds )
        XCTAssertGreaterThan(Suit.hearts, Suit.clubs)
        XCTAssertGreaterThan(Suit.diamonds, Suit.clubs)
    }
}
