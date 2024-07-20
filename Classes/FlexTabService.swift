//
//  FlexTabService.swift
//  FBSnapshotTestCase
//
//  Created by Andrew Hardin on 7/21/24.
//

import Foundation
/// This file only intended to support required service.
/// The service to load image from resource file (Assets) and 
/// The service to load image from system (SFSymbols)

protocol FlexTabServiceProtocol {
    func loadImage (image from: String) -> UIImage?
    func loadSystemImage (image from: String) -> UIImage?
}

struct FlexTabService : FlexTabServiceProtocol {
    
   internal static let shared = FlexTabService() 
    
    init () { }
    
    // MARK: - Service to load image from Assets folder
   internal func loadImage(image from: String) -> UIImage? {
       if #available(iOS 13, *) {
           return UIImage(named: from, in: Bundle.main, with: nil)?.withRenderingMode(.alwaysOriginal)
       }else {
           return UIImage(named: from, in: Bundle.main, compatibleWith: nil)?.withRenderingMode(.alwaysOriginal)
       }
    }
    
    // MARK: - Service to load image from SFSymbols
    internal func loadSystemImage (image from: String) -> UIImage? {
        if #available(iOS 13.0, *) {
            return UIImage(systemName: from)
        } else {
            return UIImage(named: from)
        }
    }
}

