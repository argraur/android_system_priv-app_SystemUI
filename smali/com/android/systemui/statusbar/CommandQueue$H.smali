.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$H;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    iget v2, p1, Landroid/os/Message;->what:I

    const/high16 v3, -0x10000

    and-int v10, v2, v3

    .line 405
    .local v10, "what":I
    sparse-switch v10, :sswitch_data_220

    .line 403
    :goto_b
    return-void

    .line 407
    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2a6

    goto :goto_b

    .line 409
    :pswitch_12
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/util/Pair;

    .line 410
    .local v9, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_b

    .line 414
    .end local v9    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :pswitch_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    goto :goto_b

    .line 420
    :sswitch_36
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    goto :goto_b

    .line 423
    :sswitch_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    goto :goto_b

    .line 426
    :sswitch_4e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    goto :goto_b

    .line 429
    :sswitch_58
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_b

    .line 432
    :sswitch_66
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 433
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 434
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 433
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 435
    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_b

    .line 438
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_87
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_96

    :goto_91
    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    goto/16 :goto_b

    :cond_96
    move v0, v1

    goto :goto_91

    .line 441
    :sswitch_98
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "showImeSwitcherKey"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 441
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_b

    .line 445
    :sswitch_b6
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_ca

    move v2, v0

    :goto_c1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_cc

    :goto_c5
    invoke-interface {v3, v2, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(ZZ)V

    goto/16 :goto_b

    :cond_ca
    move v2, v1

    goto :goto_c1

    :cond_cc
    move v0, v1

    goto :goto_c5

    .line 448
    :sswitch_ce
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_e2

    move v2, v0

    :goto_d9
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_e4

    :goto_dd
    invoke-interface {v3, v2, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    goto/16 :goto_b

    :cond_e2
    move v2, v1

    goto :goto_d9

    :cond_e4
    move v0, v1

    goto :goto_dd

    .line 451
    :sswitch_e6
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    goto/16 :goto_b

    .line 454
    :sswitch_f1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    goto/16 :goto_b

    .line 457
    :sswitch_fc
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    goto/16 :goto_b

    .line 460
    :sswitch_107
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_b

    .line 463
    :sswitch_112
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_b

    .line 466
    :sswitch_11f
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    goto/16 :goto_b

    .line 469
    :sswitch_12e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->buzzBeepBlinked()V

    goto/16 :goto_b

    .line 472
    :sswitch_139
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notificationLightOff()V

    goto/16 :goto_b

    .line 475
    :sswitch_144
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notificationLightPulse(III)V

    goto/16 :goto_b

    .line 478
    :sswitch_15b
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    goto/16 :goto_b

    .line 481
    :sswitch_168
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending()V

    goto/16 :goto_b

    .line 484
    :sswitch_173
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled()V

    goto/16 :goto_b

    .line 487
    :sswitch_17e
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    .line 488
    .local v8, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(JJ)V

    goto/16 :goto_b

    .line 491
    .end local v8    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :sswitch_19d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished()V

    goto/16 :goto_b

    .line 494
    :sswitch_1a8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    goto/16 :goto_b

    .line 497
    :sswitch_1b3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_b

    .line 500
    :sswitch_1c2
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_b

    .line 503
    :sswitch_1cf
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTvPictureInPictureMenu()V

    goto/16 :goto_b

    .line 506
    :sswitch_1da
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_b

    .line 509
    :sswitch_1e9
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_b

    .line 512
    :sswitch_1f8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    goto/16 :goto_b

    .line 515
    :sswitch_207
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    goto/16 :goto_b

    .line 518
    :sswitch_212
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemNavigationKey(I)V

    goto/16 :goto_b

    .line 405
    nop

    :sswitch_data_220
    .sparse-switch
        0x10000 -> :sswitch_c
        0x20000 -> :sswitch_36
        0x30000 -> :sswitch_44
        0x40000 -> :sswitch_4e
        0x50000 -> :sswitch_58
        0x60000 -> :sswitch_66
        0x70000 -> :sswitch_87
        0x80000 -> :sswitch_98
        0x90000 -> :sswitch_e6
        0xa0000 -> :sswitch_f1
        0xb0000 -> :sswitch_fc
        0xc0000 -> :sswitch_11f
        0xd0000 -> :sswitch_b6
        0xe0000 -> :sswitch_ce
        0xf0000 -> :sswitch_12e
        0x100000 -> :sswitch_139
        0x110000 -> :sswitch_144
        0x120000 -> :sswitch_15b
        0x130000 -> :sswitch_168
        0x140000 -> :sswitch_173
        0x150000 -> :sswitch_17e
        0x160000 -> :sswitch_1a8
        0x170000 -> :sswitch_1b3
        0x180000 -> :sswitch_1c2
        0x190000 -> :sswitch_112
        0x1a0000 -> :sswitch_1cf
        0x1b0000 -> :sswitch_1da
        0x1c0000 -> :sswitch_1e9
        0x1d0000 -> :sswitch_1f8
        0x1e0000 -> :sswitch_207
        0x1f0000 -> :sswitch_19d
        0x200000 -> :sswitch_107
        0x210000 -> :sswitch_212
    .end sparse-switch

    .line 407
    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_28
    .end packed-switch
.end method
