###### Class com.amazonaws.services.s3.model.SetObjectAclRequest (com.amazonaws.services.s3.model.SetObjectAclRequest)
.class public Lcom/amazonaws/services/s3/model/SetObjectAclRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetObjectAclRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private final e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->c:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 4

    .line 84
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->c:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .registers 5

    .line 109
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->c:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .registers 5

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 140
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .line 235
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->f:Z

    return-void
.end method

.method public b(Z)Lcom/amazonaws/services/s3/model/SetObjectAclRequest;
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a(Z)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/amazonaws/services/s3/model/AccessControlList;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->d:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public l()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->e:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->f:Z

    return v0
.end method
