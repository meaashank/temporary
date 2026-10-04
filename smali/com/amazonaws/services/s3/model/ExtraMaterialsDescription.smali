###### Class com.amazonaws.services.s3.model.ExtraMaterialsDescription (com.amazonaws.services.s3.model.ExtraMaterialsDescription)
.class public Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
.super Ljava/lang/Object;
.source "ExtraMaterialsDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    }
.end annotation


# static fields
.field public static final a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->a:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->c:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-void

    .line 62
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    :cond_9
    if-eqz p1, :cond_6b

    .line 102
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6b

    .line 104
    :cond_12
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->a:[I

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->c:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 121
    :pswitch_25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 122
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 116
    :pswitch_34
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 106
    :pswitch_43
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 108
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 109
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne v0, p1, :cond_63

    .line 113
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 110
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supplemental material descriptions contains conflicting entries"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->b:Ljava/util/Map;

    return-object p1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_43
        :pswitch_34
        :pswitch_25
    .end packed-switch
.end method

.method public b()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->c:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object v0
.end method

###### Class com.amazonaws.services.s3.model.ExtraMaterialsDescription.AnonymousClass1 (com.amazonaws.services.s3.model.ExtraMaterialsDescription$1)
.class synthetic Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;
.super Ljava/lang/Object;
.source "ExtraMaterialsDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 104
    invoke-static {}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->values()[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$1;->a:[I

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

###### Class com.amazonaws.services.s3.model.ExtraMaterialsDescription.ConflictResolution (com.amazonaws.services.s3.model.ExtraMaterialsDescription$ConflictResolution)
.class public final enum Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
.super Ljava/lang/Enum;
.source "ExtraMaterialsDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

.field public static final enum OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 38
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "FAIL_FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "OVERRIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    .line 42
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const-string v1, "OVERRIDDEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->FAIL_FAST:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->OVERRIDDEN:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->$VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .registers 2

    .line 36
    const-class v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;
    .registers 1

    .line 36
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->$VALUES:[Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution;

    return-object v0
.end method
