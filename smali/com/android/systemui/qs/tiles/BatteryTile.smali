.class public Lcom/android/systemui/qs/tiles/BatteryTile;
.super Lcom/android/systemui/qs/QSTile;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

.field private mCharging:Z

.field private mDetailShown:Z

.field private mLevel:I

.field private mPluggedIn:Z

.field private mPowerSave:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BatteryTile;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPluggedIn:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 51
    new-instance v0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    .line 61
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 59
    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x105

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->showDetail(Z)V

    .line 102
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 11
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 113
    if-eqz p2, :cond_72

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "level":I
    :goto_8
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "percentage":Ljava/lang/String;
    new-instance v2, Lcom/android/systemui/qs/tiles/BatteryTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$1;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 133
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 135
    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 134
    const v5, 0x7f0f0254

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string/jumbo v3, ","

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f031a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    const-string/jumbo v3, ","

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0235

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 141
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 112
    return-void

    .line 113
    .end local v0    # "level":I
    .end local v1    # "percentage":Ljava/lang/String;
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_72
    iget v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    .restart local v0    # "level":I
    goto :goto_8

    .line 137
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "percentage":Ljava/lang/String;
    :cond_75
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f02e2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    .line 138
    :cond_83
    const-string/jumbo v2, ""

    goto :goto_49
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 5
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 146
    iput p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mLevel:I

    .line 147
    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPluggedIn:Z

    .line 148
    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mCharging:Z

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->refreshState(Ljava/lang/Object;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    if-eqz v0, :cond_16

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    .line 145
    :cond_16
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 3
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mPowerSave:Z

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->refreshState(Ljava/lang/Object;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mDetailShown:Z

    if-eqz v0, :cond_f

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    .line 156
    :cond_f
    return-void
.end method

.method public setDetailListening(Z)V
    .registers 4
    .param p1, "listening"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    .line 91
    if-nez p1, :cond_b

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;

    .line 89
    :cond_b
    return-void
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_8

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 80
    :goto_7
    return-void

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_7
.end method
