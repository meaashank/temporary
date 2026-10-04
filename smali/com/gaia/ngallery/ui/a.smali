###### Class com.gaia.ngallery.ui.a (com.gaia.ngallery.ui.a)
.class public Lcom/gaia/ngallery/ui/a;
.super Ljava/lang/Object;
.source "CameraActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/io/File;)V
    .registers 7

    .line 21
    invoke-static {p1}, Lcom/gaia/ngallery/g/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "KEY_INPUT_REQUEST_CODE"

    const/16 v3, 0x65

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_INPUT_FUNCTION"

    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_INPUT_FILE_PATH"

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_ALBUM_DIR"

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/io/File;)V
    .registers 8

    .line 33
    invoke-static {p1}, Lcom/gaia/ngallery/g/a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gaia/ngallery/ui/CameraActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "KEY_INPUT_REQUEST_CODE"

    const/16 v3, 0x66

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_INPUT_FUNCTION"

    const/4 v4, 0x1

    .line 36
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "KEY_INPUT_FILE_PATH"

    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_INPUT_CAMERA_QUALITY"

    .line 38
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "KEY_INPUT_CAMERA_DURATION"

    const-wide v4, 0x7fffffffffffffffL

    .line 39
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "KEY_INPUT_CAMERA_BYTES"

    .line 40
    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_ALBUM_DIR"

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
