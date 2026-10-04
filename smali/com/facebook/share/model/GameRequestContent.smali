###### Class com.facebook.share.model.GameRequestContent (com.facebook.share.model.GameRequestContent)
.class public final Lcom/facebook/share/model/GameRequestContent;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/GameRequestContent$Builder;,
        Lcom/facebook/share/model/GameRequestContent$Filters;,
        Lcom/facebook/share/model/GameRequestContent$ActionType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/GameRequestContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field private final data:Ljava/lang/String;

.field private final filters:Lcom/facebook/share/model/GameRequestContent$Filters;

.field private final message:Ljava/lang/String;

.field private final objectId:Ljava/lang/String;

.field private final recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->message:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->recipients:Ljava/util/List;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->data:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->objectId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->suggestions:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->suggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/GameRequestContent$Builder;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$000(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->message:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$100(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->recipients:Ljava/util/List;

    .line 57
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$200(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->title:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$300(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->data:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$400(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 60
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$500(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->objectId:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$600(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 62
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->access$700(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent;->suggestions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/GameRequestContent$Builder;Lcom/facebook/share/model/GameRequestContent$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Lcom/facebook/share/model/GameRequestContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->recipients:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->suggestions:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .registers 3

    .line 90
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, ","

    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 147
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->recipients:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 152
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->objectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 154
    iget-object p2, p0, Lcom/facebook/share/model/GameRequestContent;->suggestions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method

###### Class com.facebook.share.model.GameRequestContent.AnonymousClass1 (com.facebook.share.model.GameRequestContent$1)
.class final Lcom/facebook/share/model/GameRequestContent$1;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/GameRequestContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent;
    .registers 3

    .line 161
    new-instance v0, Lcom/facebook/share/model/GameRequestContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/GameRequestContent;
    .registers 2

    .line 165
    new-array p1, p1, [Lcom/facebook/share/model/GameRequestContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$1;->newArray(I)[Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.share.model.GameRequestContent.ActionType (com.facebook.share.model.GameRequestContent$ActionType)
.class public final enum Lcom/facebook/share/model/GameRequestContent$ActionType;
.super Ljava/lang/Enum;
.source "GameRequestContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/GameRequestContent$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field public static final enum TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 35
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const-string v1, "ASKFOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    .line 36
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    const-string v1, "TURN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/share/model/GameRequestContent$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/facebook/share/model/GameRequestContent$ActionType;

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$ActionType;->TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 2

    .line 33
    const-class v0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 1

    .line 33
    sget-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {v0}, [Lcom/facebook/share/model/GameRequestContent$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object v0
.end method

###### Class com.facebook.share.model.GameRequestContent.Builder (com.facebook.share.model.GameRequestContent$Builder)
.class public Lcom/facebook/share/model/GameRequestContent$Builder;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/model/GameRequestContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

.field private data:Ljava/lang/String;

.field private filters:Lcom/facebook/share/model/GameRequestContent$Filters;

.field private message:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$ActionType;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/lang/String;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/share/model/GameRequestContent$Builder;)Lcom/facebook/share/model/GameRequestContent$Filters;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/share/model/GameRequestContent$Builder;)Ljava/util/List;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->suggestions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/GameRequestContent;
    .registers 3

    .line 286
    new-instance v0, Lcom/facebook/share/model/GameRequestContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Lcom/facebook/share/model/GameRequestContent$Builder;Lcom/facebook/share/model/GameRequestContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 3

    .line 306
    const-class v0, Lcom/facebook/share/model/GameRequestContent;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    .line 306
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 295
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 172
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->readFrom(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->filters:Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 264
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method public setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/GameRequestContent$Builder;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    return-object p0
.end method

.method public setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/GameRequestContent$Builder;"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->suggestions:Ljava/util/List;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;
    .registers 3

    if-eqz p1, :cond_e

    const-string v0, ","

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/GameRequestContent$Builder;->recipients:Ljava/util/List;

    :cond_e
    return-object p0
.end method

###### Class com.facebook.share.model.GameRequestContent.Filters (com.facebook.share.model.GameRequestContent$Filters)
.class public final enum Lcom/facebook/share/model/GameRequestContent$Filters;
.super Ljava/lang/Enum;
.source "GameRequestContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/GameRequestContent$Filters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

.field public static final enum APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 40
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const-string v1, "APP_USERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    .line 41
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    const-string v1, "APP_NON_USERS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/GameRequestContent$Filters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;
    .registers 2

    .line 39
    const-class v0, Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/model/GameRequestContent$Filters;
    .registers 1

    .line 39
    sget-object v0, Lcom/facebook/share/model/GameRequestContent$Filters;->$VALUES:[Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-virtual {v0}, [Lcom/facebook/share/model/GameRequestContent$Filters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/GameRequestContent$Filters;

    return-object v0
.end method
