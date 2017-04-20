.class public Lcom/android/systemui/statusbar/phone/LightStatusBarController;
.super Ljava/lang/Object;
.source "LightStatusBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastStatusBarMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .registers 4
    .param p1, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p2, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 49
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 46
    return-void
.end method

.method private animateChange()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_7

    .line 93
    return v2

    .line 95
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 96
    .local v0, "unlockMode":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    .line 97
    if-eq v0, v1, :cond_13

    .line 96
    :goto_12
    return v1

    :cond_13
    move v1, v2

    .line 97
    goto :goto_12

    :cond_15
    move v1, v2

    .line 96
    goto :goto_12
.end method

.method private isLight(II)Z
    .registers 8
    .param p1, "vis"    # I
    .param p2, "statusBarMode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x4

    if-eq p2, v4, :cond_8

    .line 85
    const/4 v4, 0x6

    if-ne p2, v4, :cond_1b

    .line 86
    .local v1, "isTransparentBar":Z
    :cond_8
    :goto_8
    if-eqz v1, :cond_12

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_12
    const/4 v0, 0x0

    .line 87
    .local v0, "allowLight":Z
    :goto_13
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_1f

    const/4 v2, 0x1

    .line 88
    .local v2, "light":Z
    :goto_18
    if-eqz v0, :cond_21

    .end local v2    # "light":Z
    :goto_1a
    return v2

    .end local v0    # "allowLight":Z
    .end local v1    # "isTransparentBar":Z
    :cond_1b
    move v1, v3

    .line 85
    goto :goto_8

    .line 86
    .restart local v1    # "isTransparentBar":Z
    :cond_1d
    const/4 v0, 0x1

    .restart local v0    # "allowLight":Z
    goto :goto_13

    .line 87
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "light":Z
    goto :goto_18

    :cond_21
    move v2, v3

    .line 88
    goto :goto_1a
.end method

.method private update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p2, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 101
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v1, 0x0

    .line 105
    .local v1, "hasDockedStack":Z
    :goto_9
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-nez v2, :cond_41

    :cond_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_17

    if-eqz v1, :cond_41

    .line 113
    :cond_17
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v2, :cond_1f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-eqz v2, :cond_50

    :cond_1f
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v2, :cond_25

    if-eqz v1, :cond_50

    .line 120
    :cond_25
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_5b

    move-object v0, p1

    .line 121
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_2a
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 126
    :goto_35
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    .line 100
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_3e
    return-void

    .line 101
    .end local v1    # "hasDockedStack":Z
    :cond_3f
    const/4 v1, 0x1

    .restart local v1    # "hasDockedStack":Z
    goto :goto_9

    .line 106
    :cond_41
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_3e

    .line 114
    :cond_50
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_3e

    :cond_5b
    move-object v0, p2

    .line 120
    goto :goto_2a

    .line 124
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_35
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .registers 4
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 10
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 137
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 139
    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastStatusBarMode:I

    .line 138
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 137
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    .line 136
    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .registers 16
    .param p1, "fullscreenStackVis"    # I
    .param p2, "dockedStackVis"    # I
    .param p3, "mask"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "sbModeChanged"    # Z
    .param p7, "statusBarMode"    # I

    .prologue
    .line 60
    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    .line 61
    .local v5, "oldFullscreen":I
    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    .line 62
    .local v3, "newFullscreen":I
    xor-int v1, v3, v5

    .line 63
    .local v1, "diffFullscreen":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    .line 64
    .local v4, "oldDocked":I
    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    .line 65
    .local v2, "newDocked":I
    xor-int v0, v2, v4

    .line 66
    .local v0, "diffDocked":I
    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_1c

    .line 67
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_3c

    .line 72
    :cond_1c
    invoke-direct {p0, v3, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    .line 73
    invoke-direct {p0, v2, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    .line 74
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 76
    :goto_2b
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    .line 78
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastStatusBarMode:I

    .line 79
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    return-void

    .line 66
    :cond_3c
    if-nez p6, :cond_1c

    .line 69
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 70
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_2b
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .registers 2
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 53
    return-void
.end method
