###### Class com.bumptech.glide.request.b.e (com.bumptech.glide.request.b.e)
.class public Lcom/bumptech/glide/request/b/e;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/f<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/request/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/e<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/bumptech/glide/request/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/bumptech/glide/request/b/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/b/e;->a:Lcom/bumptech/glide/request/b/e;

    .line 15
    new-instance v0, Lcom/bumptech/glide/request/b/e$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/e$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/b/e;->b:Lcom/bumptech/glide/request/b/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/request/b/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/b/g<",
            "TR;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/bumptech/glide/request/b/e;->b:Lcom/bumptech/glide/request/b/g;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/request/b/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/b/f<",
            "TR;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/bumptech/glide/request/b/e;->a:Lcom/bumptech/glide/request/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/f$a;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

###### Class com.bumptech.glide.request.b.e.a (com.bumptech.glide.request.b.e$a)
.class public Lcom/bumptech/glide/request/b/e$a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/g<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/b/f<",
            "TR;>;"
        }
    .end annotation

    .line 27
    sget-object p1, Lcom/bumptech/glide/request/b/e;->a:Lcom/bumptech/glide/request/b/e;

    return-object p1
.end method
