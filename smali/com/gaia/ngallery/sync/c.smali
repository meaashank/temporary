###### Class com.gaia.ngallery.sync.c (com.gaia.ngallery.sync.c)
.class public Lcom/gaia/ngallery/sync/c;
.super Ljava/lang/Object;
.source "GlobalSyncStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/sync/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/gaia/ngallery/sync/c;


# instance fields
.field private b:Lcom/gaia/ngallery/sync/c$a;

.field private c:Lcom/gaia/ngallery/sync/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/gaia/ngallery/sync/c;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/c;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/sync/c;->a:Lcom/gaia/ngallery/sync/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/gaia/ngallery/sync/b;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/b;-><init>()V

    iput-object v0, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    return-void
.end method

.method public static a()Lcom/gaia/ngallery/sync/c;
    .registers 1

    .line 14
    sget-object v0, Lcom/gaia/ngallery/sync/c;->a:Lcom/gaia/ngallery/sync/c;

    return-object v0
.end method

.method private b()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/gaia/ngallery/sync/c;->b:Lcom/gaia/ngallery/sync/c$a;

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/gaia/ngallery/sync/c;->b:Lcom/gaia/ngallery/sync/c$a;

    iget-object v1, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/sync/c$a;->onGlobalSyncStatusChange(Lcom/gaia/ngallery/sync/b;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/gaia/ngallery/sync/b;
    .registers 2

    .line 22
    iget-object p1, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    return-object p1
.end method

.method public a(I)V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/sync/b;->a(I)V

    .line 33
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/c;->b()V

    return-void
.end method

.method public a(IIII)V
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/sync/b;->c(I)V

    .line 38
    iget-object p1, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-virtual {p1, p2}, Lcom/gaia/ngallery/sync/b;->e(I)V

    .line 39
    iget-object p1, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-virtual {p1, p3}, Lcom/gaia/ngallery/sync/b;->b(I)V

    .line 40
    iget-object p1, p0, Lcom/gaia/ngallery/sync/c;->c:Lcom/gaia/ngallery/sync/b;

    invoke-virtual {p1, p4}, Lcom/gaia/ngallery/sync/b;->d(I)V

    .line 41
    invoke-direct {p0}, Lcom/gaia/ngallery/sync/c;->b()V

    return-void
.end method

.method public a(Lcom/gaia/ngallery/sync/c$a;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/gaia/ngallery/sync/c;->b:Lcom/gaia/ngallery/sync/c$a;

    return-void
.end method

###### Class com.gaia.ngallery.sync.c.a (com.gaia.ngallery.sync.c$a)
.class public interface abstract Lcom/gaia/ngallery/sync/c$a;
.super Ljava/lang/Object;
.source "GlobalSyncStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onGlobalSyncStatusChange(Lcom/gaia/ngallery/sync/b;)V
.end method
