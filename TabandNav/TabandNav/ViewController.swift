//
//  ViewController.swift
//  TabandNav
//
//  Created by Джан Влад on 15.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapButton()
    {
        let vc = UIViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
    }
}

