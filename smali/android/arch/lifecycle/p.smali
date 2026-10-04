###### Class android.arch.lifecycle.p (android.arch.lifecycle.p)
.class public Landroid/arch/lifecycle/p;
.super Ljava/lang/Object;
.source "Transformations.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/arch/lifecycle/LiveData;Landroid/arch/a/c/a;)Landroid/arch/lifecycle/LiveData;
    .registers 4
    .param p0    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/a/c/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TX;>;",
            "Landroid/arch/a/c/a<",
            "TX;TY;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/arch/lifecycle/i;

    invoke-direct {v0}, Landroid/arch/lifecycle/i;-><init>()V

    .line 67
    new-instance v1, Landroid/arch/lifecycle/p$1;

    invoke-direct {v1, v0, p1}, Landroid/arch/lifecycle/p$1;-><init>(Landroid/arch/lifecycle/i;Landroid/arch/a/c/a;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    return-object v0
.end method

.method public static b(Landroid/arch/lifecycle/LiveData;Landroid/arch/a/c/a;)Landroid/arch/lifecycle/LiveData;
    .registers 4
    .param p0    # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/a/c/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TX;>;",
            "Landroid/arch/a/c/a<",
            "TX;",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/arch/lifecycle/i;

    invoke-direct {v0}, Landroid/arch/lifecycle/i;-><init>()V

    .line 128
    new-instance v1, Landroid/arch/lifecycle/p$2;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/p$2;-><init>(Landroid/arch/a/c/a;Landroid/arch/lifecycle/i;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    return-object v0
.end method

###### Class android.arch.lifecycle.p.AnonymousClass1 (android.arch.lifecycle.p$1)
.class final Landroid/arch/lifecycle/p$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroid/arch/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/p;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/a/c/a;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/l<",
        "TX;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/i;

.field final synthetic b:Landroid/arch/a/c/a;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/i;Landroid/arch/a/c/a;)V
    .registers 3

    .line 67
    iput-object p1, p0, Landroid/arch/lifecycle/p$1;->a:Landroid/arch/lifecycle/i;

    iput-object p2, p0, Landroid/arch/lifecycle/p$1;->b:Landroid/arch/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/arch/lifecycle/p$1;->a:Landroid/arch/lifecycle/i;

    iget-object v1, p0, Landroid/arch/lifecycle/p$1;->b:Landroid/arch/a/c/a;

    invoke-interface {v1, p1}, Landroid/arch/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/i;->setValue(Ljava/lang/Object;)V

    return-void
.end method

###### Class android.arch.lifecycle.p.AnonymousClass2 (android.arch.lifecycle.p$2)
.class final Landroid/arch/lifecycle/p$2;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroid/arch/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/p;->b(Landroid/arch/lifecycle/LiveData;Landroid/arch/a/c/a;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/l<",
        "TX;>;"
    }
.end annotation


# instance fields
.field a:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/arch/a/c/a;

.field final synthetic c:Landroid/arch/lifecycle/i;


# direct methods
.method constructor <init>(Landroid/arch/a/c/a;Landroid/arch/lifecycle/i;)V
    .registers 3

    .line 128
    iput-object p1, p0, Landroid/arch/lifecycle/p$2;->b:Landroid/arch/a/c/a;

    iput-object p2, p0, Landroid/arch/lifecycle/p$2;->c:Landroid/arch/lifecycle/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/arch/lifecycle/p$2;->b:Landroid/arch/a/c/a;

    invoke-interface {v0, p1}, Landroid/arch/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LiveData;

    .line 134
    iget-object v0, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    if-ne v0, p1, :cond_d

    return-void

    .line 137
    :cond_d
    iget-object v0, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_18

    .line 138
    iget-object v0, p0, Landroid/arch/lifecycle/p$2;->c:Landroid/arch/lifecycle/i;

    iget-object v1, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/LiveData;)V

    .line 140
    :cond_18
    iput-object p1, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    .line 141
    iget-object p1, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    if-eqz p1, :cond_2a

    .line 142
    iget-object p1, p0, Landroid/arch/lifecycle/p$2;->c:Landroid/arch/lifecycle/i;

    iget-object v0, p0, Landroid/arch/lifecycle/p$2;->a:Landroid/arch/lifecycle/LiveData;

    new-instance v1, Landroid/arch/lifecycle/p$2$1;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/p$2$1;-><init>(Landroid/arch/lifecycle/p$2;)V

    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/l;)V

    :cond_2a
    return-void
.end method

###### Class android.arch.lifecycle.p.AnonymousClass2.AnonymousClass1 (android.arch.lifecycle.p$2$1)
.class Landroid/arch/lifecycle/p$2$1;
.super Ljava/lang/Object;
.source "Transformations.java"

# interfaces
.implements Landroid/arch/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/p$2;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/l<",
        "TY;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/p$2;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/p$2;)V
    .registers 2

    .line 142
    iput-object p1, p0, Landroid/arch/lifecycle/p$2$1;->a:Landroid/arch/lifecycle/p$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/arch/lifecycle/p$2$1;->a:Landroid/arch/lifecycle/p$2;

    iget-object v0, v0, Landroid/arch/lifecycle/p$2;->c:Landroid/arch/lifecycle/i;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/i;->setValue(Ljava/lang/Object;)V

    return-void
.end method
