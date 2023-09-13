//
// Either+SwfitUI.swift
//
// Created by Andreas in 2021
//

#if canImport(SwiftUI)

import SwiftUI

extension Either: View where Left: View, Right: View {
    public var body: some View {
        switch self {
        case let .left(view):
            view
        case let .right(view):
            view
        }
    }
}

extension Either: Identifiable where Left: Identifiable, Right: Identifiable, Left.ID == Right.ID {
    public var id: Left.ID {
        fold(left: \.id, right: \.id)
    }
}

#endif
