//
// ContentLikeV3Request.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct ContentLikeV3Request: Content, Hashable {

    public enum ContentType: String, Content, Hashable, CaseIterable {
        case blogpost = "blogPost"
    }
    public var contentType: ContentType
    public var id: String

    public init(contentType: ContentType, id: String) {
        self.contentType = contentType
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contentType
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(id, forKey: .id)
    }
}

