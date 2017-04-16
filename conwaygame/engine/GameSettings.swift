//
//  GameSettings.swift
//  conwaygame
//
//  Created by Eni Sinanaj on 16/04/2017.
//  Copyright © 2017 NewlineCode. All rights reserved.
//

import Foundation

class GameSettings {
    
    var iteration: Int
    var iterationSpeed: Int
    let cols: Int
    let rows: Int
    static let blockSize: Int = 35
    static let MAX_SPEED = 6
    
    init(_ iterationSpeed: Int, cols: Int, rows: Int) {
        self.iteration = 0
        self.iterationSpeed = iterationSpeed
        self.cols = cols
        self.rows = rows
    }
    
    func iterate() {
        self.iteration = self.iteration + 1
    }
    
    func incrementIterationSpeed() {
        if (self.iterationSpeed == GameSettings.MAX_SPEED) {
            self.iterationSpeed = 1
        } else {
            self.iterationSpeed = self.iterationSpeed + 1
        }
    }
}
