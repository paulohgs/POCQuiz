//
//  Utils.swift
//  POCQuiz
//
//  Created by Paulo Henrique Gomes da Silva on 24/11/22.
//

import UIKit

func make<T: UIView>(_ uiView: T, _ configure: (T) -> Void) -> T {
    configure(uiView)
    return uiView
}
