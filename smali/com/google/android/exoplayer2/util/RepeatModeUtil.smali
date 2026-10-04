###### Class com.google.android.exoplayer2.util.RepeatModeUtil (com.google.android.exoplayer2.util.RepeatModeUtil)
.class public final Lcom/google/android/exoplayer2/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes;
    }
.end annotation


# static fields
.field public static final REPEAT_TOGGLE_MODE_ALL:I = 0x2

.field public static final REPEAT_TOGGLE_MODE_NONE:I = 0x0

.field public static final REPEAT_TOGGLE_MODE_ONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextRepeatMode(II)I
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_12

    add-int v1, p0, v0

    .line 62
    rem-int/lit8 v1, v1, 0x3

    .line 63
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return p0
.end method

.method public static isRepeatModeEnabled(II)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_14

    return v0

    :pswitch_6
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    :pswitch_c
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :pswitch_12
    return v1

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

###### Class com.google.android.exoplayer2.util.RepeatModeUtil.RepeatToggleModes (com.google.android.exoplayer2.util.RepeatModeUtil$RepeatToggleModes)
.class public interface abstract annotation Lcom/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/RepeatModeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RepeatToggleModes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
