//
// CommentV3PostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct CommentV3PostRequest: Content, Hashable {

    /** The GUID of the blogPost the comment should be posted to. */
    public var blogPost: String
    /** The text of the comment being posted. */
    public var text: String

    public init(blogPost: String, text: String) {
        self.blogPost = blogPost
        self.text = text
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case blogPost
        case text
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(blogPost, forKey: .blogPost)
        try container.encode(text, forKey: .text)
    }
}

