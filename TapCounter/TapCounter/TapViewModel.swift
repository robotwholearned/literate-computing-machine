//
//  TapViewModel.swift
//  TapCounter
//
//  Created by Cassandra Sandquist on 6/28/18.
//  Copyright © 2018 Cassandra Sandquist. All rights reserved.
//

import Foundation

final class TapViewModel {
    weak var uiDelegate: TapUIDelegate?

    private var tapCount = 0 {
        didSet {
            uiDelegate?.didUpdateTapCount(count: tapCount)
        }
    }
}
extension TapViewModel: TapInteractor {
    func addTap() {
        tapCount += 1
    }
    func resetTap() {
        tapCount = 0
    }
}

