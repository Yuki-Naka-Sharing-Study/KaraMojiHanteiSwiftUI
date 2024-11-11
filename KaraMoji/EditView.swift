//
//  EditView.swift
//  KaraMoji
//
//  Created by Yuki Naka on 2024/11/11.
//

import SwiftUI

struct EditView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: EditViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 25) {
                    inputNameView()
                }
                .padding()
            }
            .background(Color.gray)
            .setNavigationTitle(viewModel.navigationTitle, .inline)
            .toolbar(content: toolbarContent)
        }
    }
    
    @ToolbarContentBuilder
    private func toolbarContent() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {
                dismiss()
            } label: {
                Image.xmark
            }
        }
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
            } label: {
                Text("完了")
            }
            .disabled(viewModel.isNameEmpty)
        }
    }
    
    /// 空文字判定
    @ViewBuilder
    private func inputNameView() -> some View {
        TextField("空文字判定をします。", text: $viewModel.inputNameText)
            .padding()
            .background(.white)
            .customCornerRadius()
    }
}

#Preview {
    EditView(viewModel: EditViewModel())
}
