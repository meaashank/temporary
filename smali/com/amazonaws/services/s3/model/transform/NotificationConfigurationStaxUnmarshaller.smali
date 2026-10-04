###### Class com.amazonaws.services.s3.model.transform.NotificationConfigurationStaxUnmarshaller (com.amazonaws.services.s3.model.transform.NotificationConfigurationStaxUnmarshaller)
.class abstract Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;
.super Ljava/lang/Object;
.source "NotificationConfigurationStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
        ">;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 37
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    .line 54
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->a()Lcom/amazonaws/services/s3/model/NotificationConfiguration;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 58
    :cond_14
    :goto_14
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    return-object v3

    :cond_1c
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5f

    .line 62
    invoke-virtual {p0, v2, p1, v1}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;->a(Lcom/amazonaws/services/s3/model/NotificationConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_14

    :cond_26
    const-string v5, "Id"

    .line 64
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 65
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_37
    const-string v5, "Event"

    .line 66
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 67
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a(Ljava/lang/String;)V

    goto :goto_14

    :cond_4b
    const-string v5, "Filter"

    .line 68
    invoke-virtual {p1, v5, v1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 69
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->a()Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/s3/model/transform/FilterStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/s3/model/Filter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->a(Lcom/amazonaws/services/s3/model/Filter;)V

    goto :goto_14

    :cond_5f
    const/4 v6, 0x3

    if-ne v5, v6, :cond_14

    .line 72
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->b()I

    move-result v5

    if-ge v5, v0, :cond_14

    .line 73
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected abstract a(Lcom/amazonaws/services/s3/model/NotificationConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            "I)Z"
        }
    .end annotation
.end method
