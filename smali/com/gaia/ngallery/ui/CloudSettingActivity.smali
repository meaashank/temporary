###### Class com.gaia.ngallery.ui.CloudSettingActivity (com.gaia.ngallery.ui.CloudSettingActivity)
.class public Lcom/gaia/ngallery/ui/CloudSettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CloudSettingActivity.java"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/gaia/ngallery/sync/model/SyncAccount;

.field private j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0}, Lcom/prism/commons/f/s;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/gaia/ngallery/sync/model/SyncAccount;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->m(Landroid/content/Context;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGoogleDriveSignedIn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-object p1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 250
    new-instance v0, Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-direct {v0}, Lcom/gaia/ngallery/sync/model/SyncAccount;-><init>()V

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->setAccountType(I)V

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->setAccountName(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->setAccountId(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->setAccountSubTitle(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->setProfilePhoto(Landroid/net/Uri;)V

    .line 256
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;

    invoke-direct {v1, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;

    .line 260
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    .line 262
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    if-nez v0, :cond_8

    .line 94
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b()V

    goto :goto_b

    .line 96
    :cond_8
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c()V

    :goto_b
    return-void
.end method

.method private a(I)V
    .registers 4

    .line 228
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "Start sign in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->g()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 131
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->d()V

    return-void
.end method

.method private synthetic a(Landroid/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V
    .registers 3

    const/4 p2, -0x1

    .line 135
    invoke-virtual {p1, p2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    sget p2, Lcom/gaia/ngallery/i$c;->colorError:I

    invoke-static {p0, p2}, Lcom/prism/commons/f/t;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .registers 2

    .line 153
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f()V

    .line 154
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->n(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 159
    invoke-static {p0, p2}, Lcom/gaia/ngallery/l/g;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Lcom/gaia/ngallery/sync/b;)V
    .registers 8

    .line 165
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncStatus status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    .line 167
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    sget v4, Lcom/gaia/ngallery/i$n;->button_sync_now_syncing:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3c

    .line 170
    :cond_30
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    sget v4, Lcom/gaia/ngallery/i$n;->button_sync_now:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    :goto_3c
    sget v0, Lcom/gaia/ngallery/i$n;->count_synced_files:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v4, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v0, Lcom/gaia/ngallery/i$n;->count_synced_files:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1}, Lcom/gaia/ngallery/sync/b;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 2

    .line 263
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 3

    .line 305
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 79
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;)V
    .registers 3

    .line 261
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "save sync account failed:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic a(Ljava/lang/Void;)V
    .registers 3

    .line 192
    sget-object p1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v0, "signout success2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a()V

    return-void
.end method

.method private synthetic b(Lcom/gaia/ngallery/sync/model/SyncAccount;)Lcom/gaia/ngallery/sync/model/SyncAccount;
    .registers 3

    .line 257
    invoke-static {}, Lcom/gaia/ngallery/sync/d;->a()Lcom/gaia/ngallery/sync/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gaia/ngallery/sync/d;->a(Landroid/content/Context;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    .line 258
    iput-object p1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    return-object p1
.end method

.method private synthetic b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 182
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "signout success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    sget v0, Lcom/gaia/ngallery/i$h;->bt_google_cloud_login:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .registers 6

    .line 124
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/gaia/ngallery/i$n;->dialog_logout_title:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    .line 125
    invoke-virtual {v2}, Lcom/gaia/ngallery/sync/model/SyncAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$n;->dialog_logout_content:I

    .line 126
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$n;->dialog_logout_cancel:I

    sget-object v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/gaia/ngallery/i$n;->dialog_logout_ok:I

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 134
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic b(Lcom/gaia/ngallery/sync/b;)V
    .registers 3

    .line 148
    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;

    invoke-direct {v0, p0, p1}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 5

    .line 270
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync account isExpired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/gaia/ngallery/sync/b/d;->a()Lcom/gaia/ngallery/sync/b/d;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gaia/ngallery/sync/i;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 3

    .line 220
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Exception;)V
    .registers 3

    .line 195
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "signOut failed:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic c(Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 184
    invoke-static {}, Lcom/gaia/ngallery/sync/d;->a()Lcom/gaia/ngallery/sync/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/sync/d;->b(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Lcom/gaia/ngallery/sync/a;->a()Lcom/gaia/ngallery/sync/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/sync/a;->a(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lcom/gaia/ngallery/sync/g;->a()Lcom/gaia/ngallery/sync/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/sync/g;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    .line 188
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "signout success1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private c()V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->d:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    sget v0, Lcom/gaia/ngallery/i$h;->iv_account_profile_photo:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 115
    sget v1, Lcom/gaia/ngallery/i$h;->iv_account_type_icon:I

    invoke-virtual {p0, v1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 116
    sget v2, Lcom/gaia/ngallery/i$h;->tv_account_profile_name:I

    invoke-virtual {p0, v2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    sget v3, Lcom/gaia/ngallery/i$h;->tv_account_profile_email:I

    invoke-virtual {p0, v3}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    sget v4, Lcom/gaia/ngallery/i$m;->ic_google_drive:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-virtual {v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-virtual {v1}, Lcom/gaia/ngallery/sync/model/SyncAccount;->getAccountSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {p0}, Lcom/gaia/ngallery/c/a/a/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/gaia/ngallery/c/a/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-virtual {v2}, Lcom/gaia/ngallery/sync/model/SyncAccount;->getProfilePhoto()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaia/ngallery/c/a/a/k;->c(Landroid/net/Uri;)Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaia/ngallery/c/a/a/j;->k()Lcom/gaia/ngallery/c/a/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaia/ngallery/c/a/a/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/q;

    .line 123
    sget v0, Lcom/gaia/ngallery/i$h;->bt_unbind_sync_account:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lcom/gaia/ngallery/i$h;->bt_sync_now:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    .line 143
    sget v0, Lcom/gaia/ngallery/i$h;->tv_synced_image_count:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->g:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/gaia/ngallery/i$h;->tv_synced_video_count:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->h:Landroid/widget/TextView;

    .line 145
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/sync/c;->a(Landroid/content/Context;)Lcom/gaia/ngallery/sync/b;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/gaia/ngallery/sync/b;)V

    .line 147
    invoke-static {}, Lcom/gaia/ngallery/sync/c;->a()Lcom/gaia/ngallery/sync/c;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/sync/c;->a(Lcom/gaia/ngallery/sync/c$a;)V

    .line 152
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/gaia/ngallery/i$h;->sw_sync_wifi_only:I

    invoke-virtual {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 157
    invoke-static {p0}, Lcom/gaia/ngallery/l/g;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .registers 3

    .line 104
    sget-object p1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v0, "Google Drive Login"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/gaia/ngallery/a/a;->l(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->e()V

    return-void
.end method

.method private synthetic c(Lcom/gaia/ngallery/sync/b;)V
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/gaia/ngallery/sync/b;)V

    return-void
.end method

.method private d()V
    .registers 4

    .line 180
    sget-object v0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->g()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0;

    invoke-direct {v2, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8;

    invoke-direct {v1, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private e()V
    .registers 5

    .line 202
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInIfNeeded account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_27

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_27

    .line 207
    :cond_23
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2b

    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(I)V

    :goto_2b
    return-void
.end method

.method private f()V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_a

    .line 212
    iget-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_3e

    .line 214
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInIfNeededAndSync account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3a

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_3a

    .line 219
    :cond_2d
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;

    invoke-direct {v2, p0, v0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_3e

    :cond_3a
    :goto_3a
    const/4 v0, 0x2

    .line 217
    invoke-direct {p0, v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(I)V

    :goto_3e
    return-void
.end method

.method private g()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .registers 4

    .line 235
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FILE:Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 239
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    return-object v0
.end method

.method private synthetic h()Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-static {}, Lcom/gaia/ngallery/sync/d;->a()Lcom/gaia/ngallery/sync/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gaia/ngallery/sync/d;->a(Landroid/content/Context;)Lcom/gaia/ngallery/sync/model/SyncAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->i:Lcom/gaia/ngallery/sync/model/SyncAccount;

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$-aa2ejia0ofsg8axK73TEAxjsLc(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$07frTNP5hEgjdexisZjXnSTOMYM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c(Lcom/gaia/ngallery/sync/b;)V

    return-void
.end method

.method public static synthetic lambda$2YUYIWmvxJ6zhSfOU27La5U9pN0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$5hLRd9S-5i94cVLXDo6uxv9HJBc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/gaia/ngallery/sync/b;)V

    return-void
.end method

.method public static synthetic lambda$7eiL-b6BCmERmd4PR6aJfiOopg0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$80HovhK9P22GZuLASOH9HV9CoTg(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic lambda$BzITRgzVS4VA6TbP8b4FcAOs7C0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$D51zdAydOqObcCdJ_8O6jKrdkcM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method

.method public static synthetic lambda$Mlnk_H-MngtZSKRGv4aVPXFeHvs(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ODDCqg5crxJvFfcNPUyRcMjwrUc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Landroid/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$VomFDUvlRh_fdPy8QfaHGErcHMc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$XDQTsdHqMd0AiNb8YE0HKtjXWV8(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic lambda$a3-aS9s0kEBnSd1sJ6tMshKCDzM(Lcom/gaia/ngallery/ui/CloudSettingActivity;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->h()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cb51_OIu3_T2OUHTo_oaCCNdtVE(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$gcynQp8wVO6O0zjq0DiWsntABLM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method

.method public static synthetic lambda$oy8H1pg7kuem5NlQyROHwewjPrE(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)Lcom/gaia/ngallery/sync/model/SyncAccount;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Lcom/gaia/ngallery/sync/model/SyncAccount;)Lcom/gaia/ngallery/sync/model/SyncAccount;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wcodCGJpzjpKKgTTL32AluuIn4c(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$xlx-UXR-RpfH0Ov6QHvrENI50sM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$y6g3PcnN3NvtMM9JhG-G2k5ega8(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_cc

    goto/16 :goto_ca

    :pswitch_a
    if-ne p2, p3, :cond_41

    .line 301
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 302
    sget-object p2, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signInGoogleDrive account:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_36

    .line 304
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;

    invoke-direct {p3, p0, p1}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_ca

    :cond_36
    const-string p1, "Login Google Drive Failed due to no account returned"

    .line 308
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_ca

    .line 310
    :cond_41
    sget-object p1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Google Drive Failed code:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Login Google Drive Failed code:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_ca

    :pswitch_70
    if-ne p2, p3, :cond_9c

    .line 287
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 288
    sget-object p2, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signInGoogleDrive account:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_92

    .line 290
    invoke-direct {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/tasks/Task;

    goto :goto_ca

    :cond_92
    const-string p1, "Login Google Drive Failed due to no account returned"

    .line 292
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_ca

    .line 294
    :cond_9c
    sget-object p1, Lcom/gaia/ngallery/ui/CloudSettingActivity;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Google Drive Failed code:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Login Google Drive Failed code:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_70
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Lcom/gaia/ngallery/i$k;->activity_cloud_setting:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->setContentView(I)V

    .line 69
    sget p1, Lcom/gaia/ngallery/i$h;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 70
    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 71
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    sget p1, Lcom/gaia/ngallery/i$h;->layout_not_bound:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->d:Landroid/view/ViewGroup;

    .line 74
    sget p1, Lcom/gaia/ngallery/i$h;->layout_bound:I

    invoke-virtual {p0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/CloudSettingActivity;->e:Landroid/view/ViewGroup;

    .line 75
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg;

    invoke-direct {v0, p0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg;-><init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_c

    .line 87
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->finish()V

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 329
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 330
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->c(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 320
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 321
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 322
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 323
    :cond_16
    invoke-static {}, Lcom/gaia/ngallery/b;->a()Lcom/prism/hider/vault/commons/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/prism/hider/vault/commons/i;->a(Landroid/app/Activity;)Z

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$aa2ejia0ofsg8axK73TEAxjsLc (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$-aa2ejia0ofsg8axK73TEAxjsLc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$-aa2ejia0ofsg8axK73TEAxjsLc(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/sync/b;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;->f$1:Lcom/gaia/ngallery/sync/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$07frTNP5hEgjdexisZjXnSTOMYM;->f$1:Lcom/gaia/ngallery/sync/b;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$07frTNP5hEgjdexisZjXnSTOMYM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0 (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$2YUYIWmvxJ6zhSfOU27La5U9pN0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$2YUYIWmvxJ6zhSfOU27La5U9pN0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrIg (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$3CQ1M4Z2iC6vFKuFwE6OFmnrI-g(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$5hLRd9S5i94cVLXDo6uxv9HJBc (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/gaia/ngallery/sync/c$a;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalSyncStatusChange(Lcom/gaia/ngallery/sync/b;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$5hLRd9S-5i94cVLXDo6uxv9HJBc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$5hLRd9S-5i94cVLXDo6uxv9HJBc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/b;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$7eiLb6BCmERmd4PR6aJfiOopg0 (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$7eiL-b6BCmERmd4PR6aJfiOopg0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$7eiL-b6BCmERmd4PR6aJfiOopg0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$80HovhK9P22GZuLASOH9HV9CoTg;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$80HovhK9P22GZuLASOH9HV9CoTg(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0 (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$BzITRgzVS4VA6TbP8b4FcAOs7C0;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$BzITRgzVS4VA6TbP8b4FcAOs7C0(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;->f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$D51zdAydOqObcCdJ_8O6jKrdkcM;->f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    check-cast p1, Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$D51zdAydOqObcCdJ_8O6jKrdkcM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$Mlnk_HMngtZSKRGv4aVPXFeHvs (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;->f$1:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$Mlnk_H-MngtZSKRGv4aVPXFeHvs;->f$1:Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$Mlnk_H-MngtZSKRGv4aVPXFeHvs(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/support/v7/app/AlertDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;->f$1:Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$ODDCqg5crxJvFfcNPUyRcMjwrUc;->f$1:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$ODDCqg5crxJvFfcNPUyRcMjwrUc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$VomFDUvlRh_fdPy8QfaHGErcHMc;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$VomFDUvlRh_fdPy8QfaHGErcHMc(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8 (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$XDQTsdHqMd0AiNb8YE0HKtjXWV8;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$XDQTsdHqMd0AiNb8YE0HKtjXWV8(Lcom/gaia/ngallery/ui/CloudSettingActivity;Ljava/lang/Void;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$a3aS9s0kEBnSd1sJ6tMshKCDzM (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$a3-aS9s0kEBnSd1sJ6tMshKCDzM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$a3-aS9s0kEBnSd1sJ6tMshKCDzM(Lcom/gaia/ngallery/ui/CloudSettingActivity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$cb51_OIu3_T2OUHTo_oaCCNdtVE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$cb51_OIu3_T2OUHTo_oaCCNdtVE(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;->f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$gcynQp8wVO6O0zjq0DiWsntABLM;->f$1:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    check-cast p1, Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-static {v0, v1, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$gcynQp8wVO6O0zjq0DiWsntABLM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

.field private final synthetic f$1:Lcom/gaia/ngallery/sync/model/SyncAccount;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iput-object p2, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;->f$1:Lcom/gaia/ngallery/sync/model/SyncAccount;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    iget-object v1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$oy8H1pg7kuem5NlQyROHwewjPrE;->f$1:Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-static {v0, v1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$oy8H1pg7kuem5NlQyROHwewjPrE(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)Lcom/gaia/ngallery/sync/model/SyncAccount;

    move-result-object v0

    return-object v0
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;-><init>()V

    sput-object v0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;->INSTANCE:Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$wcodCGJpzjpKKgTTL32AluuIn4c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$wcodCGJpzjpKKgTTL32AluuIn4c(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$xlxUXRRpfH0Ov6QHvrENI50sM (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$xlx-UXR-RpfH0Ov6QHvrENI50sM;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    invoke-static {v0, p1, p2}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$xlx-UXR-RpfH0Ov6QHvrENI50sM(Lcom/gaia/ngallery/ui/CloudSettingActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gaia.ngallery.ui.$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhGG2k5ega8 (com.gaia.ngallery.ui.-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8)
.class public final synthetic Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gaia/ngallery/ui/CloudSettingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gaia/ngallery/ui/-$$Lambda$CloudSettingActivity$y6g3PcnN3NvtMM9JhG-G2k5ega8;->f$0:Lcom/gaia/ngallery/ui/CloudSettingActivity;

    check-cast p1, Lcom/gaia/ngallery/sync/model/SyncAccount;

    invoke-static {v0, p1}, Lcom/gaia/ngallery/ui/CloudSettingActivity;->lambda$y6g3PcnN3NvtMM9JhG-G2k5ega8(Lcom/gaia/ngallery/ui/CloudSettingActivity;Lcom/gaia/ngallery/sync/model/SyncAccount;)V

    return-void
.end method
