###### Class com.facebook.share.model.CameraEffectTextures (com.facebook.share.model.CameraEffectTextures)
.class public Lcom/facebook/share/model/CameraEffectTextures;
.super Ljava/lang/Object;
.source "CameraEffectTextures.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectTextures$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/CameraEffectTextures;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final textures:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/CameraEffectTextures;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->access$000(Lcom/facebook/share/model/CameraEffectTextures$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;Lcom/facebook/share/model/CameraEffectTextures$1;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures;-><init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/model/CameraEffectTextures;)Landroid/os/Bundle;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTextureBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 54
    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextureUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_d

    .line 63
    check-cast p1, Landroid/net/Uri;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 84
    iget-object p2, p0, Lcom/facebook/share/model/CameraEffectTextures;->textures:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.facebook.share.model.CameraEffectTextures.AnonymousClass1 (com.facebook.share.model.CameraEffectTextures$1)
.class final Lcom/facebook/share/model/CameraEffectTextures$1;
.super Ljava/lang/Object;
.source "CameraEffectTextures.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/CameraEffectTextures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/CameraEffectTextures;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures;
    .registers 3

    .line 90
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/CameraEffectTextures;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/CameraEffectTextures;
    .registers 2

    .line 94
    new-array p1, p1, [Lcom/facebook/share/model/CameraEffectTextures;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures$1;->newArray(I)[Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.share.model.CameraEffectTextures.Builder (com.facebook.share.model.CameraEffectTextures$Builder)
.class public Lcom/facebook/share/model/CameraEffectTextures$Builder;
.super Ljava/lang/Object;
.source "CameraEffectTextures.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/CameraEffectTextures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/share/model/CameraEffectTextures;",
        "Lcom/facebook/share/model/CameraEffectTextures$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private textures:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures$Builder;->textures:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/CameraEffectTextures$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/facebook/share/model/CameraEffectTextures$Builder;->textures:Landroid/os/Bundle;

    return-object p0
.end method

.method private putParcelableTexture(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .registers 4

    .line 115
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 116
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures$Builder;->textures:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_d
    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/CameraEffectTextures;
    .registers 3

    .line 137
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/CameraEffectTextures;-><init>(Lcom/facebook/share/model/CameraEffectTextures$Builder;Lcom/facebook/share/model/CameraEffectTextures$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->build()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object v0

    return-object v0
.end method

.method public putTexture(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .registers 3

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->putParcelableTexture(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putTexture(Ljava/lang/String;Landroid/net/Uri;)Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .registers 3

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->putParcelableTexture(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .registers 3

    .line 130
    const-class v0, Lcom/facebook/share/model/CameraEffectTextures;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/CameraEffectTextures;

    .line 130
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->readFrom(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/CameraEffectTextures$Builder;
    .registers 3

    if-eqz p1, :cond_b

    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectTextures$Builder;->textures:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectTextures;->access$100(Lcom/facebook/share/model/CameraEffectTextures;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_b
    return-object p0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 101
    check-cast p1, Lcom/facebook/share/model/CameraEffectTextures;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->readFrom(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object p1

    return-object p1
.end method
