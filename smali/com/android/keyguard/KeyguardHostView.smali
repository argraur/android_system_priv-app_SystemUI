.class public Lcom/android/keyguard/KeyguardHostView;
.super Landroid/widget/FrameLayout;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$1;,
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCancelAction:Ljava/lang/Runnable;

.field private mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardHostView;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 65
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 114
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 112
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_14

    .line 392
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "audio"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    :cond_14
    monitor-exit p0

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 389
    return-void

    .line 390
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelDismissAction()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 294
    return-void
.end method

.method public dismiss()Z
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(Z)Z

    move-result v0

    return v0
.end method

.method public dismiss(Z)Z
    .registers 3
    .param p1, "authenticated"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 118
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_17

    .line 198
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 404
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 400
    :cond_e
    return-void
.end method

.method public finish(Z)V
    .registers 5
    .param p1, "strongAuth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "deferKeyguardDone":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_10

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 228
    .local v0, "deferKeyguardDone":Z
    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 229
    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 231
    .end local v0    # "deferKeyguardDone":Z
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_1b

    .line 232
    if-eqz v0, :cond_1c

    .line 233
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(Z)V

    .line 222
    :cond_1b
    :goto_1b
    return-void

    .line 235
    :cond_1c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_1b
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 315
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_35

    .line 316
    sparse-switch v0, :sswitch_data_44

    .line 386
    :cond_f
    :goto_f
    return v2

    .line 322
    :sswitch_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_23

    .line 323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 324
    const-string/jumbo v2, "phone"

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 326
    :cond_23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_30

    .line 327
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_30

    .line 328
    return v3

    .line 339
    :cond_30
    :sswitch_30
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 340
    return v3

    .line 363
    :sswitch_34
    return v2

    .line 367
    :cond_35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 368
    sparse-switch v0, :sswitch_data_82

    goto :goto_f

    .line 381
    :sswitch_3f
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 382
    return v3

    .line 316
    nop

    :sswitch_data_44
    .sparse-switch
        0x18 -> :sswitch_34
        0x19 -> :sswitch_34
        0x4f -> :sswitch_30
        0x55 -> :sswitch_10
        0x56 -> :sswitch_30
        0x57 -> :sswitch_30
        0x58 -> :sswitch_30
        0x59 -> :sswitch_30
        0x5a -> :sswitch_30
        0x5b -> :sswitch_30
        0x7e -> :sswitch_10
        0x7f -> :sswitch_10
        0x82 -> :sswitch_30
        0xa4 -> :sswitch_34
        0xde -> :sswitch_30
    .end sparse-switch

    .line 368
    :sswitch_data_82
    .sparse-switch
        0x4f -> :sswitch_3f
        0x55 -> :sswitch_3f
        0x56 -> :sswitch_3f
        0x57 -> :sswitch_3f
        0x58 -> :sswitch_3f
        0x59 -> :sswitch_3f
        0x5a -> :sswitch_3f
        0x5b -> :sswitch_3f
        0x7e -> :sswitch_3f
        0x7f -> :sswitch_3f
        0x82 -> :sswitch_3f
        0xde -> :sswitch_3f
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 146
    sget v0, Lcom/android/keyguard/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 145
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 147
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 144
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 266
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearFocus()V

    .line 261
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z

    .line 272
    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .registers 4
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "needsInput"    # Z

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 246
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    .line 241
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 430
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 135
    :cond_c
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 136
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 130
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .registers 4
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 424
    return-void
.end method

.method public shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 418
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/keyguard/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 419
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 420
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 421
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_1f

    if-nez v2, :cond_1f

    .end local v1    # "fileOverride":Z
    :goto_1e
    return v1

    .restart local v1    # "fileOverride":Z
    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method public showMessage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showMessage(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public showPrimarySecurityScreen()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 157
    return-void
.end method

.method public showPromptReason(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPromptReason(I)V

    .line 170
    return-void
.end method

.method public startAppearAnimation()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    .line 281
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 287
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 285
    :cond_d
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 252
    :cond_9
    return-void
.end method
