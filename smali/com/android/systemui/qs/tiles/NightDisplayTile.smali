.class public Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NightDisplayTile.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/internal/app/NightDisplayController$Callback;"
    }
.end annotation


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mIsListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 38
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 36
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 90
    const/16 v0, 0x1eb

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    .line 54
    .local v0, "activated":Z
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 52
    return-void

    .line 53
    .end local v0    # "activated":Z
    :cond_18
    const/4 v0, 0x1

    .restart local v0    # "activated":Z
    goto :goto_9
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    .line 77
    .local v0, "isActivated":Z
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 78
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 79
    if-eqz v0, :cond_36

    const v1, 0x7f0200e2

    :goto_18
    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3a

    .line 82
    const v1, 0x7f0f02d2

    .line 81
    :goto_25
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 85
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 75
    return-void

    .line 80
    :cond_36
    const v1, 0x7f0200e1

    goto :goto_18

    .line 83
    :cond_3a
    const v1, 0x7f0f02d3

    goto :goto_25
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 66
    :cond_a
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_1c

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 71
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    .line 59
    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    .line 115
    return-void
.end method

.method protected setListening(Z)V
    .registers 4
    .param p1, "listening"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 101
    if-eqz p1, :cond_d

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    .line 99
    :goto_c
    return-void

    .line 105
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    goto :goto_c
.end method
