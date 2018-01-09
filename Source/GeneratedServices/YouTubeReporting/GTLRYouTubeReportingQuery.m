// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   YouTube Reporting API (youtubereporting/v1)
// Description:
//   Schedules reporting jobs containing your YouTube Analytics data and
//   downloads the resulting bulk data reports in the form of CSV files.
// Documentation:
//   https://developers.google.com/youtube/reporting/v1/reports/

#import "GTLRYouTubeReportingQuery.h"

#import "GTLRYouTubeReportingObjects.h"

@implementation GTLRYouTubeReportingQuery

@dynamic fields;

@end

@implementation GTLRYouTubeReportingQuery_JobsCreate

@dynamic onBehalfOfContentOwner;

+ (instancetype)queryWithObject:(GTLRYouTubeReporting_Job *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"v1/jobs";
  GTLRYouTubeReportingQuery_JobsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRYouTubeReporting_Job class];
  query.loggingName = @"youtubereporting.jobs.create";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_JobsDelete

@dynamic jobId, onBehalfOfContentOwner;

+ (instancetype)queryWithJobId:(NSString *)jobId {
  NSArray *pathParams = @[ @"jobId" ];
  NSString *pathURITemplate = @"v1/jobs/{jobId}";
  GTLRYouTubeReportingQuery_JobsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRYouTubeReporting_Empty class];
  query.loggingName = @"youtubereporting.jobs.delete";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_JobsGet

@dynamic jobId, onBehalfOfContentOwner;

+ (instancetype)queryWithJobId:(NSString *)jobId {
  NSArray *pathParams = @[ @"jobId" ];
  NSString *pathURITemplate = @"v1/jobs/{jobId}";
  GTLRYouTubeReportingQuery_JobsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRYouTubeReporting_Job class];
  query.loggingName = @"youtubereporting.jobs.get";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_JobsList

@dynamic includeSystemManaged, onBehalfOfContentOwner, pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/jobs";
  GTLRYouTubeReportingQuery_JobsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRYouTubeReporting_ListJobsResponse class];
  query.loggingName = @"youtubereporting.jobs.list";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_JobsReportsGet

@dynamic jobId, onBehalfOfContentOwner, reportId;

+ (instancetype)queryWithJobId:(NSString *)jobId
                      reportId:(NSString *)reportId {
  NSArray *pathParams = @[
    @"jobId", @"reportId"
  ];
  NSString *pathURITemplate = @"v1/jobs/{jobId}/reports/{reportId}";
  GTLRYouTubeReportingQuery_JobsReportsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.jobId = jobId;
  query.reportId = reportId;
  query.expectedObjectClass = [GTLRYouTubeReporting_Report class];
  query.loggingName = @"youtubereporting.jobs.reports.get";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_JobsReportsList

@dynamic createdAfter, jobId, onBehalfOfContentOwner, pageSize, pageToken,
         startTimeAtOrAfter, startTimeBefore;

+ (instancetype)queryWithJobId:(NSString *)jobId {
  NSArray *pathParams = @[ @"jobId" ];
  NSString *pathURITemplate = @"v1/jobs/{jobId}/reports";
  GTLRYouTubeReportingQuery_JobsReportsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.jobId = jobId;
  query.expectedObjectClass = [GTLRYouTubeReporting_ListReportsResponse class];
  query.loggingName = @"youtubereporting.jobs.reports.list";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_MediaDownload

@dynamic resourceName;

+ (instancetype)queryWithResourceName:(NSString *)resourceName {
  NSArray *pathParams = @[ @"resourceName" ];
  NSString *pathURITemplate = @"v1/media/{+resourceName}";
  GTLRYouTubeReportingQuery_MediaDownload *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resourceName = resourceName;
  query.expectedObjectClass = [GTLRYouTubeReporting_GdataMedia class];
  query.loggingName = @"youtubereporting.media.download";
  return query;
}

+ (instancetype)queryForMediaWithResourceName:(NSString *)resourceName {
  GTLRYouTubeReportingQuery_MediaDownload *query =
    [self queryWithResourceName:resourceName];
  query.downloadAsDataObjectType = @"media";
  query.loggingName = @"Download youtubereporting.media.download";
  return query;
}

@end

@implementation GTLRYouTubeReportingQuery_ReportTypesList

@dynamic includeSystemManaged, onBehalfOfContentOwner, pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/reportTypes";
  GTLRYouTubeReportingQuery_ReportTypesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRYouTubeReporting_ListReportTypesResponse class];
  query.loggingName = @"youtubereporting.reportTypes.list";
  return query;
}

@end
