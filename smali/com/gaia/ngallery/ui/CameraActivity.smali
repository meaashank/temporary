###### Class com.gaia.ngallery.ui.CameraActivity (com.gaia.ngallery.ui.CameraActivity)
.class public Lcom/gaia/ngallery/ui/CameraActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CameraActivity.java"


# static fields
.field public static a:Lcom/gaia/ngallery/f/d; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/gaia/ngallery/f/d; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gaia/ngallery/f/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String; = "INSTANCE_CAMERA_FUNCTION"

.field private static final e:Ljava/lang/String; = "INSTANCE_CAMERA_FILE_PATH"

.field private static final f:Ljava/lang/String; = "INSTANCE_CAMERA_REQUEST_CODE"

.field private static final g:Ljava/lang/String; = "INSTANCE_CAMERA_QUALITY"

.field private static final h:Ljava/lang/String; = "INSTANCE_CAMERA_DURATION"

.field private static final i:Ljava/lang/String; = "INSTANCE_CAMERA_BYTES"

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:Lcom/prism/commons/e/c;

.field private static final m:Lcom/prism/commons/e/c;

.field private static final n:I = 0x1

.field private static final o:I = 0x2


# instance fields
.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x1L
    .end annotation
.end field

.field private t:J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x7fffffffffffffffL
    .end annotation
.end field

.field private u:J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x1L
        to = 0x7fffffffffffffffL
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Lcom/gaia/ngallery/k/b;

.field private x:Lcom/prism/commons/e/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 55
    const-class v0, Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/l/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->c:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/prism/commons/e/c;

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/prism/commons/e/a;

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v4, "android.permission.CAMERA"

    sget v5, Lcom/gaia/ngallery/i$n;->perm_take_picture_explain_camera:I

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    sget v7, Lcom/gaia/ngallery/i$n;->perm_take_picture_explain_read_storage:I

    invoke-direct {v3, v5, v7, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget v7, Lcom/gaia/ngallery/i$n;->perm_take_picture_explain_write_storage:I

    invoke-direct {v3, v5, v7, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-direct {v0, v6, v2}, Lcom/prism/commons/e/c;-><init>(I[Lcom/prism/commons/e/a;)V

    sput-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->l:Lcom/prism/commons/e/c;

    .line 72
    new-instance v0, Lcom/prism/commons/e/c;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/prism/commons/e/a;

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v7, "android.permission.CAMERA"

    sget v8, Lcom/gaia/ngallery/i$n;->perm_record_video_explain_camera:I

    invoke-direct {v3, v7, v8, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v4, "android.permission.RECORD_AUDIO"

    sget v7, Lcom/gaia/ngallery/i$n;->perm_record_video_explain_record_audio:I

    invoke-direct {v3, v4, v7, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    sget v7, Lcom/gaia/ngallery/i$n;->perm_record_video_explain_read_storage:I

    invoke-direct {v3, v4, v7, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/prism/commons/e/a;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget v7, Lcom/gaia/ngallery/i$n;->perm_record_video_explain_write_storage:I

    invoke-direct {v3, v4, v7, v6}, Lcom/prism/commons/e/a;-><init>(Ljava/lang/String;IZ)V

    aput-object v3, v2, v1

    invoke-direct {v0, v5, v2}, Lcom/prism/commons/e/c;-><init>(I[Lcom/prism/commons/e/a;)V

    sput-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->m:Lcom/prism/commons/e/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->s:I

    .line 99
    new-instance v0, Lcom/gaia/ngallery/ui/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/CameraActivity$1;-><init>(Lcom/gaia/ngallery/ui/CameraActivity;)V

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->x:Lcom/prism/commons/e/c$a;

    return-void
.end method

.method private a()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/CameraActivity;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/gaia/ngallery/ui/CameraActivity$2;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/CameraActivity$2;-><init>(Lcom/gaia/ngallery/ui/CameraActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/gaia/ngallery/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lcom/gaia/ngallery/k/b$a;)Lcom/gaia/ngallery/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->w:Lcom/gaia/ngallery/k/b;

    return-void
.end method

.method private a(I)V
    .registers 12

    .line 238
    sget-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchGrantedPermission reqcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_3c

    .line 250
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->b()V

    goto :goto_3b

    :pswitch_1d
    const/4 v3, 0x2

    .line 245
    new-instance v4, Ljava/io/File;

    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/gaia/ngallery/ui/CameraActivity;->s:I

    iget-wide v6, p0, Lcom/gaia/ngallery/ui/CameraActivity;->t:J

    iget-wide v8, p0, Lcom/gaia/ngallery/ui/CameraActivity;->u:J

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/gaia/ngallery/g/a;->a(Landroid/app/Activity;ILjava/io/File;IJJ)V

    goto :goto_3b

    :pswitch_30
    const/4 p1, 0x1

    .line 241
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/gaia/ngallery/g/a;->a(Landroid/app/Activity;ILjava/io/File;)V

    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_30
        :pswitch_1d
    .end packed-switch
.end method

.method static synthetic a(Lcom/gaia/ngallery/ui/CameraActivity;I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CameraActivity;->a(I)V

    return-void
.end method

.method private b()V
    .registers 7

    .line 334
    sget-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->b:Lcom/gaia/ngallery/f/d;

    if-eqz v0, :cond_d

    .line 335
    sget-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->b:Lcom/gaia/ngallery/f/d;

    iget v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->p:I

    const-string v2, "User canceled."

    invoke-interface {v0, v1, v2}, Lcom/gaia/ngallery/f/d;->a(ILjava/lang/Object;)V

    .line 336
    :cond_d
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 338
    sget-object v2, Lcom/gaia/ngallery/ui/CameraActivity;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_INPUT_FILE_PATH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/gaia/ngallery/l/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "KEY_INPUT_FILE_PATH"

    .line 339
    iget-object v3, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :cond_38
    invoke-virtual {p0, v1, v0}, Lcom/gaia/ngallery/ui/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    packed-switch p1, :pswitch_data_12

    .line 305
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->b()V

    goto :goto_11

    :pswitch_7
    const/4 p1, -0x1

    if-ne p2, p1, :cond_e

    .line 298
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->a()V

    goto :goto_11

    .line 300
    :cond_e
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->b()V

    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Lcom/gaia/ngallery/l/k;->a(Landroid/app/Activity;I)V

    .line 124
    invoke-static {}, Lcom/gaia/ngallery/b;->b()Lcom/gaia/ngallery/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/e;->s()Ljava/util/Locale;

    move-result-object v1

    .line 125
    invoke-static {p0, v1}, Lcom/gaia/ngallery/g/a;->a(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    const/4 v1, 0x1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz p1, :cond_63

    const-string v4, "INSTANCE_CAMERA_FUNCTION"

    .line 127
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "INSTANCE_CAMERA_REQUEST_CODE"

    .line 128
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "INSTANCE_CAMERA_FILE_PATH"

    .line 129
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v0, "INSTANCE_CAMERA_FUNCTION"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->q:I

    const-string v0, "INSTANCE_CAMERA_REQUEST_CODE"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->p:I

    const-string v0, "INSTANCE_CAMERA_FILE_PATH"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    const-string v0, "INSTANCE_CAMERA_QUALITY"

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->s:I

    const-string v0, "INSTANCE_CAMERA_DURATION"

    .line 135
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->t:J

    const-string v0, "INSTANCE_CAMERA_BYTES"

    .line 136
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->u:J

    goto :goto_cb

    .line 138
    :cond_63
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "KEY_INPUT_FUNCTION"

    .line 140
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/gaia/ngallery/ui/CameraActivity;->q:I

    const-string v4, "KEY_INPUT_REQUEST_CODE"

    .line 141
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->p:I

    const-string v0, "KEY_INPUT_FILE_PATH"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    const-string v0, "KEY_INPUT_CAMERA_QUALITY"

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->s:I

    const-string v0, "KEY_INPUT_CAMERA_DURATION"

    .line 144
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->t:J

    const-string v0, "KEY_INPUT_CAMERA_BYTES"

    .line 145
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->u:J

    .line 147
    iget p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->q:I

    packed-switch p1, :pswitch_data_f4

    .line 161
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->b()V

    goto :goto_cb

    .line 155
    :pswitch_a0
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-static {}, Lcom/gaia/ngallery/g/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    .line 157
    :cond_ae
    sget-object p1, Lcom/gaia/ngallery/ui/CameraActivity;->m:Lcom/prism/commons/e/c;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->x:Lcom/prism/commons/e/c$a;

    invoke-virtual {p1, p0, v0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    goto :goto_cb

    .line 149
    :pswitch_b6
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c4

    invoke-static {}, Lcom/gaia/ngallery/g/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    .line 151
    :cond_c4
    sget-object p1, Lcom/gaia/ngallery/ui/CameraActivity;->l:Lcom/prism/commons/e/c;

    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->x:Lcom/prism/commons/e/c$a;

    invoke-virtual {p1, p0, v0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    .line 165
    :goto_cb
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_KEY_ALBUM_DIR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->v:Ljava/lang/String;

    .line 166
    sget-object p1, Lcom/gaia/ngallery/ui/CameraActivity;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate EXTRA_KEY_ALBUM_DIR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_a0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 347
    sput-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->a:Lcom/gaia/ngallery/f/d;

    .line 348
    sput-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->b:Lcom/gaia/ngallery/f/d;

    .line 349
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 351
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity;->w:Lcom/gaia/ngallery/k/b;

    invoke-static {v0}, Lcom/gaia/ngallery/g/g;->a(Landroid/os/AsyncTask;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 268
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 269
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 287
    sget-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->l:Lcom/prism/commons/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prism/commons/e/c;->a(I[Ljava/lang/String;[I)V

    .line 288
    sget-object v0, Lcom/gaia/ngallery/ui/CameraActivity;->m:Lcom/prism/commons/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prism/commons/e/c;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 258
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 259
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 260
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 261
    :cond_16
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "INSTANCE_CAMERA_FUNCTION"

    .line 173
    iget v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INSTANCE_CAMERA_REQUEST_CODE"

    .line 174
    iget v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INSTANCE_CAMERA_FILE_PATH"

    .line 175
    iget-object v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INSTANCE_CAMERA_QUALITY"

    .line 176
    iget v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INSTANCE_CAMERA_DURATION"

    .line 177
    iget-wide v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->t:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "INSTANCE_CAMERA_BYTES"

    .line 178
    iget-wide v1, p0, Lcom/gaia/ngallery/ui/CameraActivity;->u:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.CameraActivity.AnonymousClass1 (com.gaia.ngallery.ui.CameraActivity$1)
.class Lcom/gaia/ngallery/ui/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/prism/commons/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/CameraActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/CameraActivity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$1;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/prism/commons/e/c;)V
    .registers 3

    .line 103
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$1;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method public a(ILcom/prism/commons/e/c;[Ljava/lang/String;[I)V
    .registers 5
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$1;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-virtual {p2, p1, p0}, Lcom/prism/commons/e/c;->a(Landroid/app/Activity;Lcom/prism/commons/e/c$a;)V

    return-void
.end method

.method public b(ILcom/prism/commons/e/c;)V
    .registers 3

    .line 108
    iget-object p2, p0, Lcom/gaia/ngallery/ui/CameraActivity$1;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-static {p2, p1}, Lcom/gaia/ngallery/ui/CameraActivity;->a(Lcom/gaia/ngallery/ui/CameraActivity;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.CameraActivity.AnonymousClass2 (com.gaia.ngallery.ui.CameraActivity$2)
.class Lcom/gaia/ngallery/ui/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/gaia/ngallery/k/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaia/ngallery/ui/CameraActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gaia/ngallery/ui/CameraActivity;


# direct methods
.method constructor <init>(Lcom/gaia/ngallery/ui/CameraActivity;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-virtual {v0}, Lcom/gaia/ngallery/ui/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_RETURN_ALBUMFILES"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/gaia/ngallery/ui/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 322
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/CameraActivity;->finish()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gaia/ngallery/model/AlbumFile;",
            ">;)V"
        }
    .end annotation

    .line 327
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    const/16 v0, -0x3e8

    invoke-virtual {p1, v0}, Lcom/gaia/ngallery/ui/CameraActivity;->setResult(I)V

    .line 328
    iget-object p1, p0, Lcom/gaia/ngallery/ui/CameraActivity$2;->a:Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-virtual {p1}, Lcom/gaia/ngallery/ui/CameraActivity;->finish()V

    return-void
.end method
