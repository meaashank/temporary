###### Class com.amazonaws.services.s3.model.RedirectRule (com.amazonaws.services.s3.model.RedirectRule)
.class public Lcom/amazonaws/services/s3/model/RedirectRule;
.super Ljava/lang/Object;
.source "RedirectRule.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->e:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->e:Ljava/lang/String;

    return-object p0
.end method
