//
//  ViewController.swift
//  Localisation
//
//  Created by Arshad Shaik on 12/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel)
        myLabel.frame = view.bounds
    }
}

extension String{
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}


