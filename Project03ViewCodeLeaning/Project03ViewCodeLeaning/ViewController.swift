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

    lazy var checkSwitch: UISwitch = {
        let s = UISwitch()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.isOn = true
        s.onTintColor = .blue
        s.addTarget(self, action: #selector(self.tappedSiwtch(send:)), for: .touchUpInside)
        
        return s
    }()

    @objc func tappedSiwtch(send: UISwitch) {
        print("Disparou state: \(send.isOn)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.view.backgroundColor = .white
        view.addSubview(self.nameLabel)
        view.addSubview(self.checkSwitch)

        self.setConstraints()
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            self.nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.nameLabel.topAnchor.constraint(
                equalTo: self.view.topAnchor, constant: 64
            ),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
        ])

        NSLayoutConstraint.activate([
            self.checkSwitch.centerXAnchor.constraint(equalTo: self.nameLabel.centerXAnchor),
            self.checkSwitch.topAnchor.constraint(
                equalTo: self.nameLabel.bottomAnchor, constant: 16
            ),
        ])
    }


}

