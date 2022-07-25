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

    lazy var button: UIButton = {
        let b = UIButton(type: .system)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitle("Clieck me", for: .normal)
        b.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        b.addTarget(self, action: #selector(self.tappedButton (send:)), for: .touchUpInside)
        return b
    }()

    @objc func tappedButton(send: UIButton) {
        print("clicou")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        super.view.backgroundColor = .white
        view.addSubview(self.nameLabel)
        view.addSubview(self.checkSwitch)
        view.addSubview(self.button)

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

        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.checkSwitch.centerXAnchor),
            self.button.topAnchor.constraint(
                equalTo: self.checkSwitch.bottomAnchor, constant: 16
            ),
            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
}

