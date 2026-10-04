###### Class com.bumptech.glide.load.engine.a.a (com.bumptech.glide.load.engine.a.a)
.class public interface abstract Lcom/bumptech/glide/load/engine/a/a;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a/a$b;,
        Lcom/bumptech/glide/load/engine/a/a$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/c;)Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V
.end method

.method public abstract b(Lcom/bumptech/glide/load/c;)V
.end method

###### Class com.bumptech.glide.load.engine.a.a.InterfaceC0038a (com.bumptech.glide.load.engine.a.a$a)
.class public interface abstract Lcom/bumptech/glide/load/engine/a/a$a;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0xfa00000

.field public static final b:Ljava/lang/String; = "image_manager_disk_cache"


# virtual methods
.method public abstract a()Lcom/bumptech/glide/load/engine/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

###### Class com.bumptech.glide.load.engine.a.a.b (com.bumptech.glide.load.engine.a.a$b)
.class public interface abstract Lcom/bumptech/glide/load/engine/a/a$b;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/io/File;)Z
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
