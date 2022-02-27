//
// VideoAttachmentModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct VideoAttachmentModel: Content, Hashable {

    public var id: String
    public var guid: String
    public var title: String
    public var type: String
    public var description: String
    public var releaseDate: Date?
    public var duration: Double
    public var creator: String
    public var likes: Int
    public var dislikes: Int
    public var score: Int
    public var isProcessing: Bool
    public var primaryBlogPost: String
    public var thumbnail: ImageModel
    public var isAccessible: Bool

    public init(id: String, guid: String, title: String, type: String, description: String, releaseDate: Date? = nil, duration: Double, creator: String, likes: Int, dislikes: Int, score: Int, isProcessing: Bool, primaryBlogPost: String, thumbnail: ImageModel, isAccessible: Bool) {
        self.id = id
        self.guid = guid
        self.title = title
        self.type = type
        self.description = description
        self.releaseDate = releaseDate
        self.duration = duration
        self.creator = creator
        self.likes = likes
        self.dislikes = dislikes
        self.score = score
        self.isProcessing = isProcessing
        self.primaryBlogPost = primaryBlogPost
        self.thumbnail = thumbnail
        self.isAccessible = isAccessible
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case guid
        case title
        case type
        case description
        case releaseDate
        case duration
        case creator
        case likes
        case dislikes
        case score
        case isProcessing
        case primaryBlogPost
        case thumbnail
        case isAccessible
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(guid, forKey: .guid)
        try container.encode(title, forKey: .title)
        try container.encode(type, forKey: .type)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(releaseDate, forKey: .releaseDate)
        try container.encode(duration, forKey: .duration)
        try container.encode(creator, forKey: .creator)
        try container.encode(likes, forKey: .likes)
        try container.encode(dislikes, forKey: .dislikes)
        try container.encode(score, forKey: .score)
        try container.encode(isProcessing, forKey: .isProcessing)
        try container.encode(primaryBlogPost, forKey: .primaryBlogPost)
        try container.encode(thumbnail, forKey: .thumbnail)
        try container.encode(isAccessible, forKey: .isAccessible)
    }
}

