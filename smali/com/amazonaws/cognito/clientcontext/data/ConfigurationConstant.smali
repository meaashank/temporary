###### Class com.amazonaws.cognito.clientcontext.data.ConfigurationConstant (com.amazonaws.cognito.clientcontext.data.ConfigurationConstant)
.class public Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;
.super Ljava/lang/Object;
.source "ConfigurationConstant.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 31
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
