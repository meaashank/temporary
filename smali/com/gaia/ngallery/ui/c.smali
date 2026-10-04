###### Class com.gaia.ngallery.ui.c (com.gaia.ngallery.ui.c)
.class public Lcom/gaia/ngallery/ui/c;
.super Landroid/support/v4/app/Fragment;
.source "FloatingButtonBlankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaia/ngallery/ui/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ARG_SHOW_ADD_ALBUM_BTN"


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Lcom/gaia/ngallery/ui/c$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/gaia/ngallery/ui/c;
    .registers 4

    .line 38
    new-instance v0, Lcom/gaia/ngallery/ui/c;

    invoke-direct {v0}, Lcom/gaia/ngallery/ui/c;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_SHOW_ADD_ALBUM_BTN"

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/gaia/ngallery/ui/c;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 84
    instance-of v0, p1, Lcom/gaia/ngallery/ui/c$a;

    if-eqz v0, :cond_b

    .line 85
    check-cast p1, Lcom/gaia/ngallery/ui/c$a;

    iput-object p1, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 100
    sget v0, Lcom/gaia/ngallery/i$h;->ft_add_album:I

    if-ne p1, v0, :cond_e

    .line 101
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/c$a;->c()V

    goto :goto_2b

    .line 103
    :cond_e
    sget v0, Lcom/gaia/ngallery/i$h;->ft_import_video_photo:I

    if-ne p1, v0, :cond_18

    .line 104
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/c$a;->d()V

    goto :goto_2b

    .line 105
    :cond_18
    sget v0, Lcom/gaia/ngallery/i$h;->ft_take_a_photo:I

    if-ne p1, v0, :cond_22

    .line 106
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/c$a;->a()V

    goto :goto_2b

    .line 107
    :cond_22
    sget v0, Lcom/gaia/ngallery/i$h;->ft_take_a_video:I

    if-ne p1, v0, :cond_2b

    .line 108
    iget-object p1, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    invoke-interface {p1}, Lcom/gaia/ngallery/ui/c$a;->b()V

    .line 110
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 50
    invoke-virtual {p0}, Lcom/gaia/ngallery/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ARG_SHOW_ADD_ALBUM_BTN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/gaia/ngallery/ui/c;->b:Ljava/lang/Boolean;

    :cond_19
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 59
    sget p2, Lcom/gaia/ngallery/i$k;->fragment_floating_button_blank:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget p2, Lcom/gaia/ngallery/i$h;->multiple_actions:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;

    .line 61
    invoke-virtual {p2}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionsMenu;->d()V

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p2, Lcom/gaia/ngallery/i$h;->ft_take_a_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 64
    invoke-virtual {p2, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p2, Lcom/gaia/ngallery/i$h;->ft_take_a_photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 66
    invoke-virtual {p2, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget p2, Lcom/gaia/ngallery/i$h;->ft_import_video_photo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 68
    invoke-virtual {p2, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p2, Lcom/gaia/ngallery/i$h;->ft_add_album:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;

    .line 70
    iget-object p3, p0, Lcom/gaia/ngallery/ui/c;->b:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4e

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p2, p3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setVisibility(I)V

    .line 72
    invoke-virtual {p2, p0}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53

    :cond_4e
    const/16 p3, 0x8

    .line 74
    invoke-virtual {p2, p3}, Lcom/gaia/ngallery/ui/widget/floatingbutton/FloatingActionButton;->setVisibility(I)V

    :goto_53
    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 92
    iget-object v0, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/gaia/ngallery/ui/c;->c:Lcom/gaia/ngallery/ui/c$a;

    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gaia.ngallery.ui.c.a (com.gaia.ngallery.ui.c$a)
.class public interface abstract Lcom/gaia/ngallery/ui/c$a;
.super Ljava/lang/Object;
.source "FloatingButtonBlankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaia/ngallery/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
