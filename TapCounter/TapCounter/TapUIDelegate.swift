//
//  TapUIDelegate.swift
//  TapCounter
//
//  Created by Cassandra Sandquist on 6/28/18.
//  Copyright © 2018 Cassandra Sandquist. All rights reserved.
//

protocol TapUIDelegate: AnyObject {
    func didUpdateTapCount(count: Int)
}
