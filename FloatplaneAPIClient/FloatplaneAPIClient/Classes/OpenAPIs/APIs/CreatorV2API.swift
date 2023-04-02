//
// CreatorV2API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CreatorV2API {

    /**
     Get Info By Name
     GET /api/v2/creator/named
     Retrieve detailed information on one or more creators on Floatplane.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorURL: (query) The string identifer(s) of the creator(s) to be retrieved. 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getCreatorInfoByNameRaw(creatorURL: [String], headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v2/creator/named"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var creatorURL: [String]

                enum CodingKeys: String, CodingKey {
                    case creatorURL = "creatorURL"
                }
            }
            try localVariableRequest.query.encode(QueryParams(creatorURL: creatorURL))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetCreatorInfoByName {
        case http200(value: [CreatorModelV2Extended], raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http429(raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Info By Name
     GET /api/v2/creator/named
     Retrieve detailed information on one or more creators on Floatplane.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorURL: (query) The string identifer(s) of the creator(s) to be retrieved. 
     - returns: `EventLoopFuture` of `GetCreatorInfoByName` 
     */
    open class func getCreatorInfoByName(creatorURL: [String], headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetCreatorInfoByName> {
        return getCreatorInfoByNameRaw(creatorURL: creatorURL, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetCreatorInfoByName in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode([CreatorModelV2Extended].self, using: Configuration.contentConfiguration.requireDecoder(for: [CreatorModelV2Extended].defaultContentType)), raw: response)
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

    /**
     Get Info
     GET /api/v2/creator/info
     Retrieve detailed information on one or more creators on Floatplane.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorGUID: (query) The GUID identifer(s) of the creator(s) to be retrieved. 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getInfoRaw(creatorGUID: [String], headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/api/v2/creator/info"
        let localVariableURLString = FloatplaneAPIClientAPI.basePath + localVariablePath

        guard let localVariableApiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            struct QueryParams: Content {
                var creatorGUID: [String]

                enum CodingKeys: String, CodingKey {
                    case creatorGUID = "creatorGUID"
                }
            }
            try localVariableRequest.query.encode(QueryParams(creatorGUID: creatorGUID))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetInfo {
        case http200(value: [CreatorModelV2], raw: ClientResponse)
        case http400(value: ErrorModel, raw: ClientResponse)
        case http401(value: ErrorModel, raw: ClientResponse)
        case http403(value: ErrorModel, raw: ClientResponse)
        case http404(value: ErrorModel, raw: ClientResponse)
        case http429(raw: ClientResponse)
        case http0(value: ErrorModel, raw: ClientResponse)
    }

    /**
     Get Info
     GET /api/v2/creator/info
     Retrieve detailed information on one or more creators on Floatplane.
     - API Key:
       - type: apiKey sails.sid 
       - name: CookieAuth
     - parameter creatorGUID: (query) The GUID identifer(s) of the creator(s) to be retrieved. 
     - returns: `EventLoopFuture` of `GetInfo` 
     */
    open class func getInfo(creatorGUID: [String], headers: HTTPHeaders = FloatplaneAPIClientAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetInfo> {
        return getInfoRaw(creatorGUID: creatorGUID, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetInfo in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode([CreatorModelV2].self, using: Configuration.contentConfiguration.requireDecoder(for: [CreatorModelV2].defaultContentType)), raw: response)
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
