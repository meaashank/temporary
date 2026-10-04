###### Class com.amazonaws.services.s3.model.TopicConfiguration (com.amazonaws.services.s3.model.TopicConfiguration)
.class public Lcom/amazonaws/services/s3/model/TopicConfiguration;
.super Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.source "TopicConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>(Ljava/util/EnumSet;)V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>([Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/TopicConfiguration;
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/TopicConfiguration;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/TopicConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method
