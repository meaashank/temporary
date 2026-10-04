###### Class com.amazonaws.services.s3.model.LambdaConfiguration (com.amazonaws.services.s3.model.LambdaConfiguration)
.class public Lcom/amazonaws/services/s3/model/LambdaConfiguration;
.super Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.source "LambdaConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
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

    .line 41
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>(Ljava/util/EnumSet;)V

    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-direct {p0, p2}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;-><init>([Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/LambdaConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method
