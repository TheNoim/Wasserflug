//
// BlogPostModelV3Creator.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct BlogPostModelV3Creator: Content, Hashable {

    public var id: String
    public var owner: BlogPostModelV3CreatorOwner
    public var title: String
    /** Shown in the browser URL, and used in `/creator/named` queries. */
    public var urlname: String
    public var description: String
    public var about: String
    public var category: CreatorModelV3Category
    public var cover: ContentPostV3ResponseThumbnail?
    public var icon: ImageModel
    public var liveStream: CreatorModelV2LiveStream?
    public var subscriptionPlans: [SubscriptionPlanModel]
    public var discoverable: Bool
    public var subscriberCountDisplay: String
    public var incomeDisplay: Bool
    public var defaultChannel: String?
    public var channels: [String]?
    public var card: ContentPostV3ResponseThumbnail?

    public init(id: String, owner: BlogPostModelV3CreatorOwner, title: String, urlname: String, description: String, about: String, category: CreatorModelV3Category, cover: ContentPostV3ResponseThumbnail?, icon: ImageModel, liveStream: CreatorModelV2LiveStream?, subscriptionPlans: [SubscriptionPlanModel], discoverable: Bool, subscriberCountDisplay: String, incomeDisplay: Bool, defaultChannel: String? = nil, channels: [String]? = nil, card: ContentPostV3ResponseThumbnail? = nil) {
        self.id = id
        self.owner = owner
        self.title = title
        self.urlname = urlname
        self.description = description
        self.about = about
        self.category = category
        self.cover = cover
        self.icon = icon
        self.liveStream = liveStream
        self.subscriptionPlans = subscriptionPlans
        self.discoverable = discoverable
        self.subscriberCountDisplay = subscriberCountDisplay
        self.incomeDisplay = incomeDisplay
        self.defaultChannel = defaultChannel
        self.channels = channels
        self.card = card
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case owner
        case title
        case urlname
        case description
        case about
        case category
        case cover
        case icon
        case liveStream
        case subscriptionPlans
        case discoverable
        case subscriberCountDisplay
        case incomeDisplay
        case defaultChannel
        case channels
        case card
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(owner, forKey: .owner)
        try container.encode(title, forKey: .title)
        try container.encode(urlname, forKey: .urlname)
        try container.encode(description, forKey: .description)
        try container.encode(about, forKey: .about)
        try container.encode(category, forKey: .category)
        try container.encode(cover, forKey: .cover)
        try container.encode(icon, forKey: .icon)
        try container.encode(liveStream, forKey: .liveStream)
        try container.encode(subscriptionPlans, forKey: .subscriptionPlans)
        try container.encode(discoverable, forKey: .discoverable)
        try container.encode(subscriberCountDisplay, forKey: .subscriberCountDisplay)
        try container.encode(incomeDisplay, forKey: .incomeDisplay)
        try container.encodeIfPresent(defaultChannel, forKey: .defaultChannel)
        try container.encodeIfPresent(channels, forKey: .channels)
        try container.encodeIfPresent(card, forKey: .card)
    }
}

