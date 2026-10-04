###### Class android.support.design.internal.BottomNavigationPresenter (android.support.design.internal.BottomNavigationPresenter)
.class public Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private menuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->id:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 2

    .line 53
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3

    .line 47
    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 48
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p2}, Landroid/support/design/internal/BottomNavigationMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 112
    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_d

    .line 113
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget p1, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 105
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .registers 2

    .line 42
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 95
    iput p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->id:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 118
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    .line 58
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->updateSuspended:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 62
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_12

    .line 64
    :cond_d
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->menuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    :goto_12
    return-void
.end method

###### Class android.support.design.internal.BottomNavigationPresenter.SavedState (android.support.design.internal.BottomNavigationPresenter$SavedState)
.class Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/BottomNavigationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/internal/BottomNavigationPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field selectedItemId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    iget p2, p0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class android.support.design.internal.BottomNavigationPresenter.SavedState.AnonymousClass1 (android.support.design.internal.BottomNavigationPresenter$SavedState$1)
.class final Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/design/internal/BottomNavigationPresenter$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    .registers 3

    .line 144
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    .registers 2

    .line 149
    new-array p1, p1, [Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState$1;->newArray(I)[Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
