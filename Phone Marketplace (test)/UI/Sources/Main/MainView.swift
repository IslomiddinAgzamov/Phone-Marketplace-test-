//
//  MainView.swift
//  Phone Marketplace (test)
//
//  Created by Islomiddin on 08/12/22.
//

import UIKit
import NYKit

class MainView: NYView {

    let locationStack = NYStackView(axis: .horizontal, distribution: .fill, alignment: .fill, spacing: 10)
    let locationImage = NYImageView(image: UIImage(named: "location"), cornerRadius: 0, contentMode: .scaleAspectFit)
    let locationLable = NYLabel("Zihuatanejo, Gro", font: .markPro(ofSize: 15, weight: .medium), textColor: Colors.customDark, textAlignment: .center)
    let locationButton = NYButton.systemButton(image: UIImage(named: "ic_down"))
    
    let filterButton = NYButton.systemButton(image: UIImage(named: "filter"))
    
    override func style() {
        super.style()
        backgroundColor = .white
    }
    
    override func setupSubviews() {
        super.setupSubviews()
        
        addSubview(locationStack)
        addSubview(filterButton)
        
        locationStack.addArrangedSubview(locationImage)
        locationStack.addArrangedSubview(locationLable)
        locationStack.addArrangedSubview(locationButton)
    }
    
    override func setupConstraints() {
        super.setupConstraints()
                
        NSLayoutConstraint.activate([
            locationStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 6),
            locationStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            filterButton.centerYAnchor.constraint(equalTo: locationStack.centerYAnchor),
            filterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
}
