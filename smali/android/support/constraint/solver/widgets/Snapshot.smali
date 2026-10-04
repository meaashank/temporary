###### Class android.support.constraint.solver.widgets.Snapshot (android.support.constraint.solver.widgets.Snapshot)
.class public Landroid/support/constraint/solver/widgets/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/Snapshot$Connection;
    }
.end annotation


# instance fields
.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Snapshot$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 7

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mX:I

    .line 93
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mY:I

    .line 94
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mHeight:I

    .line 96
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_40

    .line 98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 99
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/constraint/solver/widgets/Snapshot$Connection;

    invoke-direct {v4, v2}, Landroid/support/constraint/solver/widgets/Snapshot$Connection;-><init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_40
    return-void
.end method


# virtual methods
.method public applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 5

    .line 126
    iget v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mX:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setX(I)V

    .line 127
    iget v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mY:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setY(I)V

    .line 128
    iget v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 129
    iget v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 130
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    .line 131
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Snapshot$Connection;

    .line 132
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 5

    .line 109
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mX:I

    .line 110
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mY:I

    .line 111
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mWidth:I

    .line 112
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mHeight:I

    .line 113
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_2f

    .line 115
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Snapshot;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/Snapshot$Connection;

    .line 116
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    return-void
.end method

###### Class android.support.constraint.solver.widgets.Snapshot.Connection (android.support.constraint.solver.widgets.Snapshot$Connection)
.class Landroid/support/constraint/solver/widgets/Snapshot$Connection;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/Snapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCreator:I

.field private mMargin:I

.field private mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field private mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 49
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 50
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 51
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 52
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mCreator:I

    return-void
.end method


# virtual methods
.method public applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 6

    .line 81
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object p1

    .line 82
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mMargin:I

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iget v3, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mCreator:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    return-void
.end method

.method public updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 3

    .line 61
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 62
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p1, :cond_31

    .line 63
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 64
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 65
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 66
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mCreator:I

    goto :goto_3d

    :cond_31
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mMargin:I

    .line 70
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mStrengh:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 71
    iput p1, p0, Landroid/support/constraint/solver/widgets/Snapshot$Connection;->mCreator:I

    :goto_3d
    return-void
.end method
