###### Class com.amazonaws.AmazonServiceException (com.amazonaws.AmazonServiceException)
.class public Lcom/amazonaws/AmazonServiceException;
.super Lcom/amazonaws/AmazonClientException;
.source "AmazonServiceException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/AmazonServiceException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/AmazonServiceException$ErrorType;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object v0, p0, Lcom/amazonaws/AmazonServiceException;->c:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 110
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    sget-object p2, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    iput-object p2, p0, Lcom/amazonaws/AmazonServiceException;->c:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 123
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/amazonaws/AmazonServiceException;->e:I

    return-void
.end method

.method public a(Lcom/amazonaws/AmazonServiceException$ErrorType;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->c:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/amazonaws/AmazonServiceException;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/amazonaws/AmazonServiceException$ErrorType;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->c:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/amazonaws/AmazonServiceException;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/amazonaws/AmazonServiceException;->e:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Status Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; Error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.amazonaws.AmazonServiceException.ErrorType (com.amazonaws.AmazonServiceException$ErrorType)
.class public final enum Lcom/amazonaws/AmazonServiceException$ErrorType;
.super Ljava/lang/Enum;
.source "AmazonServiceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/AmazonServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/AmazonServiceException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

.field public static final enum Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 60
    new-instance v0, Lcom/amazonaws/AmazonServiceException$ErrorType;

    const-string v1, "Client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 63
    new-instance v0, Lcom/amazonaws/AmazonServiceException$ErrorType;

    const-string v1, "Service"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    .line 66
    new-instance v0, Lcom/amazonaws/AmazonServiceException$ErrorType;

    const-string v1, "Unknown"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/AmazonServiceException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    const/4 v0, 0x3

    .line 58
    new-array v0, v0, [Lcom/amazonaws/AmazonServiceException$ErrorType;

    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->$VALUES:[Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException$ErrorType;
    .registers 2

    .line 58
    const-class v0, Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/AmazonServiceException$ErrorType;
    .registers 1

    .line 58
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->$VALUES:[Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v0}, [Lcom/amazonaws/AmazonServiceException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object v0
.end method
