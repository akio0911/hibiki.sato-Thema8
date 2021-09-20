//
//  GreenViewController.swift
//  Thema8
//
//  Created by 佐藤響 on 2021/09/18.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    @IBAction private func changeSlider(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate!.numLabel = slider.value
        label.text = String(delegate!.numLabel)
    }

    override func viewWillAppear(_ animated: Bool) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        slider.value = delegate!.numLabel
        label.text = String(delegate!.numLabel)
    }
}
