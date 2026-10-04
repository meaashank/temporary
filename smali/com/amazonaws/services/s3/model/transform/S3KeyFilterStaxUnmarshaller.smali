###### Class com.amazonaws.services.s3.model.transform.S3KeyFilterStaxUnmarshaller (com.amazonaws.services.s3.model.transform.S3KeyFilterStaxUnmarshaller)
.class Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;
.super Ljava/lang/Object;
.source "S3KeyFilterStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/s3/model/S3KeyFilter;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;
    .registers 1

    .line 28
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/S3KeyFilter;
    .registers 7

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    .line 43
    :cond_e
    new-instance v2, Lcom/amazonaws/services/s3/model/S3KeyFilter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/S3KeyFilter;-><init>()V

    .line 46
    :cond_13
    :goto_13
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    return-object v2

    :cond_1b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    const-string v3, "FilterRule"

    .line 50
    invoke-virtual {p1, v3, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 51
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;->a()Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/FilterRule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/S3KeyFilter;->a(Lcom/amazonaws/services/s3/model/FilterRule;)V

    goto :goto_13

    :cond_32
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v3

    if-ge v3, v0, :cond_13

    return-object v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 23
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/S3KeyFilterStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/S3KeyFilter;

    move-result-object p1

    return-object p1
.end method
