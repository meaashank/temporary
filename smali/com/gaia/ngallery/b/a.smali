###### Class com.gaia.ngallery.b.a (com.gaia.ngallery.b.a)
.class public Lcom/gaia/ngallery/b/a;
.super Ljava/lang/Object;
.source "AlbumCache.java"


# static fields
.field private static a:Lcom/gaia/ngallery/b/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/b/c$b<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/gaia/ngallery/model/AlbumFolder;

.field private d:Lcom/gaia/ngallery/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/b/c<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    sget-object v0, Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;

    sput-object v0, Lcom/gaia/ngallery/b/a;->a:Lcom/gaia/ngallery/b/c$b;

    .line 16
    sget-object v0, Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;

    sput-object v0, Lcom/gaia/ngallery/b/a;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/gaia/ngallery/model/AlbumFolder;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaia/ngallery/model/AlbumFolder;",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    monitor-enter p0

    .line 25
    :try_start_4
    iput-object p1, p0, Lcom/gaia/ngallery/b/a;->c:Lcom/gaia/ngallery/model/AlbumFolder;

    .line 26
    new-instance p1, Lcom/gaia/ngallery/b/c;

    sget-object v0, Lcom/gaia/ngallery/b/a;->a:Lcom/gaia/ngallery/b/c$b;

    sget-object v1, Lcom/gaia/ngallery/b/a;->b:Ljava/util/Comparator;

    const-class v2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/gaia/ngallery/b/c;-><init>(Ljava/util/List;Lcom/gaia/ngallery/b/c$b;Ljava/util/Comparator;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/b/a;->e:J

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    .line 29
    invoke-direct {p0, p2}, Lcom/gaia/ngallery/b/a;->c(Lcom/gaia/ngallery/model/AlbumFile;)V

    goto :goto_1d

    .line 31
    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private static synthetic a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFile;)I
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private c(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 100
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 101
    iget p1, p0, Lcom/gaia/ngallery/b/a;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/b/a;->f:I

    goto :goto_19

    .line 102
    :cond_d
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 103
    iget p1, p0, Lcom/gaia/ngallery/b/a;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/b/a;->g:I

    :cond_19
    :goto_19
    return-void
.end method

.method private d(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 106
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 107
    iget p1, p0, Lcom/gaia/ngallery/b/a;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/b/a;->f:I

    goto :goto_19

    .line 108
    :cond_d
    invoke-virtual {p1}, Lcom/gaia/ngallery/model/AlbumFile;->getMediaType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    .line 109
    iget p1, p0, Lcom/gaia/ngallery/b/a;->g:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/gaia/ngallery/b/a;->g:I

    :cond_19
    :goto_19
    return-void
.end method

.method private static synthetic e(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/gaia/ngallery/model/AlbumFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$qyURyiwQ71Dsc9M-T2HFhfS7_Uw(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/b/a;->e(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$zhAVfaKvfasTGy_kA3yNqcvfY9w(Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFile;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/b/a;->a(Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFile;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/gaia/ngallery/b/a;->f:I

    return v0
.end method

.method public a(I)Lcom/gaia/ngallery/model/AlbumFile;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/gaia/ngallery/model/AlbumFile;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    return-object p1
.end method

.method public a(J)V
    .registers 3

    .line 46
    iput-wide p1, p0, Lcom/gaia/ngallery/b/a;->e:J

    return-void
.end method

.method public a(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/c;->c(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v1

    if-ge v1, v0, :cond_17

    .line 84
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/a;->d(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 86
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public b()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/gaia/ngallery/b/a;->g:I

    return v0
.end method

.method public b(Lcom/gaia/ngallery/model/AlbumFile;)V
    .registers 4

    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/c;->b(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v1

    if-le v1, v0, :cond_17

    .line 94
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/a;->c(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 96
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    .line 72
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1, p1}, Lcom/gaia/ngallery/b/c;->c(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v1}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v1

    if-ge v1, v0, :cond_1f

    .line 74
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/b/a;->d(Lcom/gaia/ngallery/model/AlbumFile;)V

    .line 76
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public c()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/gaia/ngallery/b/a;->e:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/gaia/ngallery/model/AlbumFolder;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->c:Lcom/gaia/ngallery/model/AlbumFolder;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/gaia/ngallery/b/a;->d:Lcom/gaia/ngallery/b/c;

    invoke-virtual {v0}, Lcom/gaia/ngallery/b/c;->b()I

    move-result v0

    return v0
.end method

###### Class com.gaia.ngallery.b.$$Lambda$a$qyURyiwQ71Dsc9MT2HFhfS7_Uw (com.gaia.ngallery.b.-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw)
.class public final synthetic Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/b/c$b;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;

    invoke-direct {v0}, Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$qyURyiwQ71Dsc9M-T2HFhfS7_Uw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {p1}, Lcom/gaia/ngallery/b/a;->lambda$qyURyiwQ71Dsc9M-T2HFhfS7_Uw(Lcom/gaia/ngallery/model/AlbumFile;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.b.$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w (com.gaia.ngallery.b.-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w)
.class public final synthetic Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;

    invoke-direct {v0}, Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;->INSTANCE:Lcom/gaia/ngallery/b/-$$Lambda$a$zhAVfaKvfasTGy_kA3yNqcvfY9w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/gaia/ngallery/model/AlbumFile;

    check-cast p2, Lcom/gaia/ngallery/model/AlbumFile;

    invoke-static {p1, p2}, Lcom/gaia/ngallery/b/a;->lambda$zhAVfaKvfasTGy_kA3yNqcvfY9w(Lcom/gaia/ngallery/model/AlbumFile;Lcom/gaia/ngallery/model/AlbumFile;)I

    move-result p1

    return p1
.end method
