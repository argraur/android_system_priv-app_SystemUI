.class public Lcom/android/systemui/qs/tiles/DataSaverTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DataSaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;"
    }
.end annotation


# instance fields
.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DataSaverTile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 36
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 34
    return-void
.end method

.method private toggleDataSaver()V
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->getMetricsCategory()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->setDataSaverEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 83
    return-void

    .line 84
    :cond_37
    const/4 v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 109
    const/16 v0, 0x11c

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_15

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 60
    if-eqz v1, :cond_19

    .line 63
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->toggleDataSaver()V

    .line 64
    return-void

    .line 67
    :cond_19
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "dialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x10405ca

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 69
    const v1, 0x10405c9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 71
    new-instance v1, Lcom/android/systemui/qs/tiles/DataSaverTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DataSaverTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V

    .line 70
    const v2, 0x10405cb

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 77
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 78
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QsDataSaverDialogShown"

    invoke-static {v1, v2, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 97
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_33

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 101
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3a

    const v0, 0x7f02008a

    :goto_22
    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 104
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 96
    return-void

    .line 98
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v0

    goto :goto_a

    .line 102
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_3a
    const v0, 0x7f02008b

    goto :goto_22
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onDataSaverChanged(Z)V
    .registers 3
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->refreshState(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_8

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    .line 45
    :goto_7
    return-void

    .line 49
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->remListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    goto :goto_7
.end method
