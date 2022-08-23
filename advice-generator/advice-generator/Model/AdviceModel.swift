//
//  AdviceModel.swift
//  advice-generator
//
//  Created by Gabriel Santiago on 22/08/22.
//

import Foundation

struct AdviceResponse: Codable {
    let slip: Slip
}

struct Slip: Codable {
    let id: Int
    let advice: String
}
