//
//  PlayingCard.swift
//  PlayingCardKit
//
//  Created by Amarjit on 10/05/2025.
//

/// A playing card has a rank and a suit, and can be compared to another playing card.
public struct PlayingCard: Equatable, Hashable {
    public let rank: Rank
    public let suit: Suit
}
