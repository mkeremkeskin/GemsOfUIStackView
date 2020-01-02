//
//  ViewController.swift
//  stactkviewTutorial
//
//  Created by Kerem Keskin on 29.12.2019.
//  Copyright © 2019 Dolap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var readMoreButton: UIButton!

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileImageView1: UIImageView!
    @IBOutlet weak var profileImageView2: UIImageView!
    @IBOutlet weak var profileImageView3: UIImageView!

    @IBOutlet weak var rotatingStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        //Unccomment when you're using alignment & distribution example
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView1.layer.cornerRadius = profileImageView1.frame.width / 2
        profileImageView2.layer.cornerRadius = profileImageView2.frame.width / 2
        profileImageView3.layer.cornerRadius = profileImageView3.frame.width / 2
         */
    }

    @IBAction func readMoreClicked(_ sender: Any) {
        if detailLabel.numberOfLines == 2 {
            detailLabel.numberOfLines = 0
            readMoreButton.setTitle("Read Less", for: .normal)
        } else {
            detailLabel.numberOfLines = 2
            readMoreButton.setTitle("Read More", for: .normal)
        }
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            rotatingStackView.axis = .horizontal
        } else {
            rotatingStackView.axis = .vertical
        }
    }
}

