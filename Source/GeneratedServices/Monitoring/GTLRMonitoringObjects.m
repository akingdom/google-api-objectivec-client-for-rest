// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Stackdriver Monitoring API (monitoring/v3)
// Description:
//   Manages your Stackdriver Monitoring data and configurations. Most projects
//   must be associated with a Stackdriver account, with a few exceptions as
//   noted on the individual method pages.
// Documentation:
//   https://cloud.google.com/monitoring/api/

#import "GTLRMonitoringObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRMonitoring_CollectdValue.dataSourceType
NSString * const kGTLRMonitoring_CollectdValue_DataSourceType_Absolute = @"ABSOLUTE";
NSString * const kGTLRMonitoring_CollectdValue_DataSourceType_Counter = @"COUNTER";
NSString * const kGTLRMonitoring_CollectdValue_DataSourceType_Derive = @"DERIVE";
NSString * const kGTLRMonitoring_CollectdValue_DataSourceType_Gauge = @"GAUGE";
NSString * const kGTLRMonitoring_CollectdValue_DataSourceType_UnspecifiedDataSourceType = @"UNSPECIFIED_DATA_SOURCE_TYPE";

// GTLRMonitoring_Field.cardinality
NSString * const kGTLRMonitoring_Field_Cardinality_CardinalityOptional = @"CARDINALITY_OPTIONAL";
NSString * const kGTLRMonitoring_Field_Cardinality_CardinalityRepeated = @"CARDINALITY_REPEATED";
NSString * const kGTLRMonitoring_Field_Cardinality_CardinalityRequired = @"CARDINALITY_REQUIRED";
NSString * const kGTLRMonitoring_Field_Cardinality_CardinalityUnknown = @"CARDINALITY_UNKNOWN";

// GTLRMonitoring_Field.kind
NSString * const kGTLRMonitoring_Field_Kind_TypeBool     = @"TYPE_BOOL";
NSString * const kGTLRMonitoring_Field_Kind_TypeBytes    = @"TYPE_BYTES";
NSString * const kGTLRMonitoring_Field_Kind_TypeDouble   = @"TYPE_DOUBLE";
NSString * const kGTLRMonitoring_Field_Kind_TypeEnum     = @"TYPE_ENUM";
NSString * const kGTLRMonitoring_Field_Kind_TypeFixed32  = @"TYPE_FIXED32";
NSString * const kGTLRMonitoring_Field_Kind_TypeFixed64  = @"TYPE_FIXED64";
NSString * const kGTLRMonitoring_Field_Kind_TypeFloat    = @"TYPE_FLOAT";
NSString * const kGTLRMonitoring_Field_Kind_TypeGroup    = @"TYPE_GROUP";
NSString * const kGTLRMonitoring_Field_Kind_TypeInt32    = @"TYPE_INT32";
NSString * const kGTLRMonitoring_Field_Kind_TypeInt64    = @"TYPE_INT64";
NSString * const kGTLRMonitoring_Field_Kind_TypeMessage  = @"TYPE_MESSAGE";
NSString * const kGTLRMonitoring_Field_Kind_TypeSfixed32 = @"TYPE_SFIXED32";
NSString * const kGTLRMonitoring_Field_Kind_TypeSfixed64 = @"TYPE_SFIXED64";
NSString * const kGTLRMonitoring_Field_Kind_TypeSint32   = @"TYPE_SINT32";
NSString * const kGTLRMonitoring_Field_Kind_TypeSint64   = @"TYPE_SINT64";
NSString * const kGTLRMonitoring_Field_Kind_TypeString   = @"TYPE_STRING";
NSString * const kGTLRMonitoring_Field_Kind_TypeUint32   = @"TYPE_UINT32";
NSString * const kGTLRMonitoring_Field_Kind_TypeUint64   = @"TYPE_UINT64";
NSString * const kGTLRMonitoring_Field_Kind_TypeUnknown  = @"TYPE_UNKNOWN";

// GTLRMonitoring_LabelDescriptor.valueType
NSString * const kGTLRMonitoring_LabelDescriptor_ValueType_Bool = @"BOOL";
NSString * const kGTLRMonitoring_LabelDescriptor_ValueType_Int64 = @"INT64";
NSString * const kGTLRMonitoring_LabelDescriptor_ValueType_String = @"STRING";

// GTLRMonitoring_MetricDescriptor.metricKind
NSString * const kGTLRMonitoring_MetricDescriptor_MetricKind_Cumulative = @"CUMULATIVE";
NSString * const kGTLRMonitoring_MetricDescriptor_MetricKind_Delta = @"DELTA";
NSString * const kGTLRMonitoring_MetricDescriptor_MetricKind_Gauge = @"GAUGE";
NSString * const kGTLRMonitoring_MetricDescriptor_MetricKind_MetricKindUnspecified = @"METRIC_KIND_UNSPECIFIED";

// GTLRMonitoring_MetricDescriptor.valueType
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_Bool = @"BOOL";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_Distribution = @"DISTRIBUTION";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_Double = @"DOUBLE";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_Int64 = @"INT64";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_Money = @"MONEY";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_String = @"STRING";
NSString * const kGTLRMonitoring_MetricDescriptor_ValueType_ValueTypeUnspecified = @"VALUE_TYPE_UNSPECIFIED";

// GTLRMonitoring_ResourceGroup.resourceType
NSString * const kGTLRMonitoring_ResourceGroup_ResourceType_AwsElbLoadBalancer = @"AWS_ELB_LOAD_BALANCER";
NSString * const kGTLRMonitoring_ResourceGroup_ResourceType_Instance = @"INSTANCE";
NSString * const kGTLRMonitoring_ResourceGroup_ResourceType_ResourceTypeUnspecified = @"RESOURCE_TYPE_UNSPECIFIED";

// GTLRMonitoring_TimeSeries.metricKind
NSString * const kGTLRMonitoring_TimeSeries_MetricKind_Cumulative = @"CUMULATIVE";
NSString * const kGTLRMonitoring_TimeSeries_MetricKind_Delta   = @"DELTA";
NSString * const kGTLRMonitoring_TimeSeries_MetricKind_Gauge   = @"GAUGE";
NSString * const kGTLRMonitoring_TimeSeries_MetricKind_MetricKindUnspecified = @"METRIC_KIND_UNSPECIFIED";

// GTLRMonitoring_TimeSeries.valueType
NSString * const kGTLRMonitoring_TimeSeries_ValueType_Bool     = @"BOOL";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_Distribution = @"DISTRIBUTION";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_Double   = @"DOUBLE";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_Int64    = @"INT64";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_Money    = @"MONEY";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_String   = @"STRING";
NSString * const kGTLRMonitoring_TimeSeries_ValueType_ValueTypeUnspecified = @"VALUE_TYPE_UNSPECIFIED";

// GTLRMonitoring_Type.syntax
NSString * const kGTLRMonitoring_Type_Syntax_SyntaxProto2 = @"SYNTAX_PROTO2";
NSString * const kGTLRMonitoring_Type_Syntax_SyntaxProto3 = @"SYNTAX_PROTO3";

// GTLRMonitoring_UptimeCheckConfig.selectedRegions
NSString * const kGTLRMonitoring_UptimeCheckConfig_SelectedRegions_AsiaPacific = @"ASIA_PACIFIC";
NSString * const kGTLRMonitoring_UptimeCheckConfig_SelectedRegions_Europe = @"EUROPE";
NSString * const kGTLRMonitoring_UptimeCheckConfig_SelectedRegions_RegionUnspecified = @"REGION_UNSPECIFIED";
NSString * const kGTLRMonitoring_UptimeCheckConfig_SelectedRegions_SouthAmerica = @"SOUTH_AMERICA";
NSString * const kGTLRMonitoring_UptimeCheckConfig_SelectedRegions_Usa = @"USA";

// GTLRMonitoring_UptimeCheckIp.region
NSString * const kGTLRMonitoring_UptimeCheckIp_Region_AsiaPacific = @"ASIA_PACIFIC";
NSString * const kGTLRMonitoring_UptimeCheckIp_Region_Europe   = @"EUROPE";
NSString * const kGTLRMonitoring_UptimeCheckIp_Region_RegionUnspecified = @"REGION_UNSPECIFIED";
NSString * const kGTLRMonitoring_UptimeCheckIp_Region_SouthAmerica = @"SOUTH_AMERICA";
NSString * const kGTLRMonitoring_UptimeCheckIp_Region_Usa      = @"USA";

// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_BasicAuthentication
//

@implementation GTLRMonitoring_BasicAuthentication
@dynamic password, username;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_BucketOptions
//

@implementation GTLRMonitoring_BucketOptions
@dynamic explicitBuckets, exponentialBuckets, linearBuckets;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CollectdPayload
//

@implementation GTLRMonitoring_CollectdPayload
@dynamic endTime, metadata, plugin, pluginInstance, startTime, type,
         typeInstance, values;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"values" : [GTLRMonitoring_CollectdValue class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CollectdPayload_Metadata
//

@implementation GTLRMonitoring_CollectdPayload_Metadata

+ (Class)classForAdditionalProperties {
  return [GTLRMonitoring_TypedValue class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CollectdPayloadError
//

@implementation GTLRMonitoring_CollectdPayloadError
@dynamic error, index, valueErrors;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"valueErrors" : [GTLRMonitoring_CollectdValueError class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CollectdValue
//

@implementation GTLRMonitoring_CollectdValue
@dynamic dataSourceName, dataSourceType, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CollectdValueError
//

@implementation GTLRMonitoring_CollectdValueError
@dynamic error, index;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ContentMatcher
//

@implementation GTLRMonitoring_ContentMatcher
@dynamic content;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CreateCollectdTimeSeriesRequest
//

@implementation GTLRMonitoring_CreateCollectdTimeSeriesRequest
@dynamic collectdPayloads, collectdVersion, resource;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"collectdPayloads" : [GTLRMonitoring_CollectdPayload class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CreateCollectdTimeSeriesResponse
//

@implementation GTLRMonitoring_CreateCollectdTimeSeriesResponse
@dynamic payloadErrors;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"payloadErrors" : [GTLRMonitoring_CollectdPayloadError class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_CreateTimeSeriesRequest
//

@implementation GTLRMonitoring_CreateTimeSeriesRequest
@dynamic timeSeries;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeSeries" : [GTLRMonitoring_TimeSeries class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Distribution
//

@implementation GTLRMonitoring_Distribution
@dynamic bucketCounts, bucketOptions, count, mean, range, sumOfSquaredDeviation;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bucketCounts" : [NSNumber class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Empty
//

@implementation GTLRMonitoring_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Explicit
//

@implementation GTLRMonitoring_Explicit
@dynamic bounds;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"bounds" : [NSNumber class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Exponential
//

@implementation GTLRMonitoring_Exponential
@dynamic growthFactor, numFiniteBuckets, scale;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Field
//

@implementation GTLRMonitoring_Field
@dynamic cardinality, defaultValue, jsonName, kind, name, number, oneofIndex,
         options, packed, typeUrl;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"options" : [GTLRMonitoring_Option class]
  };
  return map;
}

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Group
//

@implementation GTLRMonitoring_Group
@dynamic displayName, filter, isCluster, name, parentName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_HttpCheck
//

@implementation GTLRMonitoring_HttpCheck
@dynamic authInfo, headers, maskHeaders, path, port, useSsl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_HttpCheck_Headers
//

@implementation GTLRMonitoring_HttpCheck_Headers

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_InternalChecker
//

@implementation GTLRMonitoring_InternalChecker
@dynamic checkerId, displayName, gcpZone, network, projectId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_LabelDescriptor
//

@implementation GTLRMonitoring_LabelDescriptor
@dynamic descriptionProperty, key, valueType;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Linear
//

@implementation GTLRMonitoring_Linear
@dynamic numFiniteBuckets, offset, width;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListGroupMembersResponse
//

@implementation GTLRMonitoring_ListGroupMembersResponse
@dynamic members, nextPageToken, totalSize;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [GTLRMonitoring_MonitoredResource class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"members";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListGroupsResponse
//

@implementation GTLRMonitoring_ListGroupsResponse
@dynamic group, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"group" : [GTLRMonitoring_Group class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"group";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListMetricDescriptorsResponse
//

@implementation GTLRMonitoring_ListMetricDescriptorsResponse
@dynamic metricDescriptors, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"metricDescriptors" : [GTLRMonitoring_MetricDescriptor class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"metricDescriptors";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListMonitoredResourceDescriptorsResponse
//

@implementation GTLRMonitoring_ListMonitoredResourceDescriptorsResponse
@dynamic nextPageToken, resourceDescriptors;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resourceDescriptors" : [GTLRMonitoring_MonitoredResourceDescriptor class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resourceDescriptors";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListTimeSeriesResponse
//

@implementation GTLRMonitoring_ListTimeSeriesResponse
@dynamic nextPageToken, timeSeries;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"timeSeries" : [GTLRMonitoring_TimeSeries class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"timeSeries";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListUptimeCheckConfigsResponse
//

@implementation GTLRMonitoring_ListUptimeCheckConfigsResponse
@dynamic nextPageToken, uptimeCheckConfigs;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"uptimeCheckConfigs" : [GTLRMonitoring_UptimeCheckConfig class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"uptimeCheckConfigs";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ListUptimeCheckIpsResponse
//

@implementation GTLRMonitoring_ListUptimeCheckIpsResponse
@dynamic nextPageToken, uptimeCheckIps;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"uptimeCheckIps" : [GTLRMonitoring_UptimeCheckIp class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"uptimeCheckIps";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Metric
//

@implementation GTLRMonitoring_Metric
@dynamic labels, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Metric_Labels
//

@implementation GTLRMonitoring_Metric_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MetricDescriptor
//

@implementation GTLRMonitoring_MetricDescriptor
@dynamic descriptionProperty, displayName, labels, metricKind, name, type, unit,
         valueType;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"labels" : [GTLRMonitoring_LabelDescriptor class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResource
//

@implementation GTLRMonitoring_MonitoredResource
@dynamic labels, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResource_Labels
//

@implementation GTLRMonitoring_MonitoredResource_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResourceDescriptor
//

@implementation GTLRMonitoring_MonitoredResourceDescriptor
@dynamic descriptionProperty, displayName, labels, name, type;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"labels" : [GTLRMonitoring_LabelDescriptor class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResourceMetadata
//

@implementation GTLRMonitoring_MonitoredResourceMetadata
@dynamic systemLabels, userLabels;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResourceMetadata_SystemLabels
//

@implementation GTLRMonitoring_MonitoredResourceMetadata_SystemLabels

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_MonitoredResourceMetadata_UserLabels
//

@implementation GTLRMonitoring_MonitoredResourceMetadata_UserLabels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Option
//

@implementation GTLRMonitoring_Option
@dynamic name, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Option_Value
//

@implementation GTLRMonitoring_Option_Value

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Point
//

@implementation GTLRMonitoring_Point
@dynamic interval, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Range
//

@implementation GTLRMonitoring_Range
@dynamic max, min;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_ResourceGroup
//

@implementation GTLRMonitoring_ResourceGroup
@dynamic groupId, resourceType;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_SourceContext
//

@implementation GTLRMonitoring_SourceContext
@dynamic fileName;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Status
//

@implementation GTLRMonitoring_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRMonitoring_Status_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Status_Details_Item
//

@implementation GTLRMonitoring_Status_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_TcpCheck
//

@implementation GTLRMonitoring_TcpCheck
@dynamic port;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_TimeInterval
//

@implementation GTLRMonitoring_TimeInterval
@dynamic endTime, startTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_TimeSeries
//

@implementation GTLRMonitoring_TimeSeries
@dynamic metadata, metric, metricKind, points, resource, valueType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"points" : [GTLRMonitoring_Point class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_Type
//

@implementation GTLRMonitoring_Type
@dynamic fields, name, oneofs, options, sourceContext, syntax;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"fields" : [GTLRMonitoring_Field class],
    @"oneofs" : [NSString class],
    @"options" : [GTLRMonitoring_Option class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_TypedValue
//

@implementation GTLRMonitoring_TypedValue
@dynamic boolValue, distributionValue, doubleValue, int64Value, stringValue;
@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_UptimeCheckConfig
//

@implementation GTLRMonitoring_UptimeCheckConfig
@dynamic contentMatchers, displayName, httpCheck, internalCheckers, isInternal,
         monitoredResource, name, period, resourceGroup, selectedRegions,
         tcpCheck, timeout;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"contentMatchers" : [GTLRMonitoring_ContentMatcher class],
    @"internalCheckers" : [GTLRMonitoring_InternalChecker class],
    @"selectedRegions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRMonitoring_UptimeCheckIp
//

@implementation GTLRMonitoring_UptimeCheckIp
@dynamic ipAddress, location, region;
@end
