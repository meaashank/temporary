###### Class android.arch.a.a.a (android.arch.a.a.a)
.class public Landroid/arch/a/a/a;
.super Landroid/arch/a/a/c;
.source "ArchTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/arch/a/a/a;

.field private static final d:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private b:Landroid/arch/a/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Landroid/arch/a/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/arch/a/a/a$1;

    invoke-direct {v0}, Landroid/arch/a/a/a$1;-><init>()V

    sput-object v0, Landroid/arch/a/a/a;->d:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Landroid/arch/a/a/a$2;

    invoke-direct {v0}, Landroid/arch/a/a/a$2;-><init>()V

    sput-object v0, Landroid/arch/a/a/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/arch/a/a/c;-><init>()V

    .line 58
    new-instance v0, Landroid/arch/a/a/b;

    invoke-direct {v0}, Landroid/arch/a/a/b;-><init>()V

    iput-object v0, p0, Landroid/arch/a/a/a;->c:Landroid/arch/a/a/c;

    .line 59
    iget-object v0, p0, Landroid/arch/a/a/a;->c:Landroid/arch/a/a/c;

    iput-object v0, p0, Landroid/arch/a/a/a;->b:Landroid/arch/a/a/c;

    return-void
.end method

.method public static a()Landroid/arch/a/a/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    sget-object v0, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/a;

    if-eqz v0, :cond_7

    .line 70
    sget-object v0, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/a;

    return-object v0

    .line 72
    :cond_7
    const-class v0, Landroid/arch/a/a/a;

    monitor-enter v0

    .line 73
    :try_start_a
    sget-object v1, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/a;

    if-nez v1, :cond_15

    .line 74
    new-instance v1, Landroid/arch/a/a/a;

    invoke-direct {v1}, Landroid/arch/a/a/a;-><init>()V

    sput-object v1, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/a;

    .line 76
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 77
    sget-object v0, Landroid/arch/a/a/a;->a:Landroid/arch/a/a/a;

    return-object v0

    :catchall_19
    move-exception v1

    .line 76
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 106
    sget-object v0, Landroid/arch/a/a/a;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static c()Ljava/util/concurrent/Executor;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    sget-object v0, Landroid/arch/a/a/a;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/arch/a/a/c;)V
    .registers 2
    .param p1    # Landroid/arch/a/a/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_4

    .line 91
    iget-object p1, p0, Landroid/arch/a/a/a;->c:Landroid/arch/a/a/c;

    :cond_4
    iput-object p1, p0, Landroid/arch/a/a/a;->b:Landroid/arch/a/a/c;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/arch/a/a/a;->b:Landroid/arch/a/a/c;

    invoke-virtual {v0, p1}, Landroid/arch/a/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/arch/a/a/a;->b:Landroid/arch/a/a/c;

    invoke-virtual {v0, p1}, Landroid/arch/a/a/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/arch/a/a/a;->b:Landroid/arch/a/a/c;

    invoke-virtual {v0}, Landroid/arch/a/a/c;->d()Z

    move-result v0

    return v0
.end method

###### Class android.arch.a.a.a.AnonymousClass1 (android.arch.a.a.a$1)
.class final Landroid/arch/a/a/a$1;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 45
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/a/a/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class android.arch.a.a.a.AnonymousClass2 (android.arch.a.a.a$2)
.class final Landroid/arch/a/a/a$2;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 53
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/a/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
