//
// PaymentAddressModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif
import Vapor

public struct PaymentAddressModel: Content, Hashable {

    public var id: Int
    public var customerName: String
    public var postalCode: String
    public var line1: String
    public var city: String
    public var region: String
    public var country: String
    public var _default: Bool

    public init(id: Int, customerName: String, postalCode: String, line1: String, city: String, region: String, country: String, _default: Bool) {
        self.id = id
        self.customerName = customerName
        self.postalCode = postalCode
        self.line1 = line1
        self.city = city
        self.region = region
        self.country = country
        self._default = _default
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case customerName
        case postalCode
        case line1
        case city
        case region
        case country
        case _default = "default"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(customerName, forKey: .customerName)
        try container.encode(postalCode, forKey: .postalCode)
        try container.encode(line1, forKey: .line1)
        try container.encode(city, forKey: .city)
        try container.encode(region, forKey: .region)
        try container.encode(country, forKey: .country)
        try container.encode(_default, forKey: ._default)
    }
}

