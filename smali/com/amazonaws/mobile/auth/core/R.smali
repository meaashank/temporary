###### Class com.amazonaws.mobile.auth.core.R (com.amazonaws.mobile.auth.core.R)
.class public final Lcom/amazonaws/mobile/auth/core/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/core/R$styleable;,
        Lcom/amazonaws/mobile/auth/core/R$string;,
        Lcom/amazonaws/mobile/auth/core/R$id;,
        Lcom/amazonaws/mobile/auth/core/R$attr;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.R.attr (com.amazonaws.mobile.auth.core.R$attr)
.class public final Lcom/amazonaws/mobile/auth/core/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final button_style:I = 0x7f040067

.field public static final text:I = 0x7f040265


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.R.id (com.amazonaws.mobile.auth.core.R$id)
.class public final Lcom/amazonaws/mobile/auth/core/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final large:I = 0x7f09013a

.field public static final small:I = 0x7f090204


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.R.string (com.amazonaws.mobile.auth.core.R$string)
.class public final Lcom/amazonaws/mobile/auth/core/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final sign_in_failure_message_format:I = 0x7f1001c0


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.amazonaws.mobile.auth.core.R.styleable (com.amazonaws.mobile.auth.core.R$styleable)
.class public final Lcom/amazonaws/mobile/auth/core/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_button_style:I = 0x1

.field public static final SignInButton_colorScheme:I = 0x2

.field public static final SignInButton_scopeUris:I = 0x3

.field public static final SignInButton_text:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/amazonaws/mobile/auth/core/R$styleable;->SignInButton:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f040062
        0x7f040067
        0x7f0400a8
        0x7f040200
        0x7f040265
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
