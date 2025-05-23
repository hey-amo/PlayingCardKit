//
//  Rank.swift
//  PlayingCardKit
//
//  Created by Amarjit on 10/05/2025.
//

/// Enumeration: Rank of a traditional playing card.
public enum Rank: Int, CaseIterable, Codable {
  case two = 2, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king, ace
}

// MARK: - Comparable

/// An extension that allows comparisons between ranks.
extension Rank: Comparable {
    public static func <(lhs: Rank, rhs: Rank) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.ace, _):
            return false
        default:
            return lhs.rawValue < rhs.rawValue
        }
    }
}

// MARK: - CustomStringConvertible

/// Human-readible description
extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default:
            return "\(rawValue)"
        }
    }
}
