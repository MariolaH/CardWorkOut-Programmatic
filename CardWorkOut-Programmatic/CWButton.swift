//
//  CWButton.swift
//  CardWorkOut-Programmatic
//
//  Created by Mariola Hullings on 8/14/23.
//

import UIKit

class CWButton: UIButton {
    
    // initializer for custom button, overrides uibutton init
    override init(frame: CGRect) {
        super.init(frame: frame) //initilaze UIButtom get all UIButton functionality
        configure() //adding our own preferences for button
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        //frame needs to know constraints, ie height width etc
        //initialized frame with zero because going to get contraints in VC
        super.init(frame: .zero)
        //if parameter name is the same name asthe actual property on button need to put self before
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        // this means use autolayout
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
