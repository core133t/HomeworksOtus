//
//  LabelView+Representable.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 08.11.2023.
//

import SwiftUI

struct LabelView: UIViewRepresentable {
    typealias UIViewType = UILabel
    
    var attributedText: NSAttributedString
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        label.textAlignment = .justified
        label.allowsDefaultTighteningForTruncation = true
        label.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        label.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        label.clipsToBounds = true
        
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.attributedText = attributedText
    }
}

