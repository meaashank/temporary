###### Class com.amazonaws.Response (com.amazonaws.Response)
.class public final Lcom/amazonaws/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/amazonaws/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/amazonaws/Response;->b:Lcom/amazonaws/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/amazonaws/http/HttpResponse;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/amazonaws/Response;->b:Lcom/amazonaws/http/HttpResponse;

    return-object v0
.end method
