###### Class com.bumptech.glide.load.b.h (com.bumptech.glide.load.b.h)
.class public interface abstract Lcom/bumptech/glide/load/b/h;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/b/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/bumptech/glide/load/b/h$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/h$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/h;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/b/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/j$a;->a()Lcom/bumptech/glide/load/b/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/h;->b:Lcom/bumptech/glide/load/b/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

###### Class com.bumptech.glide.load.b.h.AnonymousClass1 (com.bumptech.glide.load.b.h$1)
.class Lcom/bumptech/glide/load/b/h$1;
.super Ljava/lang/Object;
.source "Headers.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
