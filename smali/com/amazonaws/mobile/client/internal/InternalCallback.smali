###### Class com.amazonaws.mobile.client.internal.InternalCallback (com.amazonaws.mobile.client.internal.InternalCallback)
.class public Lcom/amazonaws/mobile/client/internal/InternalCallback;
.super Ljava/lang/Object;
.source "InternalCallback.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/mobile/client/Callback<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "InternalCallback"


# instance fields
.field private b:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;-><init>(Lcom/amazonaws/mobile/client/Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobile/client/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobile/client/Callback<",
            "TR;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/Callback;

    .line 56
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 57
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_2d

    .line 85
    :pswitch_e
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Ljava/lang/String;

    const-string p2, "Library attempted to call user callback twice, expected only once"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 80
    :pswitch_16
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/Object;

    .line 81
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->g:Ljava/lang/Exception;

    .line 82
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2d

    :pswitch_20
    if-nez p2, :cond_28

    .line 75
    iget-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p2, p1}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Object;)V

    goto :goto_2d

    .line 77
    :cond_28
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/Callback;

    invoke-interface {p1, p2}, Lcom/amazonaws/mobile/client/Callback;->a(Ljava/lang/Exception;)V

    .line 87
    :goto_2d
    sget-object p1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->b:Lcom/amazonaws/mobile/client/Callback;

    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    if-ne v0, v1, :cond_14

    .line 93
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Ljava/lang/String;

    const-string v1, "Duplicate call to execute code."

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error, duplicate call"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_14
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/util/concurrent/CountDownLatch;

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;-><init>(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TR;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    if-ne v0, v1, :cond_14

    .line 111
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a:Ljava/lang/String;

    const-string v1, "Duplicate call to execute code."

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error, duplicate call"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_14
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->c:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 115
    :try_start_18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 116
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_24

    :catch_21
    move-exception p1

    .line 118
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->g:Ljava/lang/Exception;

    .line 121
    :goto_24
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->g:Ljava/lang/Exception;

    .line 122
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->g:Ljava/lang/Exception;

    .line 124
    iput-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback;->f:Ljava/lang/Object;

    if-nez p1, :cond_30

    return-object v0

    .line 127
    :cond_30
    throw p1
.end method

###### Class com.amazonaws.mobile.client.internal.InternalCallback.AnonymousClass1 (com.amazonaws.mobile.client.internal.InternalCallback$1)
.class Lcom/amazonaws/mobile/client/internal/InternalCallback$1;
.super Ljava/lang/Object;
.source "InternalCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/amazonaws/mobile/client/internal/InternalCallback;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Runnable;)V
    .registers 3

    .line 97
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback;

    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$1;->b:Lcom/amazonaws/mobile/client/internal/InternalCallback;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/amazonaws/mobile/client/internal/InternalCallback;->a(Lcom/amazonaws/mobile/client/internal/InternalCallback;Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.InternalCallback.AnonymousClass2 (com.amazonaws.mobile.client.internal.InternalCallback$2)
.class synthetic Lcom/amazonaws/mobile/client/internal/InternalCallback$2;
.super Ljava/lang/Object;
.source "InternalCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/InternalCallback;
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

    .line 71
    invoke-static {}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->values()[Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    :try_start_9
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$2;->a:[I

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v1}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

###### Class com.amazonaws.mobile.client.internal.InternalCallback.Mode (com.amazonaws.mobile.client.internal.InternalCallback$Mode)
.class final enum Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;
.super Ljava/lang/Enum;
.source "InternalCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/client/internal/InternalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field public static final enum Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field public static final enum Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field public static final enum Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

.field public static final enum Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 37
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const-string v1, "Callback"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 38
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const-string v1, "Async"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 39
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const-string v1, "Sync"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    .line 40
    new-instance v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const-string v1, "Done"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Callback:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Async:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Sync:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->Done:Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->$VALUES:[Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;
    .registers 2

    .line 36
    const-class v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;
    .registers 1

    .line 36
    sget-object v0, Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->$VALUES:[Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    invoke-virtual {v0}, [Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobile/client/internal/InternalCallback$Mode;

    return-object v0
.end method
