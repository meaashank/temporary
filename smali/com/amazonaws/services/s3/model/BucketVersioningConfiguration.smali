###### Class com.amazonaws.services.s3.model.BucketVersioningConfiguration (com.amazonaws.services.s3.model.BucketVersioningConfiguration)
.class public Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.super Ljava/lang/Object;
.source "BucketVersioningConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "Off"

.field public static final b:Ljava/lang/String; = "Suspended"

.field public static final c:Ljava/lang/String; = "Enabled"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->e:Ljava/lang/Boolean;

    const-string v0, "Off"

    .line 103
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->e:Ljava/lang/Boolean;

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .registers 2

    .line 242
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
    .registers 2

    .line 172
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->e:Ljava/lang/Boolean;

    return-object v0
.end method
