//
//  TapViewController.swift
//  TapOrHoldCounter
//
//  Created by Cassandra Sandquist on 6/28/18.
//  Copyright © 2018 Cassandra Sandquist. All rights reserved.
//

import UIKit

class TapViewController: UIViewController {
    weak var interactorDelegate: TapInteractor?
    private let viewModel = TapViewModel()

    @IBOutlet weak var taps: UILabel!
    @IBOutlet weak var tapOrHold: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "reset", style: .plain, target: self, action: #selector(didTapReset(_:)))
        title = "Count Those Taps!"

        interactorDelegate = viewModel
        viewModel.uiDelegate = self

        setupGesture()
    }
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapTap(_:)))
        let holdGesture = UILongPressGestureRecognizer(target: self, action: #selector(didLongTap(_:)))

        holdGesture.minimumPressDuration = 0.5

        tapOrHold.addGestureRecognizer(tapGesture)
        tapOrHold.addGestureRecognizer(holdGesture)
    }
    @objc private func didTapReset(_ sender: UIButton) {
        interactorDelegate?.resetTap()
    }
    @objc private func didTapTap(_ sender: UIGestureRecognizer) {
        interactorDelegate?.addTap()
    }
    @objc private func didLongTap(_ sender: UIGestureRecognizer) {
        interactorDelegate?.addTap()
    }
}
extension TapViewController: TapUIDelegate {
    func didUpdateTapCount(count: String) {
        taps.text = count
    }
}


