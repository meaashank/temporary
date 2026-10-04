###### Class com.bumptech.glide.b.a (com.bumptech.glide.b.a)
.class public final Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;,
        Lcom/bumptech/glide/b/a$c;,
        Lcom/bumptech/glide/b/a$b;,
        Lcom/bumptech/glide/b/a$d;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field private static final h:Ljava/lang/String; = "CLEAN"

.field private static final i:Ljava/lang/String; = "DIRTY"

.field private static final j:Ljava/lang/String; = "REMOVE"

.field private static final k:Ljava/lang/String; = "READ"


# instance fields
.field final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final l:Ljava/io/File;

.field private final m:Ljava/io/File;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:I

.field private q:J

.field private final r:I

.field private s:J

.field private t:Ljava/io/Writer;

.field private final u:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:J

.field private final x:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 145
    iput-wide v2, v0, Lcom/bumptech/glide/b/a;->s:J

    .line 147
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    .line 156
    iput-wide v2, v0, Lcom/bumptech/glide/b/a;->w:J

    .line 159
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lcom/bumptech/glide/b/a$a;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/bumptech/glide/b/a$a;-><init>(Lcom/bumptech/glide/b/a$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 162
    new-instance v2, Lcom/bumptech/glide/b/a$1;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/b/a$1;-><init>(Lcom/bumptech/glide/b/a;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    .line 179
    iput-object v1, v0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    move/from16 v2, p2

    .line 180
    iput v2, v0, Lcom/bumptech/glide/b/a;->p:I

    .line 181
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    .line 182
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    .line 183
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    move/from16 v1, p3

    .line 184
    iput v1, v0, Lcom/bumptech/glide/b/a;->r:I

    move-wide/from16 v1, p4

    .line 185
    iput-wide v1, v0, Lcom/bumptech/glide/b/a;->q:J

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;I)I
    .registers 2

    .line 86
    iput p1, p0, Lcom/bumptech/glide/b/a;->v:I

    return p1
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;
    .registers 9

    monitor-enter p0

    .line 447
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->k()V

    .line 448
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1d

    .line 450
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->e(Lcom/bumptech/glide/b/a$c;)J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5d

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1f

    .line 451
    :cond_1d
    monitor-exit p0

    return-object v3

    :cond_1f
    if-nez v0, :cond_2c

    .line 454
    :try_start_21
    new-instance v0, Lcom/bumptech/glide/b/a$c;

    invoke-direct {v0, p0, p1, v3}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;Lcom/bumptech/glide/b/a$1;)V

    .line 455
    iget-object p2, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 456
    :cond_2c
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5d

    if-eqz p2, :cond_34

    .line 457
    monitor-exit p0

    return-object v3

    .line 460
    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Lcom/bumptech/glide/b/a$b;

    invoke-direct {p2, p0, v0, v3}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$1;)V

    .line 461
    invoke-static {v0, p2}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;

    .line 464
    iget-object p3, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v0, "DIRTY"

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object p3, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object p3, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 467
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 468
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_5d

    .line 469
    monitor-exit p0

    return-object p2

    :catchall_5d
    move-exception p1

    .line 446
    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/bumptech/glide/b/a;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_87

    if-lez p2, :cond_7f

    .line 207
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 209
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    .line 214
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 219
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/bumptech/glide/b/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/b/a;-><init>(Ljava/io/File;IIJ)V

    .line 220
    iget-object v1, v0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 222
    :try_start_3c
    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->g()V

    .line 223
    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->h()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v1

    .line 226
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->f()V

    .line 237
    :cond_6e
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 238
    new-instance v0, Lcom/bumptech/glide/b/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/b/a;-><init>(Ljava/io/File;IIJ)V

    .line 239
    invoke-direct {v0}, Lcom/bumptech/glide/b/a;->i()V

    return-object v0

    .line 203
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;)Ljava/io/Writer;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    .line 86
    invoke-static {p0}, Lcom/bumptech/glide/b/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/b/a$b;Z)V
    .registers 12

    monitor-enter p0

    .line 504
    :try_start_1
    invoke-static {p1}, Lcom/bumptech/glide/b/a$b;->a(Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$c;

    move-result-object v0

    .line 505
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v1

    if-ne v1, p1, :cond_109

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    .line 510
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    .line 511
    :goto_15
    iget v3, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v2, v3, :cond_4d

    .line 512
    invoke-static {p1}, Lcom/bumptech/glide/b/a$b;->b(Lcom/bumptech/glide/b/a$b;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    .line 516
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/b/a$c;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 517
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->b()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_10f

    .line 518
    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 513
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a$b;->b()V

    .line 514
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_4d
    :goto_4d
    iget p1, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v1, p1, :cond_82

    .line 524
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b/a$c;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7c

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 527
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b/a$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 528
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 529
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 530
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 531
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 532
    iget-wide v7, p0, Lcom/bumptech/glide/b/a;->s:J

    const/4 p1, 0x0

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bumptech/glide/b/a;->s:J

    goto :goto_7f

    .line 535
    :cond_7c
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 539
    :cond_82
    iget p1, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 p1, 0x0

    .line 540
    invoke-static {v0, p1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;

    .line 541
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_ca

    .line 542
    invoke-static {v0, v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Z)Z

    .line 543
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 545
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 546
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 547
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_ed

    .line 550
    iget-wide p1, p0, Lcom/bumptech/glide/b/a;->w:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bumptech/glide/b/a;->w:J

    invoke-static {v0, p1, p2}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;J)J

    goto :goto_ed

    .line 553
    :cond_ca
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 556
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 557
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 559
    :cond_ed
    :goto_ed
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 561
    iget-wide p1, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->q:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_100

    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Z

    move-result p1

    if-eqz p1, :cond_107

    .line 562
    :cond_100
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_107
    .catchall {:try_start_33 .. :try_end_107} :catchall_10f

    .line 564
    :cond_107
    monitor-exit p0

    return-void

    .line 506
    :cond_109
    :try_start_109
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_10f

    :catchall_10f
    move-exception p1

    .line 503
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$b;Z)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a$b;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    .line 389
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    .line 390
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    if-eqz p2, :cond_5

    .line 396
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    .line 398
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    .line 399
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .line 664
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bumptech/glide/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/b/a;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    return-void
.end method

.method static synthetic c(Lcom/bumptech/glide/b/a;)Z
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/bumptech/glide/b/a;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->i()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 9

    const/16 v0, 0x20

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b1

    add-int/lit8 v3, v1, 0x1

    .line 290
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_2b

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "REMOVE"

    .line 294
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_2f

    const-string v4, "REMOVE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 295
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 299
    :cond_2b
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_2f
    iget-object v4, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/b/a$c;

    const/4 v5, 0x0

    if-nez v4, :cond_44

    .line 304
    new-instance v4, Lcom/bumptech/glide/b/a$c;

    invoke-direct {v4, p0, v3, v5}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;Lcom/bumptech/glide/b/a$1;)V

    .line 305
    iget-object v6, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    if-eq v0, v2, :cond_6c

    const-string v3, "CLEAN"

    .line 308
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_6c

    const-string v3, "CLEAN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-static {v4, v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Z)Z

    .line 311
    invoke-static {v4, v5}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;

    .line 312
    invoke-static {v4, p1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;[Ljava/lang/String;)V

    goto :goto_99

    :cond_6c
    if-ne v0, v2, :cond_87

    const-string v3, "DIRTY"

    .line 313
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_87

    const-string v3, "DIRTY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 314
    new-instance p1, Lcom/bumptech/glide/b/a$b;

    invoke-direct {p1, p0, v4, v5}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$1;)V

    invoke-static {v4, p1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;

    goto :goto_99

    :cond_87
    if-ne v0, v2, :cond_9a

    const-string v0, "READ"

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_9a

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :goto_99
    return-void

    .line 318
    :cond_9a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_b1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/bumptech/glide/b/a;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/bumptech/glide/b/a;->r:I

    return p0
.end method

.method static synthetic f(Lcom/bumptech/glide/b/a;)Ljava/io/File;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    return-object p0
.end method

.method private g()V
    .registers 9

    .line 244
    new-instance v0, Lcom/bumptech/glide/b/b;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/b/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 246
    :try_start_e
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    .line 251
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    const-string v6, "1"

    .line 252
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    iget v6, p0, Lcom/bumptech/glide/b/a;->p:I

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget v3, p0, Lcom/bumptech/glide/b/a;->r:I

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string v3, ""

    .line 255
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_be

    if-eqz v3, :cond_8a

    const/4 v1, 0x0

    .line 263
    :goto_53
    :try_start_53
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/b/a;->d(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_be

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 269
    :catch_5d
    :try_start_5d
    iget-object v2, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/b/a;->v:I

    .line 272
    invoke-virtual {v0}, Lcom/bumptech/glide/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 273
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->i()V

    goto :goto_86

    .line 275
    :cond_70
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_86
    .catchall {:try_start_5d .. :try_end_86} :catchall_be

    .line 279
    :goto_86
    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    return-void

    .line 256
    :cond_8a
    :try_start_8a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_be
    .catchall {:try_start_8a .. :try_end_be} :catchall_be

    :catchall_be
    move-exception v1

    .line 279
    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private h()V
    .registers 9

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/a$c;

    .line 330
    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    .line 331
    :goto_22
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v3, v2, :cond_f

    .line 332
    iget-wide v4, p0, Lcom/bumptech/glide/b/a;->s:J

    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/b/a;->s:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    .line 335
    invoke-static {v1, v2}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;

    .line 336
    :goto_38
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v3, v2, :cond_4d

    .line 337
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/b/a$c;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    .line 338
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/b/a$c;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 340
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method private declared-synchronized i()V
    .registers 7

    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 351
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 354
    :cond_a
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_eb

    :try_start_1d
    const-string v1, "libcore.io.DiskLruCache"

    .line 357
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 358
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 359
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 360
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v1, p0, Lcom/bumptech/glide/b/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget v1, p0, Lcom/bumptech/glide/b/a;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 364
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 365
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/b/a$c;

    .line 368
    invoke-static {v2}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8c

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bumptech/glide/b/a$c;->c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5c

    .line 371
    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bumptech/glide/b/a$c;->c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_1d .. :try_end_ae} :catchall_e6

    goto :goto_5c

    .line 375
    :cond_af
    :try_start_af
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 378
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c2

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 381
    :cond_c2
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->n:Ljava/io/File;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bumptech/glide/b/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 384
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bumptech/glide/b/a;->m:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/bumptech/glide/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_e4
    .catchall {:try_start_af .. :try_end_e4} :catchall_eb

    .line 386
    monitor-exit p0

    return-void

    :catchall_e6
    move-exception v1

    .line 375
    :try_start_e7
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception v0

    .line 349
    monitor-exit p0

    throw v0
.end method

.method private j()Z
    .registers 3

    .line 572
    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    .line 573
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private k()V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    .line 620
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .registers 6

    .line 647
    :goto_0
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->s:J

    iget-wide v2, p0, Lcom/bumptech/glide/b/a;->q:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 648
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/b/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bumptech/glide/b/a$d;
    .registers 11

    monitor-enter p0

    .line 409
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->k()V

    .line 410
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6e

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 412
    monitor-exit p0

    return-object v1

    .line 415
    :cond_11
    :try_start_11
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6e

    if-nez v2, :cond_19

    .line 416
    monitor-exit p0

    return-object v1

    .line 419
    :cond_19
    :try_start_19
    iget-object v2, v0, Lcom/bumptech/glide/b/a$c;->a:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 421
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_6e

    if-nez v5, :cond_29

    .line 422
    monitor-exit p0

    return-object v1

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 426
    :cond_2c
    :try_start_2c
    iget v1, p0, Lcom/bumptech/glide/b/a;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/b/a;->v:I

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 431
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 432
    iget-object v1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 435
    :cond_59
    new-instance v8, Lcom/bumptech/glide/b/a$d;

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->e(Lcom/bumptech/glide/b/a$c;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/bumptech/glide/b/a$c;->a:[Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/b/a$d;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/b/a$1;)V
    :try_end_6c
    .catchall {:try_start_2c .. :try_end_6c} :catchall_6e

    monitor-exit p0

    return-object v8

    :catchall_6e
    move-exception p1

    .line 408
    monitor-exit p0

    throw p1
.end method

.method public a()Ljava/io/File;
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .registers 3

    monitor-enter p0

    .line 490
    :try_start_1
    iput-wide p1, p0, Lcom/bumptech/glide/b/a;->q:J

    .line 491
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 492
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 489
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()J
    .registers 3

    monitor-enter p0

    .line 482
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->q:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/bumptech/glide/b/a$b;
    .registers 4

    const-wide/16 v0, -0x1

    .line 443
    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/b/a;->a(Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c()J
    .registers 3

    monitor-enter p0

    .line 500
    :try_start_1
    iget-wide v0, p0, Lcom/bumptech/glide/b/a;->s:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 583
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->k()V

    .line 584
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/b/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    .line 585
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v2

    if-eqz v2, :cond_17

    goto/16 :goto_8e

    .line 589
    :cond_17
    :goto_17
    iget v2, p0, Lcom/bumptech/glide/b/a;->r:I

    if-ge v1, v2, :cond_5a

    .line 590
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b/a$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_43

    .line 592
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_43
    :goto_43
    iget-wide v2, p0, Lcom/bumptech/glide/b/a;->s:J

    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    const/4 v4, 0x0

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/bumptech/glide/b/a;->s:J

    .line 595
    invoke-static {v0}, Lcom/bumptech/glide/b/a$c;->b(Lcom/bumptech/glide/b/a$c;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 598
    :cond_5a
    iget v0, p0, Lcom/bumptech/glide/b/a;->v:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/b/a;->v:I

    .line 599
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 601
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 602
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 604
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->j()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 607
    iget-object p1, p0, Lcom/bumptech/glide/b/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/bumptech/glide/b/a;->x:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_90

    .line 610
    :cond_8c
    monitor-exit p0

    return v1

    .line 586
    :cond_8e
    :goto_8e
    monitor-exit p0

    return v1

    :catchall_90
    move-exception p1

    .line 582
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    .line 633
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 634
    monitor-exit p0

    return-void

    .line 636
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/b/a;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/b/a$c;

    .line 637
    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 638
    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/b/a$b;->b()V

    goto :goto_16

    .line 641
    :cond_30
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    .line 642
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 644
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    .line 632
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    .line 615
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 2

    monitor-enter p0

    .line 626
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->k()V

    .line 627
    invoke-direct {p0}, Lcom/bumptech/glide/b/a;->l()V

    .line 628
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->t:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 629
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    .line 625
    monitor-exit p0

    throw v0
.end method

.method public f()V
    .registers 2

    .line 659
    invoke-virtual {p0}, Lcom/bumptech/glide/b/a;->close()V

    .line 660
    iget-object v0, p0, Lcom/bumptech/glide/b/a;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/File;)V

    return-void
.end method

###### Class com.bumptech.glide.b.a.AnonymousClass1 (com.bumptech.glide.b.a$1)
.class Lcom/bumptech/glide/b/a$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/b/a;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 166
    monitor-exit v0

    return-object v2

    .line 168
    :cond_e
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->b(Lcom/bumptech/glide/b/a;)V

    .line 169
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->c(Lcom/bumptech/glide/b/a;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 170
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->d(Lcom/bumptech/glide/b/a;)V

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/b/a$1;->a:Lcom/bumptech/glide/b/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;I)I

    .line 173
    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/bumptech/glide/b/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.b.a.ThreadFactoryC0028a (com.bumptech.glide.b.a$a)
.class final Lcom/bumptech/glide/b/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a$1;)V
    .registers 2

    .line 882
    invoke-direct {p0}, Lcom/bumptech/glide/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    monitor-enter p0

    .line 885
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "glide-disk-lru-cache-thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 887
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    .line 884
    monitor-exit p0

    throw p1
.end method

###### Class com.bumptech.glide.b.a.b (com.bumptech.glide.b.a$b)
.class public final Lcom/bumptech/glide/b/a$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/b/a;

.field private final b:Lcom/bumptech/glide/b/a$c;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;)V
    .registers 3

    .line 712
    iput-object p1, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    .line 714
    invoke-static {p2}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/bumptech/glide/b/a$b;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$1;)V
    .registers 4

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/b/a$b;-><init>(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$c;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$c;
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/b/a$b;)[Z
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/bumptech/glide/b/a$b;->c:[Z

    return-object p0
.end method

.method private c(I)Ljava/io/InputStream;
    .registers 6

    .line 722
    iget-object v0, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    monitor-enter v0

    .line 723
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v1

    if-ne v1, p0, :cond_25

    .line 726
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 727
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    return-object v2

    .line 730
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/b/a$c;->a(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_23
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    :try_start_21
    monitor-exit v0

    return-object v1

    .line 732
    :catch_23
    monitor-exit v0

    return-object v2

    .line 724
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_2b
    move-exception p1

    .line 734
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p1
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 2

    .line 742
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a$b;->c(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 743
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public a()V
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$b;Z)V

    .line 784
    iput-boolean v1, p0, Lcom/bumptech/glide/b/a$b;->d:Z

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 766
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 767
    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lcom/bumptech/glide/b/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 768
    :try_start_11
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 770
    invoke-static {p1}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_18
    move-exception p2

    move-object v0, p1

    goto :goto_1c

    :catchall_1b
    move-exception p2

    :goto_1c
    invoke-static {v0}, Lcom/bumptech/glide/b/c;->a(Ljava/io/Closeable;)V

    throw p2
.end method

.method public b(I)Ljava/io/File;
    .registers 5

    .line 747
    iget-object v0, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;

    move-result-object v1

    if-ne v1, p0, :cond_35

    .line 751
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-static {v1}, Lcom/bumptech/glide/b/a$c;->d(Lcom/bumptech/glide/b/a$c;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 752
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 754
    :cond_18
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->b:Lcom/bumptech/glide/b/a$c;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/b/a$c;->b(I)Ljava/io/File;

    move-result-object p1

    .line 755
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_33

    .line 756
    iget-object v1, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 758
    :cond_33
    monitor-exit v0

    return-object p1

    .line 749
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_3b
    move-exception p1

    .line 759
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public b()V
    .registers 3

    .line 792
    iget-object v0, p0, Lcom/bumptech/glide/b/a$b;->a:Lcom/bumptech/glide/b/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/b/a$b;Z)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 796
    iget-boolean v0, p0, Lcom/bumptech/glide/b/a$b;->d:Z

    if-nez v0, :cond_7

    .line 798
    :try_start_4
    invoke-virtual {p0}, Lcom/bumptech/glide/b/a$b;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

###### Class com.bumptech.glide.b.a.c (com.bumptech.glide.b.a$c)
.class final Lcom/bumptech/glide/b/a$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field a:[Ljava/io/File;

.field b:[Ljava/io/File;

.field final synthetic c:Lcom/bumptech/glide/b/a;

.field private final d:Ljava/lang/String;

.field private final e:[J

.field private f:Z

.field private g:Lcom/bumptech/glide/b/a$b;

.field private h:J


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;)V
    .registers 9

    .line 824
    iput-object p1, p0, Lcom/bumptech/glide/b/a$c;->c:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object p2, p0, Lcom/bumptech/glide/b/a$c;->d:Ljava/lang/String;

    .line 826
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->e:[J

    .line 827
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->a:[Ljava/io/File;

    .line 828
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/b/a$c;->b:[Ljava/io/File;

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 833
    :goto_2e
    invoke-static {p1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, p0, Lcom/bumptech/glide/b/a$c;->a:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v2, p0, Lcom/bumptech/glide/b/a$c;->b:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/b/a;->f(Lcom/bumptech/glide/b/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 838
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;Lcom/bumptech/glide/b/a$1;)V
    .registers 4

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/b/a$c;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$c;J)J
    .registers 3

    .line 805
    iput-wide p1, p0, Lcom/bumptech/glide/b/a$c;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$c;)Lcom/bumptech/glide/b/a$b;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->g:Lcom/bumptech/glide/b/a$b;

    return-object p0
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$c;Lcom/bumptech/glide/b/a$b;)Lcom/bumptech/glide/b/a$b;
    .registers 2

    .line 805
    iput-object p1, p0, Lcom/bumptech/glide/b/a$c;->g:Lcom/bumptech/glide/b/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$c;[Ljava/lang/String;)V
    .registers 2

    .line 805
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a$c;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    .line 852
    array-length v0, p1

    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->c:Lcom/bumptech/glide/b/a;

    invoke-static {v1}, Lcom/bumptech/glide/b/a;->e(Lcom/bumptech/glide/b/a;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 857
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 858
    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->e:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    .line 861
    :catch_1b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 853
    :cond_20
    invoke-direct {p0, p1}, Lcom/bumptech/glide/b/a$c;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic a(Lcom/bumptech/glide/b/a$c;Z)Z
    .registers 2

    .line 805
    iput-boolean p1, p0, Lcom/bumptech/glide/b/a$c;->f:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    .line 866
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/bumptech/glide/b/a$c;)[J
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->e:[J

    return-object p0
.end method

.method static synthetic c(Lcom/bumptech/glide/b/a$c;)Ljava/lang/String;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/bumptech/glide/b/a$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/bumptech/glide/b/a$c;)Z
    .registers 1

    .line 805
    iget-boolean p0, p0, Lcom/bumptech/glide/b/a$c;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/bumptech/glide/b/a$c;)J
    .registers 3

    .line 805
    iget-wide v0, p0, Lcom/bumptech/glide/b/a$c;->h:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 3

    .line 870
    iget-object v0, p0, Lcom/bumptech/glide/b/a$c;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 8

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    iget-object v1, p0, Lcom/bumptech/glide/b/a$c;->e:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 845
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 847
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/bumptech/glide/b/a$c;->b:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

###### Class com.bumptech.glide.b.a.d (com.bumptech.glide.b.a$d)
.class public final Lcom/bumptech/glide/b/a$d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/b/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[J

.field private final e:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .registers 7

    .line 674
    iput-object p1, p0, Lcom/bumptech/glide/b/a$d;->a:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p2, p0, Lcom/bumptech/glide/b/a$d;->b:Ljava/lang/String;

    .line 676
    iput-wide p3, p0, Lcom/bumptech/glide/b/a$d;->c:J

    .line 677
    iput-object p5, p0, Lcom/bumptech/glide/b/a$d;->e:[Ljava/io/File;

    .line 678
    iput-object p6, p0, Lcom/bumptech/glide/b/a$d;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/b/a$1;)V
    .registers 8

    .line 668
    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/b/a$d;-><init>(Lcom/bumptech/glide/b/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/b/a$b;
    .registers 5

    .line 687
    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->a:Lcom/bumptech/glide/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/b/a$d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bumptech/glide/b/a$d;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/a;Ljava/lang/String;J)Lcom/bumptech/glide/b/a$b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/File;
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->e:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .registers 4

    .line 696
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/bumptech/glide/b/a$d;->e:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 697
    invoke-static {v0}, Lcom/bumptech/glide/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(I)J
    .registers 5

    .line 702
    iget-object v0, p0, Lcom/bumptech/glide/b/a$d;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
