###### Class com.google.android.exoplayer2.video.DummySurface (com.google.android.exoplayer2.video.DummySurface)
.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final SECURE_MODE_NONE:I = 0x0

.field private static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field private static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 108
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 109
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    .line 110
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .registers 2

    .line 129
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    return-void

    .line 130
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSecureModeV24(Landroid/content/Context;)I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 136
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1c

    const-string v0, "samsung"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "XT1650"

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return v2

    .line 143
    :cond_1c
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    .line 148
    :cond_2d
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 149
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3a

    return v2

    :cond_3a
    const-string v0, "EGL_EXT_protected_content"

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    return v2

    :cond_43
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x2

    :goto_4e
    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    .line 82
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->getSecureModeV24(Landroid/content/Context;)I

    move-result p0

    :goto_15
    sput p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    .line 83
    sput-boolean v2, Lcom/google/android/exoplayer2/video/DummySurface;->secureModeInitialized:Z

    .line 85
    :cond_19
    sget p0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    monitor-exit v0

    return v2

    :catchall_21
    move-exception p0

    .line 80
    monitor-exit v0

    throw p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .registers 3

    .line 101
    invoke-static {}, Lcom/google/android/exoplayer2/video/DummySurface;->assertApiLevel17OrHigher()V

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 102
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 103
    new-instance p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    if-eqz p1, :cond_1c

    .line 104
    sget v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureMode:I

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->init(I)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 115
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v0

    .line 121
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v1, :cond_12

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 125
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method

###### Class com.google.android.exoplayer2.video.DummySurface.AnonymousClass1 (com.google.android.exoplayer2.video.DummySurface$1)
.class synthetic Lcom/google/android/exoplayer2/video/DummySurface$1;
.super Ljava/lang/Object;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.video.DummySurface.DummySurfaceThread (com.google.android.exoplayer2.video.DummySurface$DummySurfaceThread)
.class Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x3

.field private static final MSG_UPDATE_TEXTURE:I = 0x2


# instance fields
.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private pbuffer:Landroid/opengl/EGLSurface;

.field private surface:Lcom/google/android/exoplayer2/video/DummySurface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dummySurface"

    .line 183
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 184
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    return-void
.end method

.method private initInternal(I)V
    .registers 15

    const/4 v0, 0x0

    .line 259
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const-string v3, "eglGetDisplay failed"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    .line 262
    new-array v3, v1, [I

    .line 263
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    const-string v4, "eglInitialize failed"

    .line 264
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    const/16 v3, 0x11

    .line 266
    new-array v5, v3, [I

    fill-array-data v5, :array_cc

    .line 278
    new-array v3, v2, [Landroid/opengl/EGLConfig;

    .line 279
    new-array v12, v2, [I

    .line 280
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v3

    move-object v10, v12

    .line 281
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 282
    aget v4, v12, v0

    if-lez v4, :cond_45

    aget-object v4, v3, v0

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    const-string v5, "eglChooseConfig failed"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 285
    aget-object v3, v3, v0

    const/4 v4, 0x5

    if-nez p1, :cond_57

    const/4 v5, 0x3

    .line 288
    new-array v5, v5, [I

    fill-array-data v5, :array_f2

    goto :goto_5c

    .line 290
    :cond_57
    new-array v5, v4, [I

    fill-array-data v5, :array_fc

    .line 299
    :goto_5c
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 300
    invoke-static {v6, v3, v7, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 302
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v5, :cond_6c

    const/4 v5, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v5, 0x0

    :goto_6d
    const-string v6, "eglCreateContext failed"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    if-ne p1, v2, :cond_77

    .line 306
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_9b

    :cond_77
    if-ne p1, v1, :cond_80

    const/4 v1, 0x7

    .line 310
    new-array v1, v1, [I

    fill-array-data v1, :array_10a

    goto :goto_85

    .line 321
    :cond_80
    new-array v1, v4, [I

    fill-array-data v1, :array_11c

    .line 323
    :goto_85
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_93

    const/4 v1, 0x1

    goto :goto_94

    :cond_93
    const/4 v1, 0x0

    :goto_94
    const-string v3, "eglCreatePbufferSurface failed"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 328
    :goto_9b
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v3, v1, v1, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    const-string v3, "eglMakeCurrent failed"

    .line 329
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 332
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    aget v3, v3, v0

    invoke-direct {v1, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/video/DummySurface;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_c4

    const/4 v0, 0x1

    :cond_c4
    const/4 p1, 0x0

    invoke-direct {v1, p0, v3, v0, p1}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-void

    nop

    :array_cc
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    :array_f2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_fc
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_10a
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_11c
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private releaseInternal()V
    .registers 5

    const/4 v0, 0x0

    .line 339
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_11

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v1, 0x1

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_32

    .line 344
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_1c

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 347
    :cond_1c
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_27

    .line 348
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 350
    :cond_27
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 352
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 353
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 354
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_32
    move-exception v1

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_3e

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 347
    :cond_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_49

    .line 348
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 350
    :cond_49
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 352
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 353
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 354
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_64

    return v1

    .line 246
    :pswitch_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_10
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 250
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_19

    :catchall_e
    move-exception p1

    goto :goto_1a

    :catch_10
    move-exception p1

    :try_start_11
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 248
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    goto :goto_a

    :goto_19
    return v1

    .line 250
    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    throw p1

    .line 242
    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v1

    .line 228
    :pswitch_24
    :try_start_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initInternal(I)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_29} :catch_47
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_29} :catch_34
    .catchall {:try_start_24 .. :try_end_29} :catchall_32

    .line 236
    monitor-enter p0

    .line 237
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    goto :goto_56

    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_2f

    throw p1

    :catchall_32
    move-exception p1

    goto :goto_5a

    :catch_34
    move-exception p1

    :try_start_35
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 233
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_32

    .line 236
    monitor-enter p0

    .line 237
    :try_start_3f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    goto :goto_56

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw p1

    :catch_47
    move-exception p1

    :try_start_48
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 230
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_32

    .line 236
    monitor-enter p0

    .line 237
    :try_start_52
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    :goto_56
    return v1

    :catchall_57
    move-exception p1

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_57

    throw p1

    .line 236
    :goto_5a
    monitor-enter p0

    .line 237
    :try_start_5b
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_60

    throw p1

    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1e
        :pswitch_7
    .end packed-switch
.end method

.method public init(I)Lcom/google/android/exoplayer2/video/DummySurface;
    .registers 5

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->start()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    .line 191
    monitor-enter p0

    .line 192
    :try_start_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :goto_1a
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_47

    if-nez p1, :cond_2c

    .line 195
    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_47

    goto :goto_1a

    :catch_2a
    const/4 v2, 0x1

    goto :goto_1a

    .line 200
    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_47

    if-eqz v2, :cond_36

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 205
    :cond_36
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_44

    .line 207
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_41

    .line 210
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-object p1

    .line 208
    :cond_41
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    throw p1

    .line 206
    :cond_44
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    throw p1

    :catchall_47
    move-exception p1

    .line 200
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public release()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
