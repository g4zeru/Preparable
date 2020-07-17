//
// Copyright: © 2020, g4zeru All Rights Reserved.
// GitHub: https://github.com/g4zeru/Preparable
//
import Foundation

public protocol Preparable: AnyObject {}

public extension Preparable {
    @discardableResult func then(_ processingBlock: (Self) -> Void) -> Self {
        processingBlock(self)
        return self
    }
}

public extension NSObject: Preparable {}
