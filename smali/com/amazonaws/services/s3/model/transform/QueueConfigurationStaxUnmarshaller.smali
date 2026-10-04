###### Class com.amazonaws.services.s3.model.transform.QueueConfigurationStaxUnmarshaller (com.amazonaws.services.s3.model.transform.QueueConfigurationStaxUnmarshaller)
.class Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;
.super Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;
.source "QueueConfigurationStaxUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller<",
        "Lcom/amazonaws/services/s3/model/QueueConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/NotificationConfigurationStaxUnmarshaller;-><init>()V

    return-void
.end method

.method public static b()Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;
    .registers 1

    .line 26
    sget-object v0, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;->a:Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;->c()Lcom/amazonaws/services/s3/model/QueueConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/amazonaws/services/s3/model/NotificationConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z
    .registers 4

    .line 21
    check-cast p1, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/transform/QueueConfigurationStaxUnmarshaller;->a(Lcom/amazonaws/services/s3/model/QueueConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/amazonaws/services/s3/model/QueueConfiguration;Lcom/amazonaws/transform/StaxUnmarshallerContext;I)Z
    .registers 5

    const-string v0, "Queue"

    .line 34
    invoke-virtual {p2, v0, p3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->a(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 35
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->a(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/QueueConfiguration;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method protected c()Lcom/amazonaws/services/s3/model/QueueConfiguration;
    .registers 2

    .line 43
    new-instance v0, Lcom/amazonaws/services/s3/model/QueueConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/QueueConfiguration;-><init>()V

    return-object v0
.end method
