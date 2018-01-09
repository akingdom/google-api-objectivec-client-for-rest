// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Street View Publish API (streetviewpublish/v1)
// Description:
//   Publishes 360 photos to Google Maps, along with position, orientation, and
//   connectivity metadata. Apps can offer an interface for positioning,
//   connecting, and uploading user-generated Street View images.
// Documentation:
//   https://developers.google.com/streetview/publish/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRStreetViewPublish_BatchDeletePhotosRequest;
@class GTLRStreetViewPublish_BatchUpdatePhotosRequest;
@class GTLRStreetViewPublish_Empty;
@class GTLRStreetViewPublish_Photo;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// view

/** Value: "BASIC" */
GTLR_EXTERN NSString * const kGTLRStreetViewPublishViewBasic;
/** Value: "INCLUDE_DOWNLOAD_URL" */
GTLR_EXTERN NSString * const kGTLRStreetViewPublishViewIncludeDownloadUrl;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Street View Publish query classes.
 */
@interface GTLRStreetViewPublishQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  After the client finishes uploading the photo with the returned
 *  UploadRef,
 *  CreatePhoto
 *  publishes the uploaded Photo to
 *  Street View on Google Maps.
 *  Currently, the only way to set heading, pitch, and roll in CreatePhoto is
 *  through the [Photo Sphere XMP
 *  metadata](https://developers.google.com/streetview/spherical-metadata) in
 *  the photo bytes. The `pose.heading`, `pose.pitch`, `pose.roll`,
 *  `pose.altitude`, and `pose.level` fields in Pose are ignored for
 *  CreatePhoto.
 *  This method returns the following error codes:
 *  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if
 *  the uploaded photo is not a 360 photo.
 *  * google.rpc.Code.NOT_FOUND if the upload reference does not exist.
 *  * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the
 *  storage limit.
 *
 *  Method: streetviewpublish.photo.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotoCreate : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotoCreateWithObject:]

/**
 *  Fetches a @c GTLRStreetViewPublish_Photo.
 *
 *  After the client finishes uploading the photo with the returned
 *  UploadRef,
 *  CreatePhoto
 *  publishes the uploaded Photo to
 *  Street View on Google Maps.
 *  Currently, the only way to set heading, pitch, and roll in CreatePhoto is
 *  through the [Photo Sphere XMP
 *  metadata](https://developers.google.com/streetview/spherical-metadata) in
 *  the photo bytes. The `pose.heading`, `pose.pitch`, `pose.roll`,
 *  `pose.altitude`, and `pose.level` fields in Pose are ignored for
 *  CreatePhoto.
 *  This method returns the following error codes:
 *  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if
 *  the uploaded photo is not a 360 photo.
 *  * google.rpc.Code.NOT_FOUND if the upload reference does not exist.
 *  * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the
 *  storage limit.
 *
 *  @param object The @c GTLRStreetViewPublish_Photo to include in the query.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotoCreate
 */
+ (instancetype)queryWithObject:(GTLRStreetViewPublish_Photo *)object;

@end

/**
 *  Deletes a Photo and its metadata.
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested photo.
 *  * google.rpc.Code.NOT_FOUND if the photo ID does not exist.
 *
 *  Method: streetviewpublish.photo.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotoDelete : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotoDeleteWithphotoId:]

/** Required. ID of the Photo. */
@property(nonatomic, copy, nullable) NSString *photoId;

/**
 *  Fetches a @c GTLRStreetViewPublish_Empty.
 *
 *  Deletes a Photo and its metadata.
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested photo.
 *  * google.rpc.Code.NOT_FOUND if the photo ID does not exist.
 *
 *  @param photoId Required. ID of the Photo.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotoDelete
 */
+ (instancetype)queryWithPhotoId:(NSString *)photoId;

@end

/**
 *  Gets the metadata of the specified
 *  Photo.
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested Photo.
 *  * google.rpc.Code.NOT_FOUND if the requested
 *  Photo does not exist.
 *  * google.rpc.Code.UNAVAILABLE if the requested
 *  Photo is still being indexed.
 *
 *  Method: streetviewpublish.photo.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotoGet : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotoGetWithphotoId:]

/** Required. ID of the Photo. */
@property(nonatomic, copy, nullable) NSString *photoId;

/**
 *  Specifies if a download URL for the photo bytes should be returned in the
 *  Photo response.
 *
 *  Likely values:
 *    @arg @c kGTLRStreetViewPublishViewBasic Value "BASIC"
 *    @arg @c kGTLRStreetViewPublishViewIncludeDownloadUrl Value
 *        "INCLUDE_DOWNLOAD_URL"
 */
@property(nonatomic, copy, nullable) NSString *view;

/**
 *  Fetches a @c GTLRStreetViewPublish_Photo.
 *
 *  Gets the metadata of the specified
 *  Photo.
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested Photo.
 *  * google.rpc.Code.NOT_FOUND if the requested
 *  Photo does not exist.
 *  * google.rpc.Code.UNAVAILABLE if the requested
 *  Photo is still being indexed.
 *
 *  @param photoId Required. ID of the Photo.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotoGet
 */
+ (instancetype)queryWithPhotoId:(NSString *)photoId;

@end

/**
 *  Deletes a list of Photos and their
 *  metadata.
 *  Note that if
 *  BatchDeletePhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchDeletePhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchDeletePhotosResponse.results.
 *  See
 *  DeletePhoto
 *  for specific failures that can occur per photo.
 *
 *  Method: streetviewpublish.photos.batchDelete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotosBatchDelete : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotosBatchDeleteWithObject:]

/**
 *  Fetches a @c GTLRStreetViewPublish_BatchDeletePhotosResponse.
 *
 *  Deletes a list of Photos and their
 *  metadata.
 *  Note that if
 *  BatchDeletePhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchDeletePhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchDeletePhotosResponse.results.
 *  See
 *  DeletePhoto
 *  for specific failures that can occur per photo.
 *
 *  @param object The @c GTLRStreetViewPublish_BatchDeletePhotosRequest to
 *    include in the query.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotosBatchDelete
 */
+ (instancetype)queryWithObject:(GTLRStreetViewPublish_BatchDeletePhotosRequest *)object;

@end

/**
 *  Gets the metadata of the specified
 *  Photo batch.
 *  Note that if
 *  BatchGetPhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchGetPhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchGetPhotosResponse.results.
 *  See
 *  GetPhoto
 *  for specific failures that can occur per photo.
 *
 *  Method: streetviewpublish.photos.batchGet
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotosBatchGet : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotosBatchGet]

/**
 *  Required. IDs of the Photos. For HTTP
 *  GET requests, the URL query parameter should be
 *  `photoIds=<id1>&photoIds=<id2>&...`.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *photoIds;

/**
 *  Specifies if a download URL for the photo bytes should be returned in the
 *  Photo response.
 *
 *  Likely values:
 *    @arg @c kGTLRStreetViewPublishViewBasic Value "BASIC"
 *    @arg @c kGTLRStreetViewPublishViewIncludeDownloadUrl Value
 *        "INCLUDE_DOWNLOAD_URL"
 */
@property(nonatomic, copy, nullable) NSString *view;

/**
 *  Fetches a @c GTLRStreetViewPublish_BatchGetPhotosResponse.
 *
 *  Gets the metadata of the specified
 *  Photo batch.
 *  Note that if
 *  BatchGetPhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchGetPhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchGetPhotosResponse.results.
 *  See
 *  GetPhoto
 *  for specific failures that can occur per photo.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotosBatchGet
 */
+ (instancetype)query;

@end

/**
 *  Updates the metadata of Photos, such
 *  as pose, place association, connections, etc. Changing the pixels of photos
 *  is not supported.
 *  Note that if
 *  BatchUpdatePhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchUpdatePhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchUpdatePhotosResponse.results.
 *  See
 *  UpdatePhoto
 *  for specific failures that can occur per photo.
 *  Only the fields specified in
 *  updateMask
 *  field are used. If `updateMask` is not present, the update applies to all
 *  fields.
 *  <aside class="note"><b>Note:</b> To update
 *  Pose.altitude,
 *  Pose.latLngPair has to be
 *  filled as well. Otherwise, the request will fail.</aside>
 *
 *  Method: streetviewpublish.photos.batchUpdate
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotosBatchUpdate : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotosBatchUpdateWithObject:]

/**
 *  Fetches a @c GTLRStreetViewPublish_BatchUpdatePhotosResponse.
 *
 *  Updates the metadata of Photos, such
 *  as pose, place association, connections, etc. Changing the pixels of photos
 *  is not supported.
 *  Note that if
 *  BatchUpdatePhotos
 *  fails, either critical fields are missing or there was an authentication
 *  error. Even if
 *  BatchUpdatePhotos
 *  succeeds, there may have been failures for single photos in the batch.
 *  These failures will be specified in each
 *  PhotoResponse.status
 *  in
 *  BatchUpdatePhotosResponse.results.
 *  See
 *  UpdatePhoto
 *  for specific failures that can occur per photo.
 *  Only the fields specified in
 *  updateMask
 *  field are used. If `updateMask` is not present, the update applies to all
 *  fields.
 *  <aside class="note"><b>Note:</b> To update
 *  Pose.altitude,
 *  Pose.latLngPair has to be
 *  filled as well. Otherwise, the request will fail.</aside>
 *
 *  @param object The @c GTLRStreetViewPublish_BatchUpdatePhotosRequest to
 *    include in the query.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotosBatchUpdate
 */
+ (instancetype)queryWithObject:(GTLRStreetViewPublish_BatchUpdatePhotosRequest *)object;

@end

/**
 *  Lists all the Photos that belong to
 *  the user.
 *  <aside class="note"><b>Note:</b> Recently created photos that are still
 *  being indexed are not returned in the response.</aside>
 *
 *  Method: streetviewpublish.photos.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotosList : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotosList]

/**
 *  The filter expression. For example: `placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw`.
 *  The only filter supported at the moment is `placeId`.
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  The maximum number of photos to return.
 *  `pageSize` must be non-negative. If `pageSize` is zero or is not provided,
 *  the default page size of 100 will be used.
 *  The number of photos returned in the response may be less than `pageSize`
 *  if the number of photos that belong to the user is less than `pageSize`.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  The
 *  nextPageToken
 *  value returned from a previous
 *  ListPhotos
 *  request, if any.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Specifies if a download URL for the photos bytes should be returned in the
 *  Photos response.
 *
 *  Likely values:
 *    @arg @c kGTLRStreetViewPublishViewBasic Value "BASIC"
 *    @arg @c kGTLRStreetViewPublishViewIncludeDownloadUrl Value
 *        "INCLUDE_DOWNLOAD_URL"
 */
@property(nonatomic, copy, nullable) NSString *view;

/**
 *  Fetches a @c GTLRStreetViewPublish_ListPhotosResponse.
 *
 *  Lists all the Photos that belong to
 *  the user.
 *  <aside class="note"><b>Note:</b> Recently created photos that are still
 *  being indexed are not returned in the response.</aside>
 *
 *  @returns GTLRStreetViewPublishQuery_PhotosList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Creates an upload session to start uploading photo bytes. The upload URL of
 *  the returned UploadRef is used to
 *  upload the bytes for the Photo.
 *  In addition to the photo requirements shown in
 *  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604,
 *  the photo must also meet the following requirements:
 *  * Photo Sphere XMP metadata must be included in the photo medadata. See
 *  https://developers.google.com/streetview/spherical-metadata for the
 *  required fields.
 *  * The pixel size of the photo must meet the size requirements listed in
 *  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604, and
 *  the photo must be a full 360 horizontally.
 *  After the upload is complete, the
 *  UploadRef is used with
 *  CreatePhoto
 *  to create the Photo object entry.
 *
 *  Method: streetviewpublish.photo.startUpload
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotoStartUpload : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotoStartUploadWithObject:]

/**
 *  Fetches a @c GTLRStreetViewPublish_UploadRef.
 *
 *  Creates an upload session to start uploading photo bytes. The upload URL of
 *  the returned UploadRef is used to
 *  upload the bytes for the Photo.
 *  In addition to the photo requirements shown in
 *  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604,
 *  the photo must also meet the following requirements:
 *  * Photo Sphere XMP metadata must be included in the photo medadata. See
 *  https://developers.google.com/streetview/spherical-metadata for the
 *  required fields.
 *  * The pixel size of the photo must meet the size requirements listed in
 *  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604, and
 *  the photo must be a full 360 horizontally.
 *  After the upload is complete, the
 *  UploadRef is used with
 *  CreatePhoto
 *  to create the Photo object entry.
 *
 *  @param object The @c GTLRStreetViewPublish_Empty to include in the query.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotoStartUpload
 */
+ (instancetype)queryWithObject:(GTLRStreetViewPublish_Empty *)object;

@end

/**
 *  Updates the metadata of a Photo, such
 *  as pose, place association, connections, etc. Changing the pixels of a
 *  photo is not supported.
 *  Only the fields specified in the
 *  updateMask
 *  field are used. If `updateMask` is not present, the update applies to all
 *  fields.
 *  <aside class="note"><b>Note:</b> To update
 *  Pose.altitude,
 *  Pose.latLngPair has to be
 *  filled as well. Otherwise, the request will fail.</aside>
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested photo.
 *  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed.
 *  * google.rpc.Code.NOT_FOUND if the requested photo does not exist.
 *  * google.rpc.Code.UNAVAILABLE if the requested
 *  Photo is still being indexed.
 *
 *  Method: streetviewpublish.photo.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeStreetViewPublish
 */
@interface GTLRStreetViewPublishQuery_PhotoUpdate : GTLRStreetViewPublishQuery
// Previous library name was
//   +[GTLQueryStreetViewPublish queryForPhotoUpdateWithObject:identifier:]

/**
 *  Required. A unique identifier for a photo.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Mask that identifies fields on the photo metadata to update.
 *  If not present, the old Photo
 *  metadata will be entirely replaced with the
 *  new Photo metadata in this request.
 *  The update fails if invalid fields are specified. Multiple fields can be
 *  specified in a comma-delimited list.
 *  The following fields are valid:
 *  * `pose.heading`
 *  * `pose.latLngPair`
 *  * `pose.pitch`
 *  * `pose.roll`
 *  * `pose.level`
 *  * `pose.altitude`
 *  * `connections`
 *  * `places`
 *  <aside class="note"><b>Note:</b> Repeated fields in
 *  updateMask
 *  mean the entire set of repeated values will be replaced with the new
 *  contents. For example, if
 *  updateMask
 *  contains `connections` and `UpdatePhotoRequest.photo.connections` is empty,
 *  all connections will be removed.</aside>
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRStreetViewPublish_Photo.
 *
 *  Updates the metadata of a Photo, such
 *  as pose, place association, connections, etc. Changing the pixels of a
 *  photo is not supported.
 *  Only the fields specified in the
 *  updateMask
 *  field are used. If `updateMask` is not present, the update applies to all
 *  fields.
 *  <aside class="note"><b>Note:</b> To update
 *  Pose.altitude,
 *  Pose.latLngPair has to be
 *  filled as well. Otherwise, the request will fail.</aside>
 *  This method returns the following error codes:
 *  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
 *  create the requested photo.
 *  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed.
 *  * google.rpc.Code.NOT_FOUND if the requested photo does not exist.
 *  * google.rpc.Code.UNAVAILABLE if the requested
 *  Photo is still being indexed.
 *
 *  @param object The @c GTLRStreetViewPublish_Photo to include in the query.
 *  @param identifier Required. A unique identifier for a photo.
 *
 *  @returns GTLRStreetViewPublishQuery_PhotoUpdate
 */
+ (instancetype)queryWithObject:(GTLRStreetViewPublish_Photo *)object
                     identifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
