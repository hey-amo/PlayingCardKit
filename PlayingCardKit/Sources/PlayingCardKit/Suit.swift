//
//  Suit.swift
//  PlayingCardKit
//
//  Created by Amarjit on 10/05/2025.
//


/// Enumeration: defines the suit of a traditional playing card.
public enum Suit: Character, CaseIterable {
    case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
}


// MARK: Comparison

/// An extension that allows comparisons between suits.
extension Suit: Comparable {
    public static func <(lhs: Suit, rhs: Suit) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.spades, _),
        (.hearts, .diamonds), (.hearts, .clubs),
        (.diamonds, .clubs):
            return false
        default:
            return true
        }
    }
}
