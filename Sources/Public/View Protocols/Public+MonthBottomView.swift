//
//  MonthBottomView.swift
//
//
//  Created by Ayşe Nur Bakıcı on 16.09.2024.
//

import SwiftUI

public protocol MonthBottomView: View {
    // MARK: Required Attributes
    var month: Date { get }

    // MARK: View Customisation
    func createContent() -> AnyView
}

// MARK: - Default View Implementation
public extension MonthBottomView {
    func createContent() -> AnyView { createDefaultContent().erased() }
}

private extension MonthBottomView {
    func createDefaultContent() -> some View {
        EmptyView()
    }
}

// MARK: - Helpers
public extension MonthBottomView {
    /// Returns a string of the selected format for the month.
    func getString(format: String) -> String { MDateFormatter.getString(from: month, format: format) }
}

// MARK: - Others
public extension MonthBottomView {
    var body: some View { createContent() }
}

