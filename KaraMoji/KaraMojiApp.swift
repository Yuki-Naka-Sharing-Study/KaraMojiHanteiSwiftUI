//
//  KaraMojiApp.swift
//  KaraMoji
//
//  Created by Yuki Naka on 2024/11/11.
//

import SwiftUI

@main
struct KaraMojiApp: App {
    var body: some Scene {
        WindowGroup {
            EditView(viewModel: EditViewModel())
        }
    }
}
