//
//  SwiftClassWithPromise.swift
//  PMKInteropExample
//
//  Created by Brian Gerstle on 9/15/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

import Foundation
import PromiseKit

@objc public class SwiftClassWithPromise : NSObject {
    public func doSomethingAny() -> AnyPromise {
        return AnyPromise(bound: doSomething())
    }

    public func doSomething() -> Promise<AnyObject> {
        return Promise("Foo")
    }
}
