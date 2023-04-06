//
// CreatorModelV3.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct CreatorModelV3: Content, Hashable {

    public var id: String
    public var owner: CreatorModelV3Owner
    public var title: String
    /** Shown in the browser URL, and used in `/creator/named` queries. */
    public var urlname: String
    public var description: String
    public var about: String
    public var category: CreatorModelV3Category
    public var cover: ImageModel?
    public var icon: ImageModel
    public var liveStream: LiveStreamModel?
    public var subscriptionPlans: [SubscriptionPlanModel]?
    public var discoverable: Bool
    public var subscriberCountDisplay: String
    public var incomeDisplay: Bool
    public var defaultChannel: String
    public var socialLinks: [String: String]
    public var channels: [ChannelModel]
    /** Present in `/creator/named` queries */
    public var discordServers: [DiscordServerModel]?
    public var card: ImageModel?

    public init(id: String, owner: CreatorModelV3Owner, title: String, urlname: String, description: String, about: String, category: CreatorModelV3Category, cover: ImageModel?, icon: ImageModel, liveStream: LiveStreamModel?, subscriptionPlans: [SubscriptionPlanModel]?, discoverable: Bool, subscriberCountDisplay: String, incomeDisplay: Bool, defaultChannel: String, socialLinks: [String: String], channels: [ChannelModel], discordServers: [DiscordServerModel]? = nil, card: ImageModel? = nil) {
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
        self.socialLinks = socialLinks
        self.channels = channels
        self.discordServers = discordServers
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
        case socialLinks
        case channels
        case discordServers
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
        try container.encode(defaultChannel, forKey: .defaultChannel)
        try container.encode(socialLinks, forKey: .socialLinks)
        try container.encode(channels, forKey: .channels)
        try container.encodeIfPresent(discordServers, forKey: .discordServers)
        try container.encodeIfPresent(card, forKey: .card)
    }
}

