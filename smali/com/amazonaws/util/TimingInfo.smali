###### Class com.amazonaws.util.TimingInfo (com.amazonaws.util.TimingInfo)
.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;
.source "TimingInfo.java"


# static fields
.field static final a:I = -0x1

.field private static final b:D = 1000.0


# instance fields
.field private final c:Ljava/lang/Long;

.field private final d:J

.field private e:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .registers 5

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    .line 158
    iput-wide p2, p0, Lcom/amazonaws/util/TimingInfo;->d:J

    .line 159
    iput-object p4, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    return-void
.end method

.method public static a()Lcom/amazonaws/util/TimingInfo;
    .registers 5

    .line 73
    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static a(J)Lcom/amazonaws/util/TimingInfo;
    .registers 4

    .line 95
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static a(JJ)Lcom/amazonaws/util/TimingInfo;
    .registers 5

    .line 107
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static a(JJJ)Lcom/amazonaws/util/TimingInfo;
    .registers 7

    .line 122
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 123
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static a(JJLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .registers 6

    .line 145
    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static a(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .registers 5

    .line 133
    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static b(JJ)D
    .registers 5

    .line 261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x408f400000000000L    # 1000.0

    .line 262
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static b()Lcom/amazonaws/util/TimingInfo;
    .registers 5

    .line 83
    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .registers 3

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    return-void
.end method

.method public final c()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_15

    :cond_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/amazonaws/util/TimingInfo;->d:J

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_15
    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(J)V
    .registers 3

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    return-void
.end method

.method public final d()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_d

    .line 176
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Ljava/lang/Long;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final f()J
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->d:J

    return-wide v0
.end method

.method public final g()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->i()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_d

    .line 208
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public final i()Ljava/lang/Long;
    .registers 8

    .line 215
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->p()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->o()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amazonaws/util/TimingInfo;->d:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0
.end method

.method public final j()J
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public final k()Ljava/lang/Long;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public final l()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->m()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_d

    .line 242
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public final m()Ljava/lang/Double;
    .registers 5

    .line 249
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->o()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->d:J

    iget-object v2, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->b(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method public final n()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->m()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    goto :goto_d

    .line 273
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public final o()Z
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final p()Z
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->c:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public q()Lcom/amazonaws/util/TimingInfo;
    .registers 3

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public r()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
