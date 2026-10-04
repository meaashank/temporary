###### Class com.bumptech.glide.load.engine.a.e (com.bumptech.glide.load.engine.a.e)
.class public Lcom/bumptech/glide/load/engine/a/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/a;


# static fields
.field private static final a:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final b:I = 0x1

.field private static final c:I = 0x1

.field private static d:Lcom/bumptech/glide/load/engine/a/e;


# instance fields
.field private final e:Lcom/bumptech/glide/load/engine/a/m;

.field private final f:Ljava/io/File;

.field private final g:J

.field private final h:Lcom/bumptech/glide/load/engine/a/c;

.field private i:Lcom/bumptech/glide/b/a;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->h:Lcom/bumptech/glide/load/engine/a/c;

    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/e;->f:Ljava/io/File;

    .line 75
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/a/e;->g:J

    .line 76
    new-instance p1, Lcom/bumptech/glide/load/engine/a/m;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/a/m;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/e;->e:Lcom/bumptech/glide/load/engine/a/m;

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/a/a;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/engine/a/e;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/engine/a/e;->d:Lcom/bumptech/glide/load/engine/a/e;

    if-nez v1, :cond_e

    .line 50
    new-instance v1, Lcom/bumptech/glide/load/engine/a/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/e;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/engine/a/e;->d:Lcom/bumptech/glide/load/engine/a/e;

    .line 52
    :cond_e
    sget-object p0, Lcom/bumptech/glide/load/engine/a/e;->d:Lcom/bumptech/glide/load/engine/a/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 48
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b()Lcom/bumptech/glide/b/a;
    .registers 5

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->i:Lcom/bumptech/glide/b/a;

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->f:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/a/e;->g:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;IIJ)Lcom/bumptech/glide/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->i:Lcom/bumptech/glide/b/a;

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->i:Lcom/bumptech/glide/b/a;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    .line 79
    monitor-exit p0

    throw v0
.end method

.method public static b(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/a/a;
    .registers 4

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/engine/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 179
    :try_start_2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->i:Lcom/bumptech/glide/b/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 180
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 178
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;)Ljava/io/File;
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->e:Lcom/bumptech/glide/load/engine/a/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/m;->a(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "DiskLruCacheWrapper"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 p1, 0x0

    .line 97
    :try_start_2e
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;

    move-result-object v0

    if-eqz v0, :cond_50

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b/a$d;->a(I)Ljava/io/File;

    move-result-object v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3d} :catch_3f

    move-object p1, v0

    goto :goto_50

    :catch_3f
    move-exception v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to get from disk cache"

    .line 103
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    return-object p1
.end method

.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 165
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->f()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    .line 174
    :cond_8
    :goto_8
    :try_start_8
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->c()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_26

    goto :goto_20

    :catchall_c
    move-exception v0

    goto :goto_22

    :catch_e
    move-exception v0

    :try_start_f
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    .line 168
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_c

    goto :goto_8

    .line 176
    :goto_20
    monitor-exit p0

    return-void

    .line 174
    :goto_22
    :try_start_22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->c()V

    throw v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    .line 164
    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->e:Lcom/bumptech/glide/load/engine/a/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/m;->a(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/e;->h:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/engine/a/c;->a(Ljava/lang/String;)V

    :try_start_b
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "DiskLruCacheWrapper"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_8d

    .line 122
    :cond_32
    :try_start_32
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;

    move-result-object v1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_76
    .catchall {:try_start_32 .. :try_end_3a} :catchall_8d

    if-eqz v1, :cond_42

    .line 146
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/e;->h:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/a/c;->b(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_42
    :try_start_42
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/b/a;->b(Ljava/lang/String;)Lcom/bumptech/glide/b/a$b;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_76
    .catchall {:try_start_42 .. :try_end_46} :catchall_8d

    if-eqz p1, :cond_5f

    const/4 v1, 0x0

    .line 133
    :try_start_49
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/b/a$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 134
    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/engine/a/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_56

    .line 135
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->a()V
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_5a

    .line 138
    :cond_56
    :try_start_56
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->c()V

    goto :goto_87

    :catchall_5a
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->c()V

    throw p2

    .line 130
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Had two simultaneous puts for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_76} :catch_76
    .catchall {:try_start_56 .. :try_end_76} :catchall_8d

    :catch_76
    move-exception p1

    :try_start_77
    const-string p2, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 141
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_87

    const-string p2, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    .line 142
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_8d

    .line 146
    :cond_87
    :goto_87
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/e;->h:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/a/c;->b(Ljava/lang/String;)V

    return-void

    :catchall_8d
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a/e;->h:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/a/c;->b(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/bumptech/glide/load/c;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/e;->e:Lcom/bumptech/glide/load/engine/a/m;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/m;->a(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object p1

    .line 154
    :try_start_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/e;->b()Lcom/bumptech/glide/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/b/a;->c(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_1f

    :catch_e
    move-exception p1

    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to delete from disk cache"

    .line 157
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method
