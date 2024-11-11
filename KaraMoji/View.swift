//
//  View+.swift
//  Ajitsuke
//
//  Created by Yuki Naka on 2024/11/11.
//

import SwiftUI

extension View {
    /// 角丸
    @ViewBuilder
    func customCornerRadius(corner: Int = 10) -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: CGFloat(corner)))
    }
    
    /// navigationTitleのセット
    @ViewBuilder
    func setNavigationTitle(
        _ title: String,
        _ displayMode: NavigationBarItem.TitleDisplayMode = .automatic
    ) -> some View {
        self
            .navigationBarTitle(title)
            .navigationBarTitleDisplayMode(displayMode)
    }
}
