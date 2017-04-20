.class public Lcom/android/systemui/qs/tiles/WorkModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;"
    }
.end annotation


# instance fields
.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 33
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020124

    .line 34
    const v2, 0x7f020121

    .line 33
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 36
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f020122

    .line 37
    const v2, 0x7f020123

    .line 36
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 43
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 41
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_12

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f027c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f027b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 115
    const/16 v0, 0x101

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_22

    move v0, v1

    :goto_11
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 68
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_24

    :goto_1e
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    .line 66
    return-void

    :cond_22
    move v0, v2

    .line 67
    goto :goto_11

    :cond_24
    move v1, v2

    .line 68
    goto :goto_1e
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_35

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 99
    :goto_c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 100
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3e

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    .line 103
    const v1, 0x7f0f027a

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 110
    :goto_2a
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 92
    return-void

    .line 96
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    goto :goto_c

    .line 105
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mContext:Landroid/content/Context;

    .line 107
    const v1, 0x7f0f0279

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2a
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onManagedProfileChanged()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->isWorkModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->refreshState(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onManagedProfileRemoved()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->removeTile(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_8

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    .line 52
    :goto_7
    return-void

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    goto :goto_7
.end method
