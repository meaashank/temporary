###### Class com.gaia.ngallery.ui.b.f (com.gaia.ngallery.ui.b.f)
.class public Lcom/gaia/ngallery/ui/b/f;
.super Ljava/lang/Object;
.source "ItemSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_ITEM:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT_ITEM;>;"
        }
    .end annotation
.end field

.field private c:[Z

.field private d:I

.field private e:Lcom/gaia/ngallery/ui/b/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/gaia/ngallery/ui/b/f;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT_ITEM;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    monitor-enter p0

    .line 25
    :try_start_4
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->b:Ljava/util/List;

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    .line 27
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/b/f;->f()V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    .line 29
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_2
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 70
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT_ITEM;>;"
        }
    .end annotation

    .line 35
    monitor-enter p0

    .line 36
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 37
    :goto_7
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 38
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1e

    .line 39
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 40
    :cond_21
    monitor-exit p0

    return-object v0

    :catchall_23
    move-exception v0

    .line 41
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public a(I)V
    .registers 5

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v0, v0, p1

    .line 76
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    if-nez v0, :cond_1c

    .line 78
    iget p1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    .line 79
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    if-eqz p1, :cond_1c

    .line 80
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    iget v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/ui/b/f$a;->onSelectedCountChange(I)V

    .line 82
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public a(Lcom/gaia/ngallery/ui/b/f$a;)V
    .registers 4

    .line 62
    iput-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    .line 63
    sget-object p1, Lcom/gaia/ngallery/ui/b/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnSelectedCountChangeListener selectedCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    if-eqz p1, :cond_25

    .line 65
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    iget v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/ui/b/f$a;->onSelectedCountChange(I)V

    :cond_25
    return-void
.end method

.method public b(I)V
    .registers 5

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v0, v0, p1

    .line 89
    iget-object v1, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    if-eqz v0, :cond_1d

    .line 91
    iget p1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    .line 92
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    if-eqz p1, :cond_1d

    .line 93
    iget-object p1, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    iget v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-interface {p1, v0}, Lcom/gaia/ngallery/ui/b/f$a;->onSelectedCountChange(I)V

    .line 95
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public b()[I
    .registers 5

    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 48
    :goto_7
    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/f;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 49
    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_35

    .line 50
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 52
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 51
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected count is not right count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 56
    :cond_38
    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception v0

    .line 57
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public c()V
    .registers 5

    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 105
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v2, v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_10

    const/4 v1, 0x1

    .line 107
    :cond_10
    iget-object v2, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 109
    :cond_17
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    array-length v0, v0

    iput v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    if-eqz v1, :cond_29

    .line 110
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    if-eqz v0, :cond_29

    .line 111
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    iget v1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/ui/b/f$a;->onSelectedCountChange(I)V

    .line 112
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public c(I)Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public d()V
    .registers 5

    .line 117
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 118
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_17

    .line 119
    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_10

    const/4 v2, 0x1

    .line 121
    :cond_10
    iget-object v3, p0, Lcom/gaia/ngallery/ui/b/f;->c:[Z

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 123
    :cond_17
    iput v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    if-eqz v2, :cond_26

    .line 124
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    if-eqz v0, :cond_26

    .line 125
    iget-object v0, p0, Lcom/gaia/ngallery/ui/b/f;->e:Lcom/gaia/ngallery/ui/b/f$a;

    iget v1, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    invoke-interface {v0, v1}, Lcom/gaia/ngallery/ui/b/f$a;->onSelectedCountChange(I)V

    .line 126
    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public e()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/gaia/ngallery/ui/b/f;->d:I

    return v0
.end method

###### Class com.gaia.ngallery.ui.b.f.a (com.gaia.ngallery.ui.b.f$a)
.class public interface abstract Lcom/gaia/ngallery/ui/b/f$a;
.super Ljava/lang/Object;
.source "ItemSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onSelectedCountChange(I)V
.end method
