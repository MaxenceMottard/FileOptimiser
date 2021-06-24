//
//  UIImage+Extensions.swift
//  FileOptimiser
//
//  Created by Maxence Mottard on 21/06/2021.
//

import UIKit

extension UIImage {
    enum JPEGQuality: CGFloat {
        case original  = 0
        case low     = 0.25
        case medium  = 0.5
        case high    = 0.75
        case highest = 1
        
        var name: String {
            switch self {
            case .original:
                return "original"
            case .low:
                return "low"
            case .medium:
                return "medium"
            case .high:
                return "high"
            case .highest:
                return "highest"
            }
        }
    }

    /// Returns the data for the specified image in JPEG format.
    /// If the image object’s underlying image data has been purged, calling this function forces that data to be reloaded into memory.
    /// - returns: A data object containing the JPEG data, or nil if there was a problem generating the data. This function may return nil if the image has no data or if the underlying CGImageRef contains data in an unsupported bitmap format.
    func jpeg(_ quality: JPEGQuality) -> Data? {
        return self.jpegData(compressionQuality: quality.rawValue)
    }
}
