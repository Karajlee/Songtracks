//
//  ImageInfo.swift
//  Songtracks
//
//  Created by Kara Lee on 12/6/23.
//

import Foundation
import UIKit
struct ImageInfo: Identifiable, Hashable {
    let id: String
    let image: UIImage
    let url: String
    let mood: String
    let song: String
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: ImageInfo, rhs: ImageInfo) -> Bool {
        return lhs.id == rhs.id
    }

}
