###### Class com.amazonaws.auth.BasicAWSCredentials (com.amazonaws.auth.BasicAWSCredentials)
.class public Lcom/amazonaws/auth/BasicAWSCredentials;
.super Ljava/lang/Object;
.source "BasicAWSCredentials.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentials;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 42
    iput-object p1, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->b:Ljava/lang/String;

    return-void

    .line 39
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Secret key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Access key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/amazonaws/auth/BasicAWSCredentials;->b:Ljava/lang/String;

    return-object v0
.end method
