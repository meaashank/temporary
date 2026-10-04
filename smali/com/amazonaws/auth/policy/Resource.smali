###### Class com.amazonaws.auth.policy.Resource (com.amazonaws.auth.policy.Resource)
.class public Lcom/amazonaws/auth/policy/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Resource;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Resource;->a:Ljava/lang/String;

    return-object v0
.end method
