//
//  File.swift
//  watchOSHoroscope Watch App
//
//  Created by manvendu pathak  on 28/04/24.
//

import Foundation


struct Zodiac: Identifiable, Codable {
    let id = UUID()
    let data: DataClass
    let status: Int
    let success: Bool
}


struct DataClass: Codable{
    let date: String
    let horoscope_data: String
}


struct ZodiacSign{
    let name: String
    let image: String
    let info: String
}
