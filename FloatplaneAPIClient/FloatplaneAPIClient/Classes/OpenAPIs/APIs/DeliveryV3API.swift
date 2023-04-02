//
// DeliveryV3API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DeliveryV3API {

    /**
     * enum for parameter scenario
     */
    public enum Scenario_getDeliveryInfoV3: String, CaseIterable, Content {
        case ondemand = "onDemand"
        case download = "download"
        case live = "live"
    }

    /**
     * enum for parameter outputKind
     */
    public enum OutputKind_getDeliveryInfoV3: String, CaseIterable, Content {
        case hlsPeriodMpegts = "hls.mpegts"
        case hlsPeriodFmp4 = "hls.fmp4"
        case dashPeriodMpegts = "dash.mpegts"
        case dashPeriodM4s = "dash.m4s"
        case flat = "flat"
    }

    /**
     Get Delivery Info
     GET /api/v3/delivery/info
     Given an video/audio attachment or livestream identifier, retrieves the information necessary to play, download, or livestream the media at various quality levels.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter scenario: (query) Used to determine the scenario in which to consume the media.  - `onDemand` = stream a Video/Audio On Demand - `download` = Download the content for the user to play later. - `live` = Livestream the content 
     - parameter entityId: (query) The attachment or livestream identifier for the requested media. For video and audio, this would be from the `videoAttachments` or `audioAttachments` objects. For livestreams, this is the `liveStream.id` from the creator object. 
     - parameter outputKind: (query) Use `outputKind` to ensure the right vehicle is used for your client, e.g. `outputKind=hls.fmp4` is optimal for tvOS 10+. (optional)
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getDeliveryInfoV3Raw(scenario: Scenario_getDeliveryInfoV3, entityId: String, outputKind: OutputKind_getDeliveryInfoV3? = nil, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v3/delivery/info"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var scenario: Scenario_getDeliveryInfoV3
                var entityId: String
                var outputKind: OutputKind_getDeliveryInfoV3?

                enum CodingKeys: String, CodingKey {
                    case scenario = "scenario"
                    case entityId = "entityId"
                    case outputKind = "outputKind"
                }
            }
            try localVariableRequest.query.encode(QueryParams(scenario: scenario, entityId: entityId, outputKind: outputKind))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetDeliveryInfoV3 {
        case http200(value: CdnDeliveryV3Response, raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http429(raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Delivery Info
     GET /api/v3/delivery/info
     Given an video/audio attachment or livestream identifier, retrieves the information necessary to play, download, or livestream the media at various quality levels.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter scenario: (query) Used to determine the scenario in which to consume the media.  - `onDemand` = stream a Video/Audio On Demand - `download` = Download the content for the user to play later. - `live` = Livestream the content 
     - parameter entityId: (query) The attachment or livestream identifier for the requested media. For video and audio, this would be from the `videoAttachments` or `audioAttachments` objects. For livestreams, this is the `liveStream.id` from the creator object. 
     - parameter outputKind: (query) Use `outputKind` to ensure the right vehicle is used for your client, e.g. `outputKind=hls.fmp4` is optimal for tvOS 10+. (optional)
     - returns: `EventLoopFuture` of `GetDeliveryInfoV3` 
     */
    open class func getDeliveryInfoV3(scenario: Scenario_getDeliveryInfoV3, entityId: String, outputKind: OutputKind_getDeliveryInfoV3? = nil, headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetDeliveryInfoV3> {
        return getDeliveryInfoV3Raw(scenario: scenario, entityId: entityId, outputKind: outputKind, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetDeliveryInfoV3 in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(CdnDeliveryV3Response.self, using: Configuration.contentConfiguration.requireDecoder(for: CdnDeliveryV3Response.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 401:
                return .http401(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 403:
                return .http403(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 404:
                return .http404(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            case 429:
                return .http429(raw: response)
            default:
                return .http0(value: try response.content.decode(ErrorModel.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorModel.defaultContentType)), raw: response)
            }
        }
    }
}
