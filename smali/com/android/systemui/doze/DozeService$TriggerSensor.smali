.class Lcom/android/systemui/doze/DozeService$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field final mDebugVibrate:Z

.field private mDisabled:Z

.field final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mSetting:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z
    .param p5, "debugVibrate"    # Z
    .param p6, "pulseReason"    # I

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 472
    iput-object p3, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 473
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 474
    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 475
    iput p6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mPulseReason:I

    .line 470
    return-void
.end method

.method private enabledBySetting()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 503
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 504
    return v0

    .line 506
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 507
    const/4 v4, -0x2

    .line 506
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v10, 0x19

    .line 522
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 524
    :try_start_b
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTrigger: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/systemui/doze/DozeService;->-wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_32
    const/4 v0, 0x0

    .line 526
    .local v0, "sensorPerformsProxCheck":Z
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v10, :cond_56

    .line 527
    iget-object v6, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v1, v6

    .line 528
    .local v1, "subType":I
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x19b

    invoke-static {v6, v7, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 529
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get3(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    move-result v0

    .line 532
    .end local v0    # "sensorPerformsProxCheck":Z
    .end local v1    # "subType":I
    :cond_56
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    if-eqz v6, :cond_84

    .line 533
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    .line 534
    const-string/jumbo v7, "vibrator"

    .line 533
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 535
    .local v4, "v":Landroid/os/Vibrator;
    if-eqz v4, :cond_84

    .line 536
    const-wide/16 v6, 0x3e8

    new-instance v8, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 537
    const/4 v9, 0x4

    .line 536
    invoke-virtual {v8, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    .line 538
    const/16 v9, 0xd

    .line 536
    invoke-virtual {v8, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 542
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_84
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 543
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v7, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mPulseReason:I

    invoke-static {v6, v7, v0}, Lcom/android/systemui/doze/DozeService;->-wrap5(Lcom/android/systemui/doze/DozeService;IZ)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 549
    iget-object v8, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v8}, Lcom/android/systemui/doze/DozeService;->-get6(Lcom/android/systemui/doze/DozeService;)J

    move-result-wide v8

    .line 548
    sub-long v2, v6, v8

    .line 551
    .local v2, "timeSinceNotification":J
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get3(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_c8

    const/4 v5, 0x1

    .line 552
    .local v5, "withinVibrationThreshold":Z
    :goto_ad
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v10, :cond_be

    .line 553
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/systemui/doze/DozeLog;->tracePickupPulse(Landroid/content/Context;Z)V
    :try_end_be
    .catchall {:try_start_b .. :try_end_be} :catchall_ca

    .line 556
    :cond_be
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 521
    return-void

    .line 551
    .end local v5    # "withinVibrationThreshold":Z
    :cond_c8
    const/4 v5, 0x0

    .restart local v5    # "withinVibrationThreshold":Z
    goto :goto_ad

    .line 555
    .end local v2    # "timeSinceNotification":J
    .end local v5    # "withinVibrationThreshold":Z
    :catchall_ca
    move-exception v6

    .line 556
    iget-object v7, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v7}, Lcom/android/systemui/doze/DozeService;->-get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 555
    throw v6
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 486
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 484
    return-void
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listen"    # Z

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 480
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 478
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    const-string/jumbo v1, ", mRequested="

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string/jumbo v1, ", mDisabled="

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string/jumbo v1, ", mConfigured="

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    const-string/jumbo v1, ", mDebugVibrate="

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    const-string/jumbo v1, ", mSensor="

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    const-string/jumbo v1, "}"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateListener()V
    .registers 5

    .prologue
    .line 491
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_9

    :cond_8
    return-void

    .line 492
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-eqz v1, :cond_48

    .line 495
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_47

    .line 496
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get10(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 497
    .local v0, "rt":Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 490
    .end local v0    # "rt":Z
    :cond_47
    :goto_47
    return-void

    .line 492
    :cond_48
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->enabledBySetting()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-nez v1, :cond_11

    .line 493
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get10(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 494
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method
