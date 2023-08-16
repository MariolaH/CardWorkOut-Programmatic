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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, systemImageName: String) {
        //frame needs to know constraints, ie height width etc
        //initialized frame with zero because going to get contraints in VC
        super.init(frame: .zero)
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        // this means use autolayout
        translatesAutoresizingMaskIntoConstraints = false
    }
}
