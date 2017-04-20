.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1456
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_10e

    .line 1455
    :goto_7
    :pswitch_7
    return-void

    .line 1458
    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap15(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_7

    .line 1461
    :pswitch_12
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap3(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1464
    :pswitch_18
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap13(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1467
    :pswitch_1e
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1468
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap17(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1469
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    .line 1472
    :pswitch_2d
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap10(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1475
    :pswitch_33
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap6(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1478
    :pswitch_39
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1479
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap9(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1480
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    .line 1483
    :pswitch_4c
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap8(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1485
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    .line 1488
    :pswitch_5b
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap7(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1491
    :pswitch_61
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap11(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1493
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    .line 1496
    :pswitch_70
    const-string/jumbo v3, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1497
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_83

    :goto_7c
    invoke-static {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap5(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 1498
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :cond_83
    move v1, v2

    .line 1497
    goto :goto_7c

    .line 1501
    :pswitch_85
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap4(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1503
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    .line 1506
    :pswitch_95
    const-string/jumbo v3, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1507
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_ae

    move v3, v1

    :goto_a2
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_b0

    :goto_a6
    invoke-static {v4, v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap14(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1508
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    :cond_ae
    move v3, v2

    .line 1507
    goto :goto_a2

    :cond_b0
    move v1, v2

    goto :goto_a6

    .line 1511
    :pswitch_b2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1512
    :try_start_b5
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap2(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_c1

    monitor-exit v2

    goto/16 :goto_7

    .line 1511
    :catchall_c1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1516
    :pswitch_c4
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_cf

    :goto_ca
    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss(Z)V

    goto/16 :goto_7

    :cond_cf
    move v1, v2

    goto :goto_ca

    .line 1519
    :pswitch_d1
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1521
    .local v0, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap16(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1522
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->onSucccessfulUnlock()V

    .line 1523
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_7

    .line 1526
    .end local v0    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :pswitch_f4
    const-string/jumbo v1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1527
    const-string/jumbo v1, "KeyguardViewMediator"

    const-string/jumbo v2, "Timeout while waiting for activity drawn!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1531
    :pswitch_106
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-wrap12(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_7

    .line 1456
    nop

    :pswitch_data_10e
    .packed-switch 0x2
        :pswitch_8
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_33
        :pswitch_39
        :pswitch_7
        :pswitch_70
        :pswitch_85
        :pswitch_7
        :pswitch_95
        :pswitch_b2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_c4
        :pswitch_d1
        :pswitch_106
        :pswitch_f4
        :pswitch_61
        :pswitch_4c
        :pswitch_5b
        :pswitch_2d
    .end packed-switch
.end method
