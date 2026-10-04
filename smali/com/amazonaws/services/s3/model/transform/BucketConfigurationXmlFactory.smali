###### Class com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory (com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory)
.class public Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;,
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;,
        Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V
    .registers 7

    const-string v0, "Rule"

    .line 422
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 423
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "ID"

    .line 424
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 426
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->b(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V

    const-string v0, "Status"

    .line 427
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 428
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->m()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    .line 430
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 431
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->b(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 433
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_ad

    const-string v0, "Expiration"

    .line 437
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 438
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c()I

    move-result v0

    if-eq v0, v1, :cond_79

    const-string v0, "Days"

    .line 439
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 441
    :cond_79
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_94

    const-string v0, "Date"

    .line 442
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 445
    :cond_94
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->l()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_aa

    const-string v0, "ExpiredObjectDeleteMarker"

    .line 446
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 448
    :cond_aa
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 451
    :cond_ad
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d()I

    move-result v0

    if-eq v0, v1, :cond_d0

    const-string v0, "NoncurrentVersionExpiration"

    .line 452
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "NoncurrentDays"

    .line 453
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 455
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d()I

    move-result v1

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 457
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 460
    :cond_d0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object v0

    if-eqz v0, :cond_f7

    const-string v0, "AbortIncompleteMultipartUpload"

    .line 461
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "DaysAfterInitiation"

    .line 462
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 463
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 462
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    .line 464
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 465
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 468
    :cond_f7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V
    .registers 6

    const-string v0, "CORSRule"

    .line 575
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 576
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "ID"

    .line 577
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 579
    :cond_1c
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 580
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "AllowedOrigin"

    .line 581
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_2a

    .line 584
    :cond_44
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 585
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v2, "AllowedMethod"

    .line 586
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_52

    .line 589
    :cond_70
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->d()I

    move-result v0

    if-eqz v0, :cond_8b

    const-string v0, "MaxAgeSeconds"

    .line 590
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 592
    :cond_8b
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 593
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ExposeHeader"

    .line 594
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_99

    .line 597
    :cond_b3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 598
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AllowedHeader"

    .line 599
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_c1

    .line 602
    :cond_db
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V
    .registers 6

    .line 216
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Event"

    .line 217
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_8

    .line 220
    :cond_22
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->e()Lcom/amazonaws/services/s3/model/Filter;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 222
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/Filter;)V

    const-string v0, "Filter"

    .line 223
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 224
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->a()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 225
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->a()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V

    const-string v0, "S3Key"

    .line 226
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 227
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Filter;->a()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/FilterRule;

    const-string v1, "FilterRule"

    .line 228
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Name"

    .line 229
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/FilterRule;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Value"

    .line 230
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/FilterRule;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_4e

    .line 233
    :cond_85
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 235
    :cond_88
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_8b
    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V
    .registers 5

    const-string v0, "RoutingRule"

    .line 606
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 607
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->a()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v1, "Condition"

    .line 609
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "KeyPrefixEquals"

    .line 610
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 611
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 612
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 614
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 616
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    const-string v1, "HttpErrorCodeReturnedEquals "

    .line 617
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 618
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 621
    :cond_3c
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_3f
    const-string v0, "Redirect"

    .line 624
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 625
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->b()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object p2

    if-eqz p2, :cond_bd

    .line 627
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v0, "Protocol"

    .line 628
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 631
    :cond_61
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const-string v0, "HostName"

    .line 632
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 635
    :cond_78
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    const-string v0, "ReplaceKeyPrefixWith"

    .line 636
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 639
    :cond_8f
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    const-string v0, "ReplaceKeyWith"

    .line 640
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 643
    :cond_a6
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    const-string v0, "HttpRedirectCode"

    .line 644
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RedirectRule;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 647
    :cond_bd
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 648
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Tag"

    .line 1016
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Key"

    .line 1017
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Tag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Value"

    .line 1018
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/Tag;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 1019
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V
    .registers 6

    const-string v0, "TagSet"

    .line 779
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 780
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/TagSet;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Tag"

    .line 781
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Key"

    .line 782
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Value"

    .line 783
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/amazonaws/services/s3/model/TagSet;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 784
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_11

    .line 786
    :cond_44
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Destination"

    .line 873
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 875
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->a()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v0, "S3BucketDestination"

    .line 876
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 878
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->a()Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    move-result-object p2

    const-string v0, "Format"

    .line 879
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BucketAccountId"

    .line 880
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Bucket"

    .line 881
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Prefix"

    .line 882
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 886
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Filter"

    .line 833
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 834
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->a()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 835
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 843
    :cond_3
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "StorageClassAnalysis"

    .line 852
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 853
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->a()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 854
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->a()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    move-result-object p2

    const-string v0, "DataExport"

    .line 856
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "OutputSchemaVersion"

    .line 858
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->b()Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    .line 861
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 864
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Destination"

    .line 722
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 724
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->a()Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    move-result-object p2

    if-eqz p2, :cond_3a

    const-string v0, "S3BucketDestination"

    .line 726
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "AccountId"

    .line 727
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Bucket"

    .line 728
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Prefix"

    .line 729
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Format"

    .line 730
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 733
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Filter"

    .line 741
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 742
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->a()Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    .line 743
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 751
    :cond_3
    instance-of v0, p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    if-eqz v0, :cond_10

    .line 752
    check-cast p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Schedule"

    .line 761
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "Frequency"

    .line 762
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Filter"

    .line 526
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 527
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->a()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 528
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 535
    :cond_3
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "Filter"

    .line 951
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 952
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->a()Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 953
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 961
    :cond_3
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;-><init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Prefix"

    .line 1009
    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p3, :cond_d

    .line 993
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_d
    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_6b

    .line 472
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6b

    .line 476
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    if-eqz v0, :cond_d

    const-string v1, "Transition"

    .line 478
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 479
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_39

    const-string v1, "Date"

    .line 480
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 481
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->d()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 482
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 484
    :cond_39
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_53

    const-string v1, "Days"

    .line 485
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 486
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 487
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_53
    const-string v1, "StorageClass"

    .line 490
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 491
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 492
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 493
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_d

    :cond_6a
    return-void

    :cond_6b
    :goto_6b
    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/Filter;)V
    .registers 3

    .line 240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/Filter;->a()Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object p1

    if-eqz p1, :cond_7

    return-void

    .line 241
    :cond_7
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Cannot have a Filter without any criteria"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/S3KeyFilter;)V
    .registers 3

    .line 249
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 250
    :cond_b
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Cannot have an S3KeyFilter without any filter rules"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)Z
    .registers 4

    .line 570
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_16

    .line 571
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->l()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p1, 0x1

    :goto_17
    return p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/TagSet;)Z
    .registers 3

    if-eqz p1, :cond_14

    .line 790
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/TagSet;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/TagSet;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private a(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1023
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private b(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V
    .registers 4

    .line 1000
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->m()Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    move-result-object v0

    if-nez v0, :cond_21

    const-string v0, "Prefix"

    .line 1001
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string p2, ""

    goto :goto_19

    :cond_15
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b()Ljava/lang/String;

    move-result-object p2

    :goto_19
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_27

    .line 1002
    :cond_21
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    :goto_27
    return-void

    .line 1003
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Prefix cannot be used with Filter. Use LifecyclePrefixPredicate to create a LifecycleFilter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_52

    .line 500
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_52

    .line 504
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    if-eqz v0, :cond_d

    const-string v1, "NoncurrentVersionTransition"

    .line 506
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 507
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    const-string v1, "NoncurrentDays"

    .line 508
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 509
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 510
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    :cond_3a
    const-string v1, "StorageClass"

    .line 513
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 514
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->b()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 515
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 516
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_d

    :cond_51
    return-void

    :cond_52
    :goto_52
    return-void
.end method

.method private c(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/XmlWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 767
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "OptionalFields"

    .line 771
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 772
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Field"

    .line 773
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_10

    .line 775
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;)[B
    .registers 6

    .line 123
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "AccelerateConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Status"

    .line 125
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketAccelerateConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 126
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 127
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B
    .registers 6

    .line 409
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "CORSConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 410
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 412
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/CORSRule;

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V

    goto :goto_16

    .line 416
    :cond_26
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 418
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B
    .registers 4

    .line 381
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "LifecycleConfiguration"

    .line 382
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 384
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V

    goto :goto_12

    .line 388
    :cond_22
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 390
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B
    .registers 6

    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "BucketLoggingStatus"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 145
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->a()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "LoggingEnabled"

    .line 146
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "TargetBucket"

    .line 147
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "TargetPrefix"

    .line 148
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 149
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 151
    :cond_42
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 153
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B
    .registers 7

    .line 164
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "NotificationConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 167
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->a()Ljava/util/Map;

    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    .line 173
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    if-eqz v3, :cond_63

    const-string v3, "TopicConfiguration"

    .line 174
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 175
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Topic"

    .line 176
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .line 177
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 180
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1a

    .line 181
    :cond_63
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    if-eqz v3, :cond_94

    const-string v3, "QueueConfiguration"

    .line 182
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 183
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Queue"

    .line 184
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    .line 185
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/QueueConfiguration;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 188
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1a

    .line 189
    :cond_94
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    if-eqz v3, :cond_d7

    const-string v3, "CloudFunctionConfiguration"

    .line 190
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 191
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "InvocationRole"

    .line 192
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;

    .line 194
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->a()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "CloudFunction"

    .line 196
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 197
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CloudFunctionConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 200
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_1a

    .line 201
    :cond_d7
    instance-of v3, v1, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    if-eqz v3, :cond_1a

    const-string v3, "CloudFunctionConfiguration"

    .line 202
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "Id"

    .line 203
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "CloudFunction"

    .line 204
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/amazonaws/services/s3/model/LambdaConfiguration;

    .line 205
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/NotificationConfiguration;)V

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_1a

    .line 211
    :cond_109
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 212
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;)[B
    .registers 6

    .line 255
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "ReplicationConfiguration"

    .line 256
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 258
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->b()Ljava/util/Map;

    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Role"

    .line 261
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 263
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ReplicationRule;

    const-string v3, "Rule"

    .line 267
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v3, "ID"

    .line 268
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Prefix"

    .line 269
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Status"

    .line 270
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 272
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationRule;->c()Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    move-result-object v1

    const-string v2, "Destination"

    .line 273
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Bucket"

    .line 274
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 275
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    const-string v2, "StorageClass"

    .line 276
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 278
    :cond_a4
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 280
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto/16 :goto_27

    .line 282
    :cond_ac
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 283
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B
    .registers 4

    .line 665
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "Tagging"

    .line 666
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 668
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/TagSet;

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V

    goto :goto_12

    .line 672
    :cond_22
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 674
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B
    .registers 6

    .line 98
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "VersioningConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Status"

    .line 100
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->b()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "MfaDelete"

    .line 105
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    const-string v1, "Enabled"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_4a

    :cond_3b
    const-string p1, "MfaDelete"

    .line 107
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    const-string v1, "Disabled"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 111
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 113
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B
    .registers 7

    .line 298
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "WebsiteConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 301
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v1, "IndexDocument"

    .line 302
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "Suffix"

    .line 303
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 304
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 305
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 308
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v1, "ErrorDocument"

    .line 309
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    const-string v2, "Key"

    .line 310
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 311
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 314
    :cond_4e
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    if-eqz v1, :cond_b9

    const-string v2, "RedirectAllRequestsTo"

    .line 316
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 317
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    const-string v3, "Protocol"

    .line 318
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 321
    :cond_71
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    const-string v3, "HostName"

    .line 322
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 325
    :cond_88
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9f

    const-string v3, "ReplaceKeyPrefixWith"

    .line 326
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    .line 327
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 330
    :cond_9f
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b6

    const-string v3, "ReplaceKeyWith"

    .line 331
    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 333
    :cond_b6
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 336
    :cond_b9
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ea

    .line 337
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ea

    const-string v1, "RoutingRules"

    .line 339
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 341
    invoke-direct {p0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V

    goto :goto_d7

    .line 344
    :cond_e7
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 347
    :cond_ea
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 348
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;)[B
    .registers 6

    .line 815
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "AnalyticsConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 817
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 819
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->b()Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    .line 821
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->c()Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    .line 823
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 825
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;)[B
    .registers 6

    .line 700
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "InventoryConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 701
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 703
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "IsEnabled"

    .line 704
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "IncludedObjectVersions"

    .line 705
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 707
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b()Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 708
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d()Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 709
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g()Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 710
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->c(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/util/List;)V

    .line 712
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 714
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;)[B
    .registers 6

    .line 934
    new-instance v0, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v1, "MetricsConfiguration"

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 936
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "Id"

    .line 938
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->b()Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 941
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 943
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1
.end method

###### Class com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory.AnalyticsPredicateVisitorImpl (com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl)
.class Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsPredicateVisitorImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private final b:Lcom/amazonaws/services/s3/internal/XmlWriter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V
    .registers 3

    .line 892
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;)V
    .registers 4

    .line 908
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "And"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 909
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;

    .line 910
    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;->a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPredicateVisitor;)V

    goto :goto_f

    .line 912
    :cond_1f
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;)V
    .registers 4

    .line 898
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;)V
    .registers 4

    .line 903
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$AnalyticsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;->a()Lcom/amazonaws/services/s3/model/Tag;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V

    return-void
.end method

###### Class com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory.LifecyclePredicateVisitorImpl (com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl)
.class Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecyclePredicateVisitorImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private final b:Lcom/amazonaws/services/s3/internal/XmlWriter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V
    .registers 3

    .line 541
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;)V
    .registers 4

    .line 557
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "And"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 558
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;

    .line 559
    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;->a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePredicateVisitor;)V

    goto :goto_f

    .line 561
    :cond_1f
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;)V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$LifecyclePredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;->a()Lcom/amazonaws/services/s3/model/Tag;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V

    return-void
.end method

###### Class com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory.MetricsPredicateVisitorImpl (com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl)
.class Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetricsPredicateVisitorImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private final b:Lcom/amazonaws/services/s3/internal/XmlWriter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;)V
    .registers 3

    .line 967
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;)V
    .registers 4

    .line 983
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v1, "And"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 984
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;

    .line 985
    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;->a(Lcom/amazonaws/services/s3/model/metrics/MetricsPredicateVisitor;)V

    goto :goto_f

    .line 987
    :cond_1f
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;)V
    .registers 4

    .line 973
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;)V
    .registers 4

    .line 978
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->a:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory$MetricsPredicateVisitorImpl;->b:Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;->a()Lcom/amazonaws/services/s3/model/Tag;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->a(Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/Tag;)V

    return-void
.end method
