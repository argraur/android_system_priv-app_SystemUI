.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$-void__init__android_content_Context_context_android_util_AttributeSet_attrs_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 60
    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .registers 10
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 252
    if-ne p1, v1, :cond_b

    if-ne p2, v0, :cond_b

    .line 253
    const v0, 0x7f020188

    return v0

    .line 254
    :cond_b
    if-ne p1, v2, :cond_13

    if-ne p2, v0, :cond_13

    .line 255
    const v0, 0x7f020326

    return v0

    .line 256
    :cond_13
    if-ne p1, v0, :cond_1b

    if-ne p2, v2, :cond_1b

    .line 257
    const v0, 0x7f020074

    return v0

    .line 258
    :cond_1b
    if-ne p1, v0, :cond_23

    if-ne p2, v1, :cond_23

    .line 259
    const v0, 0x7f020186

    return v0

    .line 260
    :cond_23
    if-ne p1, v1, :cond_2f

    if-ne p2, v2, :cond_2f

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 263
    :cond_2f
    if-ne p2, v1, :cond_3b

    if-nez p5, :cond_37

    if-eqz p6, :cond_37

    if-nez p4, :cond_43

    .line 264
    :cond_37
    if-eqz p6, :cond_3b

    if-eqz p3, :cond_41

    .line 267
    :cond_3b
    const/4 v0, -0x1

    return v0

    .line 262
    :cond_3d
    const v0, 0x7f020182

    return v0

    .line 263
    :cond_41
    if-eqz p4, :cond_3b

    .line 265
    :cond_43
    const v0, 0x7f020184

    return v0
.end method

.method private getIconForState(IZZ)I
    .registers 5
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_26

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 231
    :pswitch_9
    const v0, 0x7f0200b5

    return v0

    .line 233
    :pswitch_d
    const v0, 0x7f0200b6

    return v0

    .line 235
    :pswitch_11
    const v0, 0x10802e6

    return v0

    .line 239
    :pswitch_15
    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1d

    .line 240
    const v0, 0x7f020099

    .line 239
    :goto_1c
    return v0

    .line 241
    :cond_1d
    const v0, 0x7f020184

    goto :goto_1c

    .line 243
    :pswitch_21
    const v0, 0x7f02009a

    return v0

    .line 229
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_21
    .end packed-switch
.end method

.method private getState()I
    .registers 5

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 273
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 274
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    .line 275
    .local v1, "unlockingAllowed":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_14

    .line 276
    const/4 v3, 0x4

    return v3

    .line 277
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 278
    const/4 v3, 0x1

    return v3

    .line 279
    :cond_1e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 280
    const/4 v3, 0x2

    return v3

    .line 281
    :cond_28
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_2e

    .line 282
    const/4 v3, 0x3

    return v3

    .line 284
    :cond_2e
    const/4 v3, 0x0

    return v3
.end method

.method private updateClickability()V
    .registers 5

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_5

    .line 198
    return-void

    .line 200
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    .line 201
    .local v1, "clickToUnlock":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v0, 0x0

    .line 203
    .local v0, "clickToForceLock":Z
    :goto_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 204
    if-eqz v0, :cond_3d

    const/4 v2, 0x0

    .line 205
    .local v2, "longClickToForceLock":Z
    :goto_27
    if-nez v0, :cond_41

    .end local v1    # "clickToUnlock":Z
    :goto_29
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 196
    return-void

    .line 202
    .end local v0    # "clickToForceLock":Z
    .end local v2    # "longClickToForceLock":Z
    .restart local v1    # "clickToUnlock":Z
    :cond_39
    const/4 v0, 0x1

    .restart local v0    # "clickToForceLock":Z
    goto :goto_1c

    .line 201
    .end local v0    # "clickToForceLock":Z
    :cond_3b
    const/4 v0, 0x0

    .restart local v0    # "clickToForceLock":Z
    goto :goto_1c

    .line 204
    :cond_3d
    const/4 v2, 0x1

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_27

    .line 203
    .end local v2    # "longClickToForceLock":Z
    :cond_3f
    const/4 v2, 0x0

    .restart local v2    # "longClickToForceLock":Z
    goto :goto_27

    .line 205
    :cond_41
    const/4 v1, 0x1

    goto :goto_29
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_LockIcon_lambda$1()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 102
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_23

    .line 103
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 105
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 99
    :cond_23
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 78
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 213
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v1, :cond_25

    .line 215
    const-class v1, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f01f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    const/16 v2, 0x10

    .line 217
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 220
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 211
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_25
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 68
    :goto_e
    return-void

    .line 73
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_e
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .registers 2
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 224
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .registers 2
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 88
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 93
    return-void
.end method

.method public setTransientFpError(Z)V
    .registers 2
    .param p1, "transientFpError"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 83
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 111
    return-void
.end method

.method public update(Z)V
    .registers 24
    .param p1, "force"    # Z

    .prologue
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v21

    .line 118
    .local v21, "visible":Z
    :goto_12
    if-eqz v21, :cond_13f

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 123
    :goto_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v4

    .line 124
    .local v4, "state":I
    const/4 v2, 0x3

    if-eq v4, v2, :cond_25

    const/4 v2, 0x4

    if-ne v4, v2, :cond_148

    :cond_25
    const/4 v10, 0x1

    .line 125
    .local v10, "anyFingerprintIcon":Z
    :goto_26
    move/from16 v20, v10

    .line 126
    .local v20, "useAdditionalPadding":Z
    move/from16 v18, v10

    .line 127
    .local v18, "trustHidden":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v4, v2, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_14b

    .line 129
    :cond_3a
    :goto_3a
    const/16 v17, 0x1

    .line 130
    .local v17, "isAnim":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 131
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v2, p0

    .line 130
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v15

    .line 132
    .local v15, "iconRes":I
    const v2, 0x7f020182

    if-ne v15, v2, :cond_159

    .line 133
    const/4 v10, 0x1

    .line 134
    .local v10, "anyFingerprintIcon":Z
    const/16 v20, 0x1

    .line 135
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x1

    .line 145
    .end local v10    # "anyFingerprintIcon":Z
    .end local v18    # "trustHidden":Z
    .end local v20    # "useAdditionalPadding":Z
    :cond_60
    :goto_60
    const/4 v2, -0x1

    if-ne v15, v2, :cond_73

    .line 146
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)I

    move-result v15

    .line 147
    const/16 v17, 0x0

    .line 149
    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 150
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v2, v12, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_171

    move-object v9, v12

    .line 151
    check-cast v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 153
    :goto_82
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    const v3, 0x7f1001eb

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 155
    .local v14, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 156
    const v3, 0x7f1001ec

    .line 155
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 157
    .local v16, "iconWidth":I
    if-nez v10, :cond_b0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v14, :cond_a8

    .line 158
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_b0

    .line 159
    :cond_a8
    new-instance v13, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    move/from16 v0, v16

    invoke-direct {v13, v12, v0, v14}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    move-object v12, v13

    .line 161
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b0
    if-eqz v20, :cond_174

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 163
    const v3, 0x7f10020b

    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 161
    :goto_bd
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 166
    if-eqz v10, :cond_177

    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    :goto_c9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v10, :cond_17b

    .line 169
    const v2, 0x7f0f01f0

    .line 168
    :goto_dc
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 173
    if-eqz v9, :cond_f3

    if-eqz v17, :cond_f3

    .line 174
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 175
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 178
    :cond_f3
    const v2, 0x7f020182

    if-ne v15, v2, :cond_180

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :goto_10c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 186
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 191
    .end local v11    # "contentDescription":Ljava/lang/String;
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconHeight":I
    .end local v15    # "iconRes":I
    .end local v16    # "iconWidth":I
    .end local v17    # "isAnim":Z
    :cond_120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v2

    if-eqz v2, :cond_12c

    if-eqz v18, :cond_18a

    :cond_12c
    const/16 v19, 0x0

    .line 192
    .local v19, "trustManaged":Z
    :goto_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 115
    return-void

    .line 116
    .end local v4    # "state":I
    .end local v19    # "trustManaged":Z
    .end local v21    # "visible":Z
    :cond_13b
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 121
    .restart local v21    # "visible":Z
    :cond_13f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_1b

    .line 124
    .restart local v4    # "state":I
    :cond_148
    const/4 v10, 0x0

    goto/16 :goto_26

    .line 128
    .local v10, "anyFingerprintIcon":Z
    .restart local v18    # "trustHidden":Z
    .local v20, "useAdditionalPadding":Z
    :cond_14b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_3a

    .line 127
    if-eqz p1, :cond_120

    goto/16 :goto_3a

    .line 136
    .restart local v15    # "iconRes":I
    .restart local v17    # "isAnim":Z
    :cond_159
    const v2, 0x7f020326

    if-ne v15, v2, :cond_165

    .line 137
    const/4 v10, 0x1

    .line 138
    .local v10, "anyFingerprintIcon":Z
    const/16 v20, 0x0

    .line 139
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x1

    .local v18, "trustHidden":Z
    goto/16 :goto_60

    .line 140
    .local v10, "anyFingerprintIcon":Z
    .local v18, "trustHidden":Z
    .local v20, "useAdditionalPadding":Z
    :cond_165
    const v2, 0x7f020074

    if-ne v15, v2, :cond_60

    .line 141
    const/4 v10, 0x1

    .line 142
    .local v10, "anyFingerprintIcon":Z
    const/16 v20, 0x0

    .line 143
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x0

    .local v18, "trustHidden":Z
    goto/16 :goto_60

    .line 152
    .end local v10    # "anyFingerprintIcon":Z
    .end local v18    # "trustHidden":Z
    .end local v20    # "useAdditionalPadding":Z
    .restart local v12    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_171
    const/4 v9, 0x0

    .local v9, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    goto/16 :goto_82

    .line 164
    .end local v9    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v14    # "iconHeight":I
    .restart local v16    # "iconWidth":I
    :cond_174
    const/4 v2, 0x0

    goto/16 :goto_bd

    .line 166
    :cond_177
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_c9

    .line 170
    :cond_17b
    const v2, 0x7f0f01ef

    goto/16 :goto_dc

    .line 182
    .restart local v11    # "contentDescription":Ljava/lang/String;
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_10c

    .line 191
    .end local v11    # "contentDescription":Ljava/lang/String;
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconHeight":I
    .end local v15    # "iconRes":I
    .end local v16    # "iconWidth":I
    .end local v17    # "isAnim":Z
    :cond_18a
    const/16 v19, 0x1

    .restart local v19    # "trustManaged":Z
    goto :goto_12e
.end method
