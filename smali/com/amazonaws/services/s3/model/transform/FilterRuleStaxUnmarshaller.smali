###### Class com.amazonaws.services.s3.model.transform.FilterRuleStaxUnmarshaller (com.amazonaws.services.s3.model.transform.FilterRuleStaxUnmarshaller)
.class Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;
.super Ljava/lang/Object;
.source "FilterRuleStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/s3/model/FilterRule;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;
    .registers 1

    .line 29
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/FilterRule;
    .registers 7

    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 41
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x2

    .line 45
    :cond_e
    new-instance v2, Lcom/amazonaws/services/s3/model/FilterRule;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/FilterRule;-><init>()V

    .line 48
    :cond_13
    :goto_13
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    return-object v2

    :cond_1b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    const-string v3, "Name"

    .line 52
    invoke-virtual {p1, v3, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 53
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/FilterRule;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    const-string v3, "Value"

    .line 54
    invoke-virtual {p1, v3, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/FilterRule;->c(Ljava/lang/String;)V

    goto :goto_13

    :cond_46
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 58
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v3

    if-ge v3, v0, :cond_13

    return-object v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 24
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/FilterRuleStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/FilterRule;

    move-result-object p1

    return-object p1
.end method
