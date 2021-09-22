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

    private var delegate: AppDelegate {
        // swiftlint:disable:next force_cast
        UIApplication.shared.delegate as! AppDelegate
    }

    @IBAction private func changeSlider(_ sender: Any) {
        delegate.sharedNumber = slider.value
        label.text = String(delegate.sharedNumber)
    }

    override func viewWillAppear(_ animated: Bool) {
        slider.value = delegate.sharedNumber
        label.text = String(delegate.sharedNumber)
    }
}
