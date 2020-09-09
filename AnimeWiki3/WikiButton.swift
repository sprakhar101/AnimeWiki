//
//  WikiButton.swift
//  AnimeWiki3
//
//  Created by Prakhar Saxena on 31/08/20.
//  Copyright © 2020 PrakharSaxena. All rights reserved.
//

import UIKit

class WikiButton: UIButton {
    
    var character = "Midoriya"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = .black
        titleLabel?.font.withSize(20)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: 250).isActive = true
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
