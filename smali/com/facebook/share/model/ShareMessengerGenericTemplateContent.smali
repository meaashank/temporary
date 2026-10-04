###### Class com.facebook.share.model.ShareMessengerGenericTemplateContent (com.facebook.share.model.ShareMessengerGenericTemplateContent)
.class public final Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;,
        Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

.field private final imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field private final isSharable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->isSharable:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 66
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 57
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->isSharable:Z

    .line 58
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->access$100(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 59
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->access$200(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-object v0
.end method

.method public getImageAspectRatio()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object v0
.end method

.method public getIsSharable()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->isSharable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 100
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    iget-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->isSharable:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class com.facebook.share.model.ShareMessengerGenericTemplateContent.AnonymousClass1 (com.facebook.share.model.ShareMessengerGenericTemplateContent$1)
.class final Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$1;
.super Ljava/lang/Object;
.source "ShareMessengerGenericTemplateContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .registers 3

    .line 112
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .registers 2

    .line 117
    new-array p1, p1, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$1;->newArray(I)[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.share.model.ShareMessengerGenericTemplateContent.Builder (com.facebook.share.model.ShareMessengerGenericTemplateContent$Builder)
.class public Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

.field private imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field private isSharable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->isSharable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .registers 2

    .line 161
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-direct {v0, p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 170
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    .line 171
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getIsSharable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setIsSharable(Z)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getImageAspectRatio()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setImageAspectRatio(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-object p0
.end method

.method public setImageAspectRatio(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object p0
.end method

.method public setIsSharable(Z)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->isSharable:Z

    return-object p0
.end method

###### Class com.facebook.share.model.ShareMessengerGenericTemplateContent.ImageAspectRatio (com.facebook.share.model.ShareMessengerGenericTemplateContent$ImageAspectRatio)
.class public final enum Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
.super Ljava/lang/Enum;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field public static final enum SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 44
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 48
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const-string v1, "SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->HORIZONTAL:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->SQUARE:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 2

    .line 40
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 1

    .line 40
    sget-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->$VALUES:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object v0
.end method
