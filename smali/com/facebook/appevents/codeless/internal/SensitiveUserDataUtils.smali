###### Class com.facebook.appevents.codeless.internal.SensitiveUserDataUtils (com.facebook.appevents.codeless.internal.SensitiveUserDataUtils)
.class public Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCreditCard(Landroid/widget/TextView;)Z
    .registers 8

    .line 79
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_47

    const/16 v2, 0x13

    if-le v0, v2, :cond_1a

    goto :goto_47

    :cond_1a
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ltz v0, :cond_41

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_40

    const/16 v6, 0x39

    if-le v5, v6, :cond_2d

    goto :goto_40

    :cond_2d
    add-int/lit8 v5, v5, -0x30

    if-eqz v4, :cond_3a

    mul-int/lit8 v5, v5, 0x2

    const/16 v6, 0x9

    if-le v5, v6, :cond_3a

    .line 98
    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v2

    :cond_3a
    add-int/2addr v3, v5

    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_40
    :goto_40
    return v1

    .line 104
    :cond_41
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_46

    const/4 v1, 0x1

    :cond_46
    return v1

    :cond_47
    :goto_47
    return v1
.end method

.method private static isEmail(Landroid/widget/TextView;)Z
    .registers 3

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    .line 56
    :cond_a
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_22

    .line 60
    :cond_17
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method private static isPassword(Landroid/widget/TextView;)Z
    .registers 3

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    .line 47
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    .line 48
    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    return p0
.end method

.method private static isPersonName(Landroid/widget/TextView;)Z
    .registers 2

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    const/16 v0, 0x60

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isPhoneNumber(Landroid/widget/TextView;)Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static isPostalAddress(Landroid/widget/TextView;)Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    const/16 v0, 0x70

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isSensitiveUserData(Landroid/view/View;)Z
    .registers 3

    .line 33
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 34
    check-cast p0, Landroid/widget/TextView;

    .line 35
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 36
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 37
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1

    :cond_2d
    return v1
.end method
