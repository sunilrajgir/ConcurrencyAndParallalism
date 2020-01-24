//
//  ThreadClass.swift
//  Concurrency
//
//  Created by sunil.kumar1 on 1/24/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ThreadClass {
    init() {
        checkThread()
    }
    
    func checkThread() {
        checkConcurrentQueueWithSyncAndAsync()
    }
    
    func checkConcurrentQueueWithSyncAndAsync() {
        let concurrentQueue = DispatchQueue(label: "ConcurrentQueue", attributes: .concurrent)
        concurrentQueue.sync { //concurrent queue and syncronous
            print("A")
        }
        concurrentQueue.async {
            for i in  1...5 {
                print("\(i)")
            }
        }
        concurrentQueue.async {
            for i in  10...15 {
                print("\(i)")
            }
        }
        concurrentQueue.sync {
            print("D")
        }
        //output : ADBC
    }
    
    func checkSerialQueueWithSyncAndAsync() {
        let serialQueue = DispatchQueue(label: "SerialQueue") // Serial Queue
        
        serialQueue.async {  // Serial Queue Asyncronous => block added in queue
            for i in 1...5 {
                print("\(i)")
            }
        }
        
        serialQueue.sync {          // Serial Queue syncronous => block added in queue
             for i in 20...25 {     // but since Queue is serial => first it will print (1,2,3,4,5)
                 print("\(i)")      // since this is sync => print (20,21,22,23,24,25) then it will go to 31 line
             }
        }
        
        serialQueue.async {
            for i in 30...35 {
                print("\(i)")
            }
        }
    }
}
