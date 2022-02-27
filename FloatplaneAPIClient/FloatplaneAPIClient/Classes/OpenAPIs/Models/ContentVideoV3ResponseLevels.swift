//
// ContentVideoV3ResponseLevels.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct ContentVideoV3ResponseLevels: Content, Hashable {

    public var name: String
    public var width: Int
    public var height: Int
    public var label: String
    public var order: Int

    public init(name: String, width: Int, height: Int, label: String, order: Int) {
        self.name = name
        self.width = width
        self.height = height
        self.label = label
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case width
        case height
        case label
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(label, forKey: .label)
        try container.encode(order, forKey: .order)
    }
}

