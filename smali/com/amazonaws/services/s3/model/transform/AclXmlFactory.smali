###### Class com.amazonaws.services.s3.model.transform.AclXmlFactory (com.amazonaws.services.s3.model.transform.AclXmlFactory)
.class public Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;
.super Ljava/lang/Object;
.source "AclXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazonaws/services/s3/model/CanonicalGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .registers 9

    const-string v0, "Grantee"

    const/4 v1, 0x2

    .line 103
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "xmlns:xsi"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "xsi:type"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v1, v4

    const-string v3, "CanonicalUser"

    aput-object v3, v1, v5

    invoke-virtual {p2, v0, v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "ID"

    .line 109
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 110
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-object p2
.end method

.method protected a(Lcom/amazonaws/services/s3/model/EmailAddressGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .registers 9

    const-string v0, "Grantee"

    const/4 v1, 0x2

    .line 125
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "xmlns:xsi"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "xsi:type"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v1, v4

    const-string v3, "AmazonCustomerByEmail"

    aput-object v3, v1, v5

    invoke-virtual {p2, v0, v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "EmailAddress"

    .line 131
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 132
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-object p2
.end method

.method protected a(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .registers 5

    .line 83
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    if-eqz v0, :cond_b

    .line 84
    check-cast p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->a(Lcom/amazonaws/services/s3/model/CanonicalGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    return-object p1

    .line 85
    :cond_b
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    if-eqz v0, :cond_16

    .line 86
    check-cast p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->a(Lcom/amazonaws/services/s3/model/EmailAddressGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    return-object p1

    .line 87
    :cond_16
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/GroupGrantee;

    if-eqz v0, :cond_21

    .line 88
    check-cast p1, Lcom/amazonaws/services/s3/model/GroupGrantee;

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->a(Lcom/amazonaws/services/s3/model/GroupGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    return-object p1

    .line 90
    :cond_21
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Grantee type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected a(Lcom/amazonaws/services/s3/model/GroupGrantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;
    .registers 9

    const-string v0, "Grantee"

    const/4 v1, 0x2

    .line 146
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "xmlns:xsi"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "xsi:type"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    aput-object v3, v1, v4

    const-string v3, "Group"

    aput-object v3, v1, v5

    invoke-virtual {p2, v0, v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "URI"

    .line 152
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GroupGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 153
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    return-object p2
.end method

.method public a(Lcom/amazonaws/services/s3/model/AccessControlList;)[B
    .registers 7

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->a()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 49
    new-instance v1, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    const-string v2, "AccessControlPolicy"

    const-string v3, "xmlns"

    const-string v4, "http://s3.amazonaws.com/doc/2006-03-01/"

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Owner"

    .line 51
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 52
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    const-string v2, "ID"

    .line 53
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 55
    :cond_30
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    const-string v2, "DisplayName"

    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 58
    :cond_47
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v0, "AccessControlList"

    .line 59
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/Grant;

    const-string v2, "Grant"

    .line 61
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 62
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->a()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/amazonaws/services/s3/model/transform/AclXmlFactory;->a(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/internal/XmlWriter;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    const-string v2, "Permission"

    .line 63
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Permission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 64
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_57

    .line 66
    :cond_88
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 67
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->a()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 69
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->b()[B

    move-result-object p1

    return-object p1

    .line 46
    :cond_93
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid AccessControlList: missing an S3Owner"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
