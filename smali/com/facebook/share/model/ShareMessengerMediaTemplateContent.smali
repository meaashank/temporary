###### Class com.facebook.share.model.ShareMessengerMediaTemplateContent (com.facebook.share.model.ShareMessengerMediaTemplateContent)
.class public final Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMessengerMediaTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;,
        Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentId:Ljava/lang/String;

.field private final button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field private final mediaUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    .line 59
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    .line 60
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 49
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 50
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$100(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$200(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    .line 52
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$300(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getButton()Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method public getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object v0
.end method

.method public getMediaUrl()Landroid/net/Uri;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class com.facebook.share.model.ShareMessengerMediaTemplateContent.AnonymousClass1 (com.facebook.share.model.ShareMessengerMediaTemplateContent$1)
.class final Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;
.super Ljava/lang/Object;
.source "ShareMessengerMediaTemplateContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .registers 3

    .line 108
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .registers 2

    .line 112
    new-array p1, p1, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;->newArray(I)[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.share.model.ShareMessengerMediaTemplateContent.Builder (com.facebook.share.model.ShareMessengerMediaTemplateContent$Builder)
.class public Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMessengerMediaTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private attachmentId:Ljava/lang/String;

.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field private mediaUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->attachmentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Landroid/net/Uri;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .registers 3

    .line 179
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 119
    check-cast p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 170
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    .line 171
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setAttachmentId(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setMediaUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 119
    check-cast p1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->attachmentId:Ljava/lang/String;

    return-object p0
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method public setMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object p0
.end method

.method public setMediaUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaUrl:Landroid/net/Uri;

    return-object p0
.end method

###### Class com.facebook.share.model.ShareMessengerMediaTemplateContent.MediaType (com.facebook.share.model.ShareMessengerMediaTemplateContent$MediaType)
.class public final enum Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
.super Ljava/lang/Enum;
.source "ShareMessengerMediaTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field public static final enum IMAGE:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field public static final enum VIDEO:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->IMAGE:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 39
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->VIDEO:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    sget-object v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->IMAGE:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->VIDEO:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->$VALUES:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 2

    .line 37
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 1

    .line 37
    sget-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->$VALUES:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object v0
.end method
