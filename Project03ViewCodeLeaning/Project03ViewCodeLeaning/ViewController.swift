//
//  ViewController.swift
//  Project03ViewCodeLeaning
//
//  Created by Carlos Philipe Mendes Bahia on 22/07/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carlos"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.backgroundColor = .blue
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.view.backgroundColor = .white
        view.addSubview(self.nameLabel)
        self.setConstraints()
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            self.nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.nameLabel.centerYAnchor.constraint(
                equalTo: self.view.centerYAnchor
            ),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
        ])
    }


}

