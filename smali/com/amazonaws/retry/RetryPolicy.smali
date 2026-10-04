###### Class com.amazonaws.retry.RetryPolicy (com.amazonaws.retry.RetryPolicy)
.class public final Lcom/amazonaws/retry/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;,
        Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
    }
.end annotation


# instance fields
.field private final a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field private final b:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    .line 81
    sget-object p1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->f:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    :cond_7
    if-nez p2, :cond_b

    .line 84
    sget-object p2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->g:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    :cond_b
    if-ltz p3, :cond_16

    .line 91
    iput-object p1, p0, Lcom/amazonaws/retry/RetryPolicy;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 92
    iput-object p2, p0, Lcom/amazonaws/retry/RetryPolicy;->b:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 93
    iput p3, p0, Lcom/amazonaws/retry/RetryPolicy;->c:I

    .line 94
    iput-boolean p4, p0, Lcom/amazonaws/retry/RetryPolicy;->d:Z

    return-void

    .line 87
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a non-negative value for maxErrorRetry."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/amazonaws/retry/RetryPolicy;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    return-object v0
.end method

.method public b()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/amazonaws/retry/RetryPolicy;->b:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/amazonaws/retry/RetryPolicy;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Lcom/amazonaws/retry/RetryPolicy;->d:Z

    return v0
.end method

###### Class com.amazonaws.retry.RetryPolicy.BackoffStrategy (com.amazonaws.retry.RetryPolicy$BackoffStrategy)
.class public interface abstract Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackoffStrategy"
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 200
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy$1;

    invoke-direct {v0}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy$1;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J
.end method

###### Class com.amazonaws.retry.RetryPolicy.BackoffStrategy.AnonymousClass1 (com.amazonaws.retry.RetryPolicy$BackoffStrategy$1)
.class final Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy$1;
.super Ljava/lang/Object;
.source "RetryPolicy.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J
    .registers 4

    const-wide/16 p1, 0x0

    return-wide p1
.end method

###### Class com.amazonaws.retry.RetryPolicy.RetryCondition (com.amazonaws.retry.RetryPolicy$RetryCondition)
.class public interface abstract Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryCondition"
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Lcom/amazonaws/retry/RetryPolicy$RetryCondition$1;

    invoke-direct {v0}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition$1;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z
.end method

###### Class com.amazonaws.retry.RetryPolicy.RetryCondition.AnonymousClass1 (com.amazonaws.retry.RetryPolicy$RetryCondition$1)
.class final Lcom/amazonaws/retry/RetryPolicy$RetryCondition$1;
.super Ljava/lang/Object;
.source "RetryPolicy.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method
