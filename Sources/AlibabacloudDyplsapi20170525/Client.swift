import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = "central"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dyplsapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAxnTrackNoWithOptions(_ request: AddAxnTrackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAxnTrackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trackNo)) {
            query["trackNo"] = request.trackNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAxnTrackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAxnTrackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAxnTrackNo(_ request: AddAxnTrackNoRequest) async throws -> AddAxnTrackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAxnTrackNoWithOptions(request as! AddAxnTrackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSecretBlacklistWithOptions(_ request: AddSecretBlacklistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSecretBlacklistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blackType)) {
            query["BlackType"] = request.blackType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wayControl)) {
            query["WayControl"] = request.wayControl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSecretBlacklist",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSecretBlacklistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSecretBlacklist(_ request: AddSecretBlacklistRequest) async throws -> AddSecretBlacklistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSecretBlacklistWithOptions(request as! AddSecretBlacklistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAXBCallWithOptions(_ request: BindAXBCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAXBCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authId)) {
            query["AuthId"] = request.authId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAXBCall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAXBCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAXBCall(_ request: BindAXBCallRequest) async throws -> BindAXBCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAXBCallWithOptions(request as! BindAXBCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxbWithOptions(_ request: BindAxbRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxbResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTimeout)) {
            query["CallTimeout"] = request.callTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.dtmfConfig)) {
            query["DtmfConfig"] = request.dtmfConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxb",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxbResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxb(_ request: BindAxbRequest) async throws -> BindAxbResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxbWithOptions(request as! BindAxbRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxbFixedLineWithOptions(_ tmpReq: BindAxbFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxbFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindAxbFixedLineShrinkRequest = BindAxbFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.areacode)) {
            query["Areacode"] = request.areacode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindType)) {
            query["BindType"] = request.bindType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            query["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telB)) {
            query["TelB"] = request.telB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxbFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxbFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxbFixedLine(_ request: BindAxbFixedLineRequest) async throws -> BindAxbFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxbFixedLineWithOptions(request as! BindAxbFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxgWithOptions(_ request: BindAxgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxgResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxg",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxg(_ request: BindAxgRequest) async throws -> BindAxgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxgWithOptions(request as! BindAxgRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnWithOptions(_ request: BindAxnRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTimeout)) {
            query["CallTimeout"] = request.callTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.noType)) {
            query["NoType"] = request.noType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxn",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxn(_ request: BindAxnRequest) async throws -> BindAxnResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnWithOptions(request as! BindAxnRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtensionWithOptions(_ request: BindAxnExtensionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnExtensionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expectCity)) {
            query["ExpectCity"] = request.expectCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extend)) {
            query["Extend"] = request.extend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extension_)) {
            query["Extension"] = request.extension_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderId)) {
            query["OutOrderId"] = request.outOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxnExtension",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnExtensionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtension(_ request: BindAxnExtensionRequest) async throws -> BindAxnExtensionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnExtensionWithOptions(request as! BindAxnExtensionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtensionFixedLineWithOptions(_ tmpReq: BindAxnExtensionFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnExtensionFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindAxnExtensionFixedLineShrinkRequest = BindAxnExtensionFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extraaxx)) {
            request.extraaxxShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraaxx, "Extraaxx", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.areacode)) {
            query["Areacode"] = request.areacode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindType)) {
            query["BindType"] = request.bindType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraaxxShrink)) {
            query["Extraaxx"] = request.extraaxxShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telXext)) {
            query["TelXext"] = request.telXext ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxnExtensionFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnExtensionFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnExtensionFixedLine(_ request: BindAxnExtensionFixedLineRequest) async throws -> BindAxnExtensionFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnExtensionFixedLineWithOptions(request as! BindAxnExtensionFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnFixedLineWithOptions(_ tmpReq: BindAxnFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAxnFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindAxnFixedLineShrinkRequest = BindAxnFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.areacode)) {
            query["Areacode"] = request.areacode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindType)) {
            query["BindType"] = request.bindType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            query["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telB)) {
            query["TelB"] = request.telB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAxnFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAxnFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAxnFixedLine(_ request: BindAxnFixedLineRequest) async throws -> BindAxnFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAxnFixedLineWithOptions(request as! BindAxnFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindBatchAxgWithOptions(_ tmpReq: BindBatchAxgRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindBatchAxgResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindBatchAxgShrinkRequest = BindBatchAxgShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.axgBindList)) {
            request.axgBindListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.axgBindList, "AxgBindList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.axgBindListShrink)) {
            query["AxgBindList"] = request.axgBindListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindBatchAxg",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindBatchAxgResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindBatchAxg(_ request: BindBatchAxgRequest) async throws -> BindBatchAxgResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindBatchAxgWithOptions(request as! BindBatchAxgRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindXBWithOptions(_ request: BindXBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindXBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.telB)) {
            query["TelB"] = request.telB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindXB",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindXBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindXB(_ request: BindXBRequest) async throws -> BindXBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindXBWithOptions(request as! BindXBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buySecretNoWithOptions(_ request: BuySecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BuySecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayPool)) {
            query["DisplayPool"] = request.displayPool!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BuySecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BuySecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func buySecretNo(_ request: BuySecretNoRequest) async throws -> BuySecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await buySecretNoWithOptions(request as! BuySecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPickUpWaybillWithOptions(_ request: CancelPickUpWaybillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelPickUpWaybillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancelDesc)) {
            query["CancelDesc"] = request.cancelDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelPickUpWaybill",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelPickUpWaybillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelPickUpWaybill(_ request: CancelPickUpWaybillRequest) async throws -> CancelPickUpWaybillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelPickUpWaybillWithOptions(request as! CancelPickUpWaybillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configXWithOptions(_ tmpReq: ConfigXRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigXResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ConfigXShrinkRequest = ConfigXShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sequenceCalls)) {
            request.sequenceCallsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sequenceCalls, "SequenceCalls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callAbility)) {
            query["CallAbility"] = request.callAbility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.GNFlag)) {
            query["GNFlag"] = request.GNFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sequenceCallsShrink)) {
            query["SequenceCalls"] = request.sequenceCallsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sequenceMode)) {
            query["SequenceMode"] = request.sequenceMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsAbility)) {
            query["SmsAbility"] = request.smsAbility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smsSignMode)) {
            query["SmsSignMode"] = request.smsSignMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigX",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigXResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configX(_ request: ConfigXRequest) async throws -> ConfigXResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configXWithOptions(request as! ConfigXRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAxgGroupWithOptions(_ request: CreateAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            query["Numbers"] = request.numbers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAxgGroup(_ request: CreateAxgGroupRequest) async throws -> CreateAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAxgGroupWithOptions(request as! CreateAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFixedNoAReportWithOptions(_ request: CreateFixedNoAReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFixedNoAReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ANoWhiteGroupId)) {
            query["ANoWhiteGroupId"] = request.ANoWhiteGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.custName)) {
            query["CustName"] = request.custName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custPhoneNo)) {
            query["CustPhoneNo"] = request.custPhoneNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custType)) {
            query["CustType"] = request.custType!;
        }
        if (!TeaUtils.Client.isUnset(request.documentNumber)) {
            query["DocumentNumber"] = request.documentNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentType)) {
            query["DocumentType"] = request.documentType!;
        }
        if (!TeaUtils.Client.isUnset(request.fixedLineWorkId)) {
            query["FixedLineWorkId"] = request.fixedLineWorkId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fixedNoA)) {
            query["FixedNoA"] = request.fixedNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardAlivePhoto)) {
            query["IdCardAlivePhoto"] = request.idCardAlivePhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardBackPhoto)) {
            query["IdCardBackPhoto"] = request.idCardBackPhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardFrontPhoto)) {
            query["IdCardFrontPhoto"] = request.idCardFrontPhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFixedNoAReport",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFixedNoAReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFixedNoAReport(_ request: CreateFixedNoAReportRequest) async throws -> CreateFixedNoAReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFixedNoAReportWithOptions(request as! CreateFixedNoAReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhoneNoAReportWithOptions(_ request: CreatePhoneNoAReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePhoneNoAReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ANoWhiteGroupId)) {
            query["ANoWhiteGroupId"] = request.ANoWhiteGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.custName)) {
            query["CustName"] = request.custName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentNumber)) {
            query["DocumentNumber"] = request.documentNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentType)) {
            query["DocumentType"] = request.documentType!;
        }
        if (!TeaUtils.Client.isUnset(request.idCardAlivePhoto)) {
            query["IdCardAlivePhoto"] = request.idCardAlivePhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardBackPhoto)) {
            query["IdCardBackPhoto"] = request.idCardBackPhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idCardFrontPhoto)) {
            query["IdCardFrontPhoto"] = request.idCardFrontPhoto ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePhoneNoAReport",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePhoneNoAReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhoneNoAReport(_ request: CreatePhoneNoAReportRequest) async throws -> CreatePhoneNoAReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPhoneNoAReportWithOptions(request as! CreatePhoneNoAReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillWithOptions(_ tmpReq: CreatePickUpWaybillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePickUpWaybillResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePickUpWaybillShrinkRequest = CreatePickUpWaybillShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.consigneeAddress)) {
            request.consigneeAddressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.consigneeAddress, "ConsigneeAddress", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.goodsInfos)) {
            request.goodsInfosShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.goodsInfos, "GoodsInfos", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sendAddress)) {
            request.sendAddressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sendAddress, "SendAddress", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appointGotEndTime)) {
            query["AppointGotEndTime"] = request.appointGotEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appointGotStartTime)) {
            query["AppointGotStartTime"] = request.appointGotStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType!;
        }
        if (!TeaUtils.Client.isUnset(request.consigneeAddressShrink)) {
            query["ConsigneeAddress"] = request.consigneeAddressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneeMobile)) {
            query["ConsigneeMobile"] = request.consigneeMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneeName)) {
            query["ConsigneeName"] = request.consigneeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consigneePhone)) {
            query["ConsigneePhone"] = request.consigneePhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            query["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsInfosShrink)) {
            query["GoodsInfos"] = request.goodsInfosShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderChannels)) {
            query["OrderChannels"] = request.orderChannels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendAddressShrink)) {
            query["SendAddress"] = request.sendAddressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendMobile)) {
            query["SendMobile"] = request.sendMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendName)) {
            query["SendName"] = request.sendName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendPhone)) {
            query["SendPhone"] = request.sendPhone ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePickUpWaybill",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePickUpWaybillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybill(_ request: CreatePickUpWaybillRequest) async throws -> CreatePickUpWaybillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPickUpWaybillWithOptions(request as! CreatePickUpWaybillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillPreQueryWithOptions(_ tmpReq: CreatePickUpWaybillPreQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePickUpWaybillPreQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePickUpWaybillPreQueryShrinkRequest = CreatePickUpWaybillPreQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.consigneeInfo)) {
            request.consigneeInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.consigneeInfo, "ConsigneeInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.senderInfo)) {
            request.senderInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.senderInfo, "SenderInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.consigneeInfoShrink)) {
            query["ConsigneeInfo"] = request.consigneeInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            query["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderChannels)) {
            query["OrderChannels"] = request.orderChannels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outerOrderCode)) {
            query["OuterOrderCode"] = request.outerOrderCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preWeight)) {
            query["PreWeight"] = request.preWeight ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderInfoShrink)) {
            query["SenderInfo"] = request.senderInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePickUpWaybillPreQuery",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePickUpWaybillPreQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPickUpWaybillPreQuery(_ request: CreatePickUpWaybillPreQueryRequest) async throws -> CreatePickUpWaybillPreQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPickUpWaybillPreQueryWithOptions(request as! CreatePickUpWaybillPreQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSmsSignWithOptions(_ request: CreateSmsSignRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSmsSignResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNo)) {
            query["CalledNo"] = request.calledNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.callingNo)) {
            query["CallingNo"] = request.callingNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSmsSign",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSmsSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSmsSign(_ request: CreateSmsSignRequest) async throws -> CreateSmsSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSmsSignWithOptions(request as! CreateSmsSignRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxbBindFixedLineWithOptions(_ request: DeleteAxbBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAxbBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAxbBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAxbBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxbBindFixedLine(_ request: DeleteAxbBindFixedLineRequest) async throws -> DeleteAxbBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAxbBindFixedLineWithOptions(request as! DeleteAxbBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxgGroupWithOptions(_ request: DeleteAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxgGroup(_ request: DeleteAxgGroupRequest) async throws -> DeleteAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAxgGroupWithOptions(request as! DeleteAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxnBindFixedLineWithOptions(_ request: DeleteAxnBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAxnBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAxnBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAxnBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxnBindFixedLine(_ request: DeleteAxnBindFixedLineRequest) async throws -> DeleteAxnBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAxnBindFixedLineWithOptions(request as! DeleteAxnBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxnExtensionBindFixedLineWithOptions(_ request: DeleteAxnExtensionBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAxnExtensionBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAxnExtensionBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAxnExtensionBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAxnExtensionBindFixedLine(_ request: DeleteAxnExtensionBindFixedLineRequest) async throws -> DeleteAxnExtensionBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAxnExtensionBindFixedLineWithOptions(request as! DeleteAxnExtensionBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretAPhoneNoToCustWithOptions(_ request: DeleteSecretAPhoneNoToCustRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecretAPhoneNoToCustResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ANoWhiteGroupId)) {
            query["ANoWhiteGroupId"] = request.ANoWhiteGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecretAPhoneNoToCust",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecretAPhoneNoToCustResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretAPhoneNoToCust(_ request: DeleteSecretAPhoneNoToCustRequest) async throws -> DeleteSecretAPhoneNoToCustResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecretAPhoneNoToCustWithOptions(request as! DeleteSecretAPhoneNoToCustRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretBlacklistWithOptions(_ request: DeleteSecretBlacklistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSecretBlacklistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blackType)) {
            query["BlackType"] = request.blackType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wayControl)) {
            query["WayControl"] = request.wayControl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSecretBlacklist",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSecretBlacklistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSecretBlacklist(_ request: DeleteSecretBlacklistRequest) async throws -> DeleteSecretBlacklistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSecretBlacklistWithOptions(request as! DeleteSecretBlacklistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDyplsOSSInfoForUploadFileWithOptions(_ request: GetDyplsOSSInfoForUploadFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDyplsOSSInfoForUploadFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDyplsOSSInfoForUploadFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDyplsOSSInfoForUploadFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDyplsOSSInfoForUploadFile(_ request: GetDyplsOSSInfoForUploadFileRequest) async throws -> GetDyplsOSSInfoForUploadFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDyplsOSSInfoForUploadFileWithOptions(request as! GetDyplsOSSInfoForUploadFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretAsrDetailWithOptions(_ request: GetSecretAsrDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecretAsrDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecretAsrDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecretAsrDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecretAsrDetail(_ request: GetSecretAsrDetailRequest) async throws -> GetSecretAsrDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecretAsrDetailWithOptions(request as! GetSecretAsrDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTotalPublicUrlWithOptions(_ request: GetTotalPublicUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTotalPublicUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkSubs)) {
            query["CheckSubs"] = request.checkSubs!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.partnerKey)) {
            query["PartnerKey"] = request.partnerKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTotalPublicUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTotalPublicUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTotalPublicUrl(_ request: GetTotalPublicUrlRequest) async throws -> GetTotalPublicUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTotalPublicUrlWithOptions(request as! GetTotalPublicUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getXConfigWithOptions(_ request: GetXConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetXConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetXConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetXConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getXConfig(_ request: GetXConfigRequest) async throws -> GetXConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getXConfigWithOptions(request as! GetXConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getXDefaultConfigWithOptions(_ request: GetXDefaultConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetXDefaultConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetXDefaultConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetXDefaultConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getXDefaultConfig(_ request: GetXDefaultConfigRequest) async throws -> GetXDefaultConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getXDefaultConfigWithOptions(request as! GetXDefaultConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listXTelephonesWithOptions(_ request: ListXTelephonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListXTelephonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListXTelephones",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListXTelephonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listXTelephones(_ request: ListXTelephonesRequest) async throws -> ListXTelephonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listXTelephonesWithOptions(request as! ListXTelephonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSecretNoWithOptions(_ request: LockSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockSecretNo(_ request: LockSecretNoRequest) async throws -> LockSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockSecretNoWithOptions(request as! LockSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAxgGroupWithOptions(_ request: OperateAxgGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateAxgGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.numbers)) {
            query["Numbers"] = request.numbers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateAxgGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateAxgGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateAxgGroup(_ request: OperateAxgGroupRequest) async throws -> OperateAxgGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateAxgGroupWithOptions(request as! OperateAxgGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateBlackNoWithOptions(_ request: OperateBlackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateBlackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blackNo)) {
            query["BlackNo"] = request.blackNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.tips)) {
            query["Tips"] = request.tips ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateBlackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateBlackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateBlackNo(_ request: OperateBlackNoRequest) async throws -> OperateBlackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateBlackNoWithOptions(request as! OperateBlackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxbBindFixedLineWithOptions(_ request: QueryAxbBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAxbBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAxbBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAxbBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxbBindFixedLine(_ request: QueryAxbBindFixedLineRequest) async throws -> QueryAxbBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAxbBindFixedLineWithOptions(request as! QueryAxbBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxnBindFixedLineWithOptions(_ request: QueryAxnBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAxnBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["Phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAxnBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAxnBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxnBindFixedLine(_ request: QueryAxnBindFixedLineRequest) async throws -> QueryAxnBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAxnBindFixedLineWithOptions(request as! QueryAxnBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxnExtensionBindFixedLineWithOptions(_ request: QueryAxnExtensionBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAxnExtensionBindFixedLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAxnExtensionBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAxnExtensionBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAxnExtensionBindFixedLine(_ request: QueryAxnExtensionBindFixedLineRequest) async throws -> QueryAxnExtensionBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAxnExtensionBindFixedLineWithOptions(request as! QueryAxnExtensionBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneNoAByTrackNoWithOptions(_ request: QueryPhoneNoAByTrackNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPhoneNoAByTrackNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cabinetNo)) {
            query["CabinetNo"] = request.cabinetNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.trackNo)) {
            query["trackNo"] = request.trackNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPhoneNoAByTrackNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPhoneNoAByTrackNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneNoAByTrackNo(_ request: QueryPhoneNoAByTrackNoRequest) async throws -> QueryPhoneNoAByTrackNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPhoneNoAByTrackNoWithOptions(request as! QueryPhoneNoAByTrackNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordFileDownloadUrlWithOptions(_ request: QueryRecordFileDownloadUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecordFileDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callTime)) {
            query["CallTime"] = request.callTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecordFileDownloadUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecordFileDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecordFileDownloadUrl(_ request: QueryRecordFileDownloadUrlRequest) async throws -> QueryRecordFileDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecordFileDownloadUrlWithOptions(request as! QueryRecordFileDownloadUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretAPhoneNoToCustWithOptions(_ request: QuerySecretAPhoneNoToCustRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecretAPhoneNoToCustResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ANoWhiteGroupId)) {
            query["ANoWhiteGroupId"] = request.ANoWhiteGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecretAPhoneNoToCust",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecretAPhoneNoToCustResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretAPhoneNoToCust(_ request: QuerySecretAPhoneNoToCustRequest) async throws -> QuerySecretAPhoneNoToCustResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecretAPhoneNoToCustWithOptions(request as! QuerySecretAPhoneNoToCustRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoDetailWithOptions(_ request: QuerySecretNoDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecretNoDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecretNoDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecretNoDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoDetail(_ request: QuerySecretNoDetailRequest) async throws -> QuerySecretNoDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecretNoDetailWithOptions(request as! QuerySecretNoDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoRemainWithOptions(_ request: QuerySecretNoRemainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecretNoRemainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecretNoRemain",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecretNoRemainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecretNoRemain(_ request: QuerySecretNoRemainRequest) async throws -> QuerySecretNoRemainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecretNoRemainWithOptions(request as! QuerySecretNoRemainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySoundRecordWithOptions(_ request: QuerySoundRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySoundRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySoundRecord",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySoundRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySoundRecord(_ request: QuerySoundRecordRequest) async throws -> QuerySoundRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySoundRecordWithOptions(request as! QuerySoundRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubsIdWithOptions(_ request: QuerySubsIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySubsIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySubsId",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySubsIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubsId(_ request: QuerySubsIdRequest) async throws -> QuerySubsIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySubsIdWithOptions(request as! QuerySubsIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubscriptionDetailWithOptions(_ request: QuerySubscriptionDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySubscriptionDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySubscriptionDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySubscriptionDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySubscriptionDetail(_ request: QuerySubscriptionDetailRequest) async throws -> QuerySubscriptionDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySubscriptionDetailWithOptions(request as! QuerySubscriptionDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSecretNoWithOptions(_ request: ReleaseSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSecretNo(_ request: ReleaseSecretNoRequest) async throws -> ReleaseSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseSecretNoWithOptions(request as! ReleaseSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unBindAXBWithOptions(_ request: UnBindAXBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnBindAXBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindId)) {
            query["BindId"] = request.bindId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnBindAXB",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnBindAXBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unBindAXB(_ request: UnBindAXBRequest) async throws -> UnBindAXBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unBindAXBWithOptions(request as! UnBindAXBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unBindXBWithOptions(_ request: UnBindXBRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnBindXBResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authId)) {
            query["AuthId"] = request.authId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callerParentId)) {
            query["CallerParentId"] = request.callerParentId!;
        }
        if (!TeaUtils.Client.isUnset(request.customerPoolKey)) {
            query["CustomerPoolKey"] = request.customerPoolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.telX)) {
            query["TelX"] = request.telX ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnBindXB",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnBindXBResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unBindXB(_ request: UnBindXBRequest) async throws -> UnBindXBResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unBindXBWithOptions(request as! UnBindXBRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSubscriptionWithOptions(_ request: UnbindSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindSubscription",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindSubscription(_ request: UnbindSubscriptionRequest) async throws -> UnbindSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unbindSubscriptionWithOptions(request as! UnbindSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockSecretNoWithOptions(_ request: UnlockSecretNoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnlockSecretNoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.secretNo)) {
            query["SecretNo"] = request.secretNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnlockSecretNo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnlockSecretNoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockSecretNo(_ request: UnlockSecretNoRequest) async throws -> UnlockSecretNoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unlockSecretNoWithOptions(request as! UnlockSecretNoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxbBindFixedLineWithOptions(_ tmpReq: UpdateAxbBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAxbBindFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAxbBindFixedLineShrinkRequest = UpdateAxbBindFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            query["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telB)) {
            query["TelB"] = request.telB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAxbBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAxbBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxbBindFixedLine(_ request: UpdateAxbBindFixedLineRequest) async throws -> UpdateAxbBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAxbBindFixedLineWithOptions(request as! UpdateAxbBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxnBindFixedLineWithOptions(_ tmpReq: UpdateAxnBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAxnBindFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAxnBindFixedLineShrinkRequest = UpdateAxnBindFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "Extra", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            query["Extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telB)) {
            query["TelB"] = request.telB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAxnBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAxnBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxnBindFixedLine(_ request: UpdateAxnBindFixedLineRequest) async throws -> UpdateAxnBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAxnBindFixedLineWithOptions(request as! UpdateAxnBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxnExtensionBindFixedLineWithOptions(_ tmpReq: UpdateAxnExtensionBindFixedLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAxnExtensionBindFixedLineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAxnExtensionBindFixedLineShrinkRequest = UpdateAxnExtensionBindFixedLineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extraaxx)) {
            request.extraaxxShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraaxx, "Extraaxx", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anucode)) {
            query["Anucode"] = request.anucode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.anucodecalled)) {
            query["Anucodecalled"] = request.anucodecalled ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["AppId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraaxxShrink)) {
            query["Extraaxx"] = request.extraaxxShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subId)) {
            query["SubId"] = request.subId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subts)) {
            query["Subts"] = request.subts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TAnucodeConnect)) {
            query["TAnucodeConnect"] = request.TAnucodeConnect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.telA)) {
            query["TelA"] = request.telA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ts)) {
            query["Ts"] = request.ts ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAxnExtensionBindFixedLine",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAxnExtensionBindFixedLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAxnExtensionBindFixedLine(_ request: UpdateAxnExtensionBindFixedLineRequest) async throws -> UpdateAxnExtensionBindFixedLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAxnExtensionBindFixedLineWithOptions(request as! UpdateAxnExtensionBindFixedLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscriptionWithOptions(_ request: UpdateSubscriptionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ASRModelId)) {
            query["ASRModelId"] = request.ASRModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ASRStatus)) {
            query["ASRStatus"] = request.ASRStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.callDisplayType)) {
            query["CallDisplayType"] = request.callDisplayType!;
        }
        if (!TeaUtils.Client.isUnset(request.callRestrict)) {
            query["CallRestrict"] = request.callRestrict ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiration)) {
            query["Expiration"] = request.expiration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRecordingEnabled)) {
            query["IsRecordingEnabled"] = request.isRecordingEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoA)) {
            query["PhoneNoA"] = request.phoneNoA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoB)) {
            query["PhoneNoB"] = request.phoneNoB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNoX)) {
            query["PhoneNoX"] = request.phoneNoX ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolKey)) {
            query["PoolKey"] = request.poolKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ringConfig)) {
            query["RingConfig"] = request.ringConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subsId)) {
            query["SubsId"] = request.subsId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubscription",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscription(_ request: UpdateSubscriptionRequest) async throws -> UpdateSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSubscriptionWithOptions(request as! UpdateSubscriptionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
