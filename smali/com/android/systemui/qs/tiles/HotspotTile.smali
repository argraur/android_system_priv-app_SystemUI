.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mDisableNoAnimation:Lcom/android/systemui/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mUnavailable:Lcom/android/systemui/qs/QSTile$Icon;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .registers 2
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const v3, 0x7f0200a1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 41
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200a2

    .line 42
    const v2, 0x7f02009f

    .line 41
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 44
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0200a0

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 46
    invoke-static {v3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/qs/QSTile$Icon;

    .line 47
    const v0, 0x7f0200a3

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/qs/QSTile$Icon;

    .line 50
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    .line 56
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 57
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 54
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_12

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0277

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0276

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 144
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f02c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 103
    .local v0, "isEnabled":Z
    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 104
    return-void

    .line 106
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result v5

    if-eqz v0, :cond_2f

    move v1, v2

    :goto_24
    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    if-eqz v0, :cond_31

    :goto_2b
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 101
    return-void

    :cond_2f
    move v1, v3

    .line 106
    goto :goto_24

    :cond_31
    move v2, v3

    .line 107
    goto :goto_2b
.end method

.method protected handleDestroy()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 71
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .registers 9
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f02c6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 119
    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/String;)V

    .line 120
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6b

    .line 121
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 125
    :goto_1e
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :goto_24
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 126
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 127
    .local v1, "wasAirplane":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x1

    :goto_31
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 128
    iget-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eqz v2, :cond_79

    .line 129
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 130
    .local v0, "disabledColor":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 131
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 132
    const/16 v5, 0x12

    .line 130
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnavailable:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 138
    .end local v0    # "disabledColor":I
    :cond_5c
    :goto_5c
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 137
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 139
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 116
    return-void

    .line 123
    .end local v1    # "wasAirplane":Z
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_6b
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    goto :goto_1e

    .line 125
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_74
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_24

    .restart local v1    # "wasAirplane":Z
    :cond_77
    move v2, v3

    .line 127
    goto :goto_31

    .line 134
    :cond_79
    if-eqz v1, :cond_5c

    .line 135
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDisableNoAnimation:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_5c
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p1, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 5
    .param p1, "listening"    # Z

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v1, p1, :cond_5

    return-void

    .line 83
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 84
    if-eqz p1, :cond_24

    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    .line 92
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 81
    return-void

    .line 90
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    goto :goto_1e
.end method
