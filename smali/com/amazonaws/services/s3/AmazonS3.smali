###### Class com.amazonaws.services.s3.AmazonS3 (com.amazonaws.services.s3.AmazonS3)
.class public interface abstract Lcom/amazonaws/services/s3/AmazonS3;
.super Ljava/lang/Object;
.source "AmazonS3.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3DirectSpi;


# virtual methods
.method public abstract A(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetObjectAclRequest;)Lcom/amazonaws/services/s3/model/AccessControlList;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/CreateBucketRequest;)Lcom/amazonaws/services/s3/model/Bucket;
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/Region;)Lcom/amazonaws/services/s3/model/Bucket;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketAccelerateConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketCrossOriginConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketLifecycleConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketLoggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketNotificationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketPolicyRequest;)Lcom/amazonaws/services/s3/model/BucketPolicy;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketReplicationConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketTaggingConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketVersioningConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketWebsiteConfigurationRequest;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyObjectResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/GetObjectTaggingResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/HeadBucketRequest;)Lcom/amazonaws/services/s3/model/HeadBucketResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsRequest;)Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListObjectsV2Request;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListNextBatchOfObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
.end method

.method public abstract a()Lcom/amazonaws/services/s3/model/Owner;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetS3AccountOwnerRequest;)Lcom/amazonaws/services/s3/model/Owner;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectResult;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketAnalyticsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketInventoryConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationRequest;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)Lcom/amazonaws/services/s3/model/SetBucketMetricsConfigurationResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetObjectTaggingRequest;)Lcom/amazonaws/services/s3/model/SetObjectTaggingResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListNextBatchOfVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListVersionsRequest;)Lcom/amazonaws/services/s3/model/VersionListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/VersionListing;)Lcom/amazonaws/services/s3/model/VersionListing;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/VersionListing;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GetBucketLocationRequest;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/amazonaws/HttpMethod;)Ljava/net/URL;
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/ListBucketsRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/amazonaws/regions/Region;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/S3ClientOptions;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketCrossOriginConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketLifecycleConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketPolicyRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketReplicationConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketTaggingConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteBucketWebsiteConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/DeleteVersionRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/RestoreObjectRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketAccelerateConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketAclRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketCrossOriginConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketLifecycleConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketLoggingConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketNotificationConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketPolicyRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketReplicationConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketTaggingConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketVersioningConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetBucketWebsiteConfigurationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/s3/model/SetObjectAclRequest;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/StorageClass;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
.end method

.method public abstract a_(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
.end method

.method public abstract a_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/S3ResponseMetadata;
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectListing;
.end method

.method public abstract c(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/PutObjectResult;
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/VersionListing;
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
.end method

.method public abstract e(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Bucket;
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
.end method

.method public abstract g(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AccessControlList;
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
.end method

.method public abstract g_()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Bucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract h(Ljava/lang/String;)V
.end method

.method public abstract h_()Lcom/amazonaws/services/s3/model/Region;
.end method

.method public abstract i(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.end method

.method public abstract j(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract k(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end method

.method public abstract k(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketMetricsConfigurationResult;
.end method

.method public abstract l(Ljava/lang/String;)V
.end method

.method public abstract m(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
.end method

.method public abstract m(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketMetricsConfigurationResult;
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketAnalyticsConfigurationResult;
.end method

.method public abstract n(Ljava/lang/String;)V
.end method

.method public abstract o(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketAnalyticsConfigurationResult;
.end method

.method public abstract p(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteBucketInventoryConfigurationResult;
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public abstract q(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;
.end method

.method public abstract q(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;
.end method

.method public abstract r(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract s(Ljava/lang/String;)V
.end method

.method public abstract t(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketPolicy;
.end method

.method public abstract u(Ljava/lang/String;)V
.end method

.method public abstract v(Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;)V
.end method

.method public abstract x(Ljava/lang/String;)Z
.end method

.method public abstract y(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.end method

.method public abstract z(Ljava/lang/String;)V
.end method
