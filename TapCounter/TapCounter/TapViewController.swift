//
//  TapViewController.swift
//  TapCounter
//
//  Created by Cassandra Sandquist on 6/28/18.
//  Copyright © 2018 Cassandra Sandquist. All rights reserved.
//

import UIKit

class TapViewController: UIViewController {
    weak var interactorDelegate: TapInteractor?
    private let viewModel = TapViewModel()

    @IBOutlet weak var taps: UILabel!

    @objc private func didTapReset(_ sender: UIButton) {
        interactorDelegate?.resetTap()
    }
    @IBAction func didTapTap(_ sender: UIButton) {
        interactorDelegate?.addTap()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        interactorDelegate = viewModel
        viewModel.uiDelegate = self
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "reset", style: .plain, target: self, action: #selector(didTapReset(_:)))
        title = "Count Those Taps!"
    }
}
extension TapViewController: TapUIDelegate {
    func didUpdateTapCount(count: Int) {
        taps.text = "\(count)"
    }
}
