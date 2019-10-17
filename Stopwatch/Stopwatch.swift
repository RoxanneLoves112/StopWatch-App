//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Roxanne Zhang on 8/29/19.
//  Copyright © 2019 Roxanne Zhang. All rights reserved.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?
  public var isRunning: Bool = false
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    let diffMinutes = Int(elapsedTime/60)
    let diffSeconds = Int(elapsedTime.truncatingRemainder(dividingBy: 60))
    let diffMilliseconds = Int(10 * (elapsedTime - Double(Int(elapsedTime))))
    return String(format: "%02d:%02d.%01d", diffMinutes, diffSeconds, diffMilliseconds)
  }
  
  func start() {
    startTime = NSDate()
    self.isRunning = true
  }
  
  func stop() {
    startTime = nil
    self.isRunning = false
  }
}
