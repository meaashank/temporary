###### Class com.amazonaws.retry.PredefinedRetryPolicies (com.amazonaws.retry.PredefinedRetryPolicies)
.class public Lcom/amazonaws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/retry/RetryPolicy;

.field public static final b:I = 0x3

.field public static final c:Lcom/amazonaws/retry/RetryPolicy;

.field public static final d:I = 0xa

.field public static final e:Lcom/amazonaws/retry/RetryPolicy;

.field public static final f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field public static final g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field private static final h:I = 0x64

.field private static final i:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    .line 77
    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 84
    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    const/16 v1, 0x64

    const/16 v2, 0x4e20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(IILcom/amazonaws/retry/PredefinedRetryPolicies$1;)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 88
    invoke-static {}, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->c:Lcom/amazonaws/retry/RetryPolicy;

    .line 89
    invoke-static {}, Lcom/amazonaws/retry/PredefinedRetryPolicies;->b()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->e:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/retry/RetryPolicy;
    .registers 5

    .line 99
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static a(I)Lcom/amazonaws/retry/RetryPolicy;
    .registers 5

    .line 123
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static b()Lcom/amazonaws/retry/RetryPolicy;
    .registers 5

    .line 112
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static b(I)Lcom/amazonaws/retry/RetryPolicy;
    .registers 5

    .line 135
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

###### Class com.amazonaws.retry.PredefinedRetryPolicies.AnonymousClass1 (com.amazonaws.retry.PredefinedRetryPolicies$1)
.class synthetic Lcom/amazonaws/retry/PredefinedRetryPolicies$1;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.amazonaws.retry.PredefinedRetryPolicies.SDKDefaultBackoffStrategy (com.amazonaws.retry.PredefinedRetryPolicies$SDKDefaultBackoffStrategy)
.class final Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SDKDefaultBackoffStrategy"
.end annotation


# instance fields
.field private final b:Ljava/util/Random;

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(II)V
    .registers 4

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->b:Ljava/util/Random;

    .line 216
    iput p1, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->c:I

    .line 217
    iput p2, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->d:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/amazonaws/retry/PredefinedRetryPolicies$1;)V
    .registers 4

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J
    .registers 5

    if-gtz p3, :cond_5

    const-wide/16 p1, 0x0

    return-wide p1

    .line 230
    :cond_5
    iget-object p1, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->b:Ljava/util/Random;

    iget p2, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->d:I

    const/4 v0, 0x1

    shl-int p3, v0, p3

    iget v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->c:I

    mul-int p3, p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

###### Class com.amazonaws.retry.PredefinedRetryPolicies.SDKDefaultRetryCondition (com.amazonaws.retry.PredefinedRetryPolicies$SDKDefaultRetryCondition)
.class public Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKDefaultRetryCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z
    .registers 5

    .line 161
    invoke-virtual {p2}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    const/4 p3, 0x1

    if-eqz p1, :cond_12

    .line 162
    invoke-virtual {p2}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-nez p1, :cond_12

    return p3

    .line 166
    :cond_12
    instance-of p1, p2, Lcom/amazonaws/AmazonServiceException;

    if-eqz p1, :cond_3c

    .line 167
    check-cast p2, Lcom/amazonaws/AmazonServiceException;

    .line 175
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result p1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_2d

    goto :goto_3b

    .line 189
    :cond_2d
    invoke-static {p2}, Lcom/amazonaws/retry/RetryUtils;->a(Lcom/amazonaws/AmazonServiceException;)Z

    move-result p1

    if-eqz p1, :cond_34

    return p3

    .line 197
    :cond_34
    invoke-static {p2}, Lcom/amazonaws/retry/RetryUtils;->c(Lcom/amazonaws/AmazonServiceException;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return p3

    :cond_3b
    :goto_3b
    return p3

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method
