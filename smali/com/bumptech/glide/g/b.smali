###### Class com.bumptech.glide.g.b (com.bumptech.glide.g.b)
.class public final Lcom/bumptech/glide/g/b;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# static fields
.field private static final c:Lcom/bumptech/glide/g/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/bumptech/glide/g/b;

    invoke-direct {v0}, Lcom/bumptech/glide/g/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/b;->c:Lcom/bumptech/glide/g/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/g/b;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 15
    sget-object v0, Lcom/bumptech/glide/g/b;->c:Lcom/bumptech/glide/g/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptySignature"

    return-object v0
.end method
