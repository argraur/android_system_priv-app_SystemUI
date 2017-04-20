.class public Lcom/android/systemui/analytics/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/analytics/DataCollector$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/analytics/DataCollector;


# instance fields
.field private mAllowReportRejectedTouch:Z

.field private mCollectBadTouches:Z

.field private final mContext:Landroid/content/Context;

.field private mCornerSwiping:Z

.field private mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

.field private mEnableCollector:Z

.field private final mHandler:Landroid/os/Handler;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTimeoutActive:Z

.field private mTrackingStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/analytics/DataCollector;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/analytics/DataCollector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 66
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mTimeoutActive:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 71
    iput-boolean v3, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 75
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$1;

    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/analytics/DataCollector$1;-><init>(Lcom/android/systemui/analytics/DataCollector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "data_collector_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 85
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "data_collector_collect_bad_touches"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 90
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "data_collector_allow_rejected_touch_reports"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 95
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    .line 82
    return-void
.end method

.method private addEvent(I)V
    .registers 6
    .param p1, "eventType"    # I

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_13

    .line 458
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/analytics/SensorLoggerSession;->addPhoneEvent(IJ)V

    .line 456
    :cond_13
    return-void
.end method

.method private enforceTimeout()V
    .registers 5

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTimeoutActive:Z

    if-eqz v0, :cond_19

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->getStartTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 217
    const-wide/16 v2, 0x2af8

    .line 216
    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 218
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    .line 214
    :cond_19
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Lcom/android/systemui/analytics/DataCollector;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    .line 107
    :cond_b
    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    return-object v0
.end method

.method private onSessionEnd(I)V
    .registers 6
    .param p1, "result"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 144
    .local v0, "session":Lcom/android/systemui/analytics/SensorLoggerSession;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v1, :cond_13

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 148
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V

    .line 142
    :cond_13
    return-void
.end method

.method private onSessionStart()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 139
    new-instance v0, Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/analytics/SensorLoggerSession;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 136
    return-void
.end method

.method private queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .registers 3
    .param p1, "currentSession"    # Lcom/android/systemui/analytics/SensorLoggerSession;

    .prologue
    .line 179
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/analytics/DataCollector$2;-><init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private sessionEntrypoint()Z
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-nez v0, :cond_f

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->onSessionStart()V

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(I)V
    .registers 3
    .param p1, "result"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_7

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    .line 130
    :cond_7
    return-void
.end method

.method private updateConfiguration()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_45

    .line 112
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string/jumbo v3, "data_collector_enable"

    .line 111
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_45

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_47

    .line 115
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    const-string/jumbo v3, "data_collector_collect_bad_touches"

    .line 114
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_47

    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 117
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_42

    .line 118
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    const-string/jumbo v3, "data_collector_allow_rejected_touch_reports"

    .line 117
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_42

    move v2, v1

    :cond_42
    iput-boolean v2, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 110
    return-void

    :cond_45
    move v0, v2

    .line 111
    goto :goto_16

    :cond_47
    move v0, v2

    .line 114
    goto :goto_2c
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isEnabledFull()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    return v0
.end method

.method public isReportingEnabled()Z
    .registers 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 227
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .registers 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz v0, :cond_c

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 419
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 413
    :cond_c
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .registers 3
    .param p1, "rightCorner"    # Z

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 406
    if-eqz p1, :cond_b

    .line 407
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 401
    :goto_a
    return-void

    .line 409
    :cond_b
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_a
.end method

.method public onBouncerHidden()V
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 287
    return-void
.end method

.method public onBouncerShown()V
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 280
    return-void
.end method

.method public onCameraHintStarted()V
    .registers 2

    .prologue
    .line 434
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 430
    return-void
.end method

.method public onCameraOn()V
    .registers 2

    .prologue
    .line 391
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 387
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .registers 2

    .prologue
    .line 441
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 437
    return-void
.end method

.method public onLeftAffordanceOn()V
    .registers 2

    .prologue
    .line 398
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 394
    return-void
.end method

.method public onNotificationActive()V
    .registers 2

    .prologue
    .line 334
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 330
    return-void
.end method

.method public onNotificationDismissed()V
    .registers 2

    .prologue
    .line 370
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 366
    return-void
.end method

.method public onNotificationDoubleTap()V
    .registers 2

    .prologue
    .line 342
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 338
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .registers 2

    .prologue
    .line 377
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 373
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .registers 2

    .prologue
    .line 356
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 352
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .registers 2

    .prologue
    .line 384
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 380
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .registers 2

    .prologue
    .line 363
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 359
    return-void
.end method

.method public onQsDown()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 294
    return-void
.end method

.method public onScreenOff()V
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    .line 264
    return-void
.end method

.method public onScreenOnFromTouch()V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 255
    :cond_a
    return-void
.end method

.method public onScreenTurningOn()V
    .registers 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 246
    :cond_a
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    monitor-enter p0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_17

    .line 209
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/analytics/SensorLoggerSession;->addSensorEvent(Landroid/hardware/SensorEvent;J)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->enforceTimeout()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 207
    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSucccessfulUnlock()V
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    .line 272
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_11

    .line 450
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addMotionEvent(Landroid/view/MotionEvent;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->setTouchArea(II)V

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->enforceTimeout()V

    .line 444
    :cond_11
    return-void
.end method

.method public onTrackingStarted()V
    .registers 2

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 317
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 312
    return-void
.end method

.method public onTrackingStopped()V
    .registers 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    if-eqz v0, :cond_c

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 326
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 320
    :cond_c
    return-void
.end method

.method public onUnlockHintStarted()V
    .registers 2

    .prologue
    .line 427
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 423
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 153
    iget-object v6, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-nez v6, :cond_13

    .line 154
    iget-object v6, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "Generating rejected touch report failed: session timed out."

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 156
    return-object v9

    .line 158
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 160
    .local v1, "currentSession":Lcom/android/systemui/analytics/SensorLoggerSession;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/android/systemui/analytics/SensorLoggerSession;->setType(I)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 162
    invoke-virtual {v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    move-result-object v4

    .line 164
    .local v4, "proto":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 165
    .local v0, "b":[B
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "rejected_touch_reports"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 167
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rejected_touch_report_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v5, "touch":Ljava/io/File;
    :try_start_56
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_63

    .line 175
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 171
    :catch_63
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setNotificationExpanded()V
    .registers 2

    .prologue
    .line 349
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 345
    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 305
    if-eqz p1, :cond_7

    .line 306
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 301
    :goto_6
    return-void

    .line 308
    :cond_7
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_6
.end method
