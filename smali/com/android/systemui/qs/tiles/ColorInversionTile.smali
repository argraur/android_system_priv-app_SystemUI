.class public Lcom/android/systemui/qs/tiles/ColorInversionTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
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

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V
    .registers 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 34
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200a9

    .line 35
    const v2, 0x7f0200a6

    .line 34
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 37
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200a7

    .line 38
    const v2, 0x7f0200a8

    .line 37
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 46
    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    .line 47
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 46
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;-><init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 43
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_12

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 114
    const v1, 0x7f0f0275

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    .line 117
    const v1, 0x7f0f0274

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 107
    const/16 v0, 0x74

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_22

    move v0, v1

    :goto_11
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 85
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_24

    :goto_1e
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/SecureSetting;->setValue(I)V

    .line 83
    return-void

    :cond_22
    move v0, v2

    .line 84
    goto :goto_11

    :cond_24
    move v1, v2

    .line 85
    goto :goto_1e
.end method

.method protected handleDestroy()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 56
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 95
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_30

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, "value":I
    :goto_b
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 97
    .local v0, "enabled":Z
    :cond_e
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 98
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0f02bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 99
    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_1f
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 101
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 100
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 102
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 94
    return-void

    .line 95
    .end local v0    # "enabled":Z
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_30
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    goto :goto_b

    .line 99
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "enabled":Z
    .restart local v1    # "value":I
    :cond_37
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_1f
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 67
    return-void
.end method
