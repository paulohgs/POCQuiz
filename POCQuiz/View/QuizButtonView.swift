//
//  QuizView.swift
//  POCQuiz
//
//  Created by Gabriel Santiago on 24/11/22.
//

import UIKit

class QuizButtonView: UIView {
    
    var didTapOnButtonHandler: (() -> Void)?
    
    lazy var startQuizButton = make(UIButton()) {
        $0.configuration = .bordered()
        $0.addTarget(self, action: #selector(QuizButtonView.navigationButton), for: .touchUpInside)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 10
        $0.setTitle("Ir para quiz", for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func navigationButton() {
        didTapOnButtonHandler?()
    }
}

extension QuizButtonView: ViewCoding {
    func setupView() {
        backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {

        addSubview(startQuizButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            startQuizButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            startQuizButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            startQuizButton.heightAnchor.constraint(equalToConstant: 35),
            startQuizButton.widthAnchor.constraint(equalToConstant: 160)
        ])
    }
}
