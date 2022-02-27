//
// PostMetadataModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct PostMetadataModel: Content, Hashable {

    public var hasVideo: Bool
    public var videoCount: Int
    public var videoDuration: Double
    public var hasAudio: Bool
    public var audioCount: Int
    public var audioDuration: Double
    public var hasPicture: Bool
    public var pictureCount: Int
    public var hasGallery: Bool
    public var galleryCount: Int
    public var isFeatured: Bool

    public init(hasVideo: Bool, videoCount: Int, videoDuration: Double, hasAudio: Bool, audioCount: Int, audioDuration: Double, hasPicture: Bool, pictureCount: Int, hasGallery: Bool, galleryCount: Int, isFeatured: Bool) {
        self.hasVideo = hasVideo
        self.videoCount = videoCount
        self.videoDuration = videoDuration
        self.hasAudio = hasAudio
        self.audioCount = audioCount
        self.audioDuration = audioDuration
        self.hasPicture = hasPicture
        self.pictureCount = pictureCount
        self.hasGallery = hasGallery
        self.galleryCount = galleryCount
        self.isFeatured = isFeatured
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hasVideo
        case videoCount
        case videoDuration
        case hasAudio
        case audioCount
        case audioDuration
        case hasPicture
        case pictureCount
        case hasGallery
        case galleryCount
        case isFeatured
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hasVideo, forKey: .hasVideo)
        try container.encode(videoCount, forKey: .videoCount)
        try container.encode(videoDuration, forKey: .videoDuration)
        try container.encode(hasAudio, forKey: .hasAudio)
        try container.encode(audioCount, forKey: .audioCount)
        try container.encode(audioDuration, forKey: .audioDuration)
        try container.encode(hasPicture, forKey: .hasPicture)
        try container.encode(pictureCount, forKey: .pictureCount)
        try container.encode(hasGallery, forKey: .hasGallery)
        try container.encode(galleryCount, forKey: .galleryCount)
        try container.encode(isFeatured, forKey: .isFeatured)
    }
}

