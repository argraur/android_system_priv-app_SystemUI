.class Lcom/android/systemui/statusbar/BaseStatusBar$4;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$4;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v1, 0x0

    .line 406
    :goto_1
    if-eqz p1, :cond_17

    .line 407
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_12

    .line 408
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    .restart local p1    # "parent":Landroid/view/ViewParent;
    :cond_12
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    .line 412
    :cond_17
    return-object v1
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 422
    const v20, 0x102005c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    .line 423
    .local v15, "tag":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 424
    .local v9, "inputs":[Landroid/app/RemoteInput;
    instance-of v0, v15, [Landroid/app/RemoteInput;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    move-object v9, v15

    .line 425
    check-cast v9, [Landroid/app/RemoteInput;

    .line 428
    .end local v9    # "inputs":[Landroid/app/RemoteInput;
    :cond_15
    if-nez v9, :cond_1a

    .line 429
    const/16 v20, 0x0

    return v20

    .line 432
    :cond_1a
    const/4 v8, 0x0

    .line 434
    .local v8, "input":Landroid/app/RemoteInput;
    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    .end local v8    # "input":Landroid/app/RemoteInput;
    :goto_20
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_32

    aget-object v6, v9, v20

    .line 435
    .local v6, "i":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 436
    move-object v8, v6

    .line 434
    :cond_2f
    add-int/lit8 v20, v20, 0x1

    goto :goto_20

    .line 440
    .end local v6    # "i":Landroid/app/RemoteInput;
    :cond_32
    if-nez v8, :cond_37

    .line 441
    const/16 v20, 0x0

    return v20

    .line 444
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 445
    .local v10, "p":Landroid/view/ViewParent;
    const/4 v13, 0x0

    .line 446
    .local v13, "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :goto_3c
    if-eqz v10, :cond_57

    .line 447
    instance-of v0, v10, Landroid/view/View;

    move/from16 v20, v0

    if-eqz v20, :cond_6a

    move-object v11, v10

    .line 448
    check-cast v11, Landroid/view/View;

    .line 449
    .local v11, "pv":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->isRootNamespace()Z

    move-result v20

    if-eqz v20, :cond_6a

    .line 450
    sget-object v20, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    .end local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    check-cast v13, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 456
    .end local v11    # "pv":Landroid/view/View;
    :cond_57
    const/4 v14, 0x0

    .line 457
    .local v14, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_58
    if-eqz v10, :cond_63

    .line 458
    instance-of v0, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-eqz v20, :cond_6f

    move-object v14, v10

    .line 459
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 465
    .end local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_63
    if-eqz v13, :cond_67

    if-nez v14, :cond_74

    .line 466
    :cond_67
    const/16 v20, 0x0

    return v20

    .line 454
    .restart local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    :cond_6a
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_3c

    .line 462
    .end local v13    # "riv":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .restart local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6f
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_58

    .line 469
    .end local v14    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_74
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    move/from16 v20, v0

    if-nez v20, :cond_eb

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v20

    if-eqz v20, :cond_a5

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 474
    const/16 v20, 0x1

    return v20

    .line 476
    :cond_a5
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 477
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get3(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v20

    if-eqz v20, :cond_eb

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v20

    .line 477
    if-eqz v20, :cond_eb

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    .line 480
    const/16 v20, 0x1

    return v20

    .line 484
    .end local v17    # "userId":I
    :cond_eb
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 485
    .local v19, "width":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_120

    move-object/from16 v16, p1

    .line 487
    check-cast v16, Landroid/widget/TextView;

    .line 488
    .local v16, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    if-eqz v20, :cond_120

    .line 489
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    .line 490
    .local v7, "innerWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    add-int v7, v7, v20

    .line 491
    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 494
    .end local v7    # "innerWidth":I
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_120
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    div-int/lit8 v21, v19, 0x2

    add-int v3, v20, v21

    .line 495
    .local v3, "cx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v4, v20, v21

    .line 496
    .local v4, "cy":I
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v18

    .line 497
    .local v18, "w":I
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v5

    .line 499
    .local v5, "h":I
    add-int v20, v3, v4

    sub-int v21, v5, v4

    add-int v21, v21, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 500
    sub-int v21, v18, v3

    add-int v21, v21, v4

    sub-int v22, v18, v3

    sub-int v23, v5, v4

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 498
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 502
    .local v12, "r":I
    invoke-virtual {v13, v3, v4, v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 503
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 504
    invoke-virtual {v13, v9, v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 505
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    .line 507
    const/16 v20, 0x1

    return v20
.end method

.method private logActionClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 386
    .local v4, "parent":Landroid/view/ViewParent;
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_14

    .line 388
    const-string/jumbo v5, "StatusBar"

    const-string/jumbo v6, "Couldn\'t determine notification for click."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_14
    const/4 v2, -0x1

    .line 393
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x10203a5

    if-ne v5, v6, :cond_2b

    .line 394
    if-eqz v4, :cond_2b

    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 393
    if-eqz v5, :cond_2b

    move-object v0, v4

    .line 395
    check-cast v0, Landroid/view/ViewGroup;

    .line 396
    .local v0, "actionGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 399
    .end local v0    # "actionGroup":Landroid/view/ViewGroup;
    :cond_2b
    :try_start_2b
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    .line 384
    :goto_32
    return-void

    .line 400
    :catch_33
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_32
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 418
    const/4 v0, 0x1

    .line 417
    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 331
    return v10

    .line 337
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->logActionClick(Landroid/view/View;)V

    .line 343
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_44

    .line 346
    :goto_12
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v8

    .line 347
    .local v8, "isActivity":Z
    if-eqz v8, :cond_3f

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 350
    .local v2, "keyguardShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 349
    invoke-static {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 351
    .local v3, "afterKeyguardGone":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$4$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$4;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v9, v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 378
    return v10

    .line 380
    .end local v2    # "keyguardShowing":Z
    .end local v3    # "afterKeyguardGone":Z
    :cond_3f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$4;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 344
    .end local v8    # "isActivity":Z
    :catch_44
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_12
.end method
