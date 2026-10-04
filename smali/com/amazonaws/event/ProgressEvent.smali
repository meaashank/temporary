###### Class com.amazonaws.event.ProgressEvent (com.amazonaws.event.ProgressEvent)
.class public Lcom/amazonaws/event/ProgressEvent;
.super Ljava/lang/Object;
.source "ProgressEvent.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x10

.field public static final f:I = 0x20

.field public static final g:I = 0x400

.field public static final h:I = 0x800

.field public static final i:I = 0x1000


# instance fields
.field protected j:J

.field protected k:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->k:I

    .line 82
    iput-wide p2, p0, Lcom/amazonaws/event/ProgressEvent;->j:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->j:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/amazonaws/event/ProgressEvent;->j:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    .line 123
    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->k:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 92
    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->j:J

    return-void
.end method

.method public b()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/amazonaws/event/ProgressEvent;->k:I

    return v0
.end method
