.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;,
        Lcom/android/systemui/doze/DozeService$1;,
        Lcom/android/systemui/doze/DozeService$2;,
        Lcom/android/systemui/doze/DozeService$3;,
        Lcom/android/systemui/doze/DozeService$ProximityCheck;,
        Lcom/android/systemui/doze/DozeService$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDreaming:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/doze/DozeHost;

.field private final mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mNotificationPulseTime:J

.field private mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/doze/DozeService;)[Lcom/android/systemui/doze/DozeService$TriggerSensor;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/doze/DozeService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/doze/DozeService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/doze/DozeService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .registers 2
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/doze/DozeService;I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->requestNotificationPulse()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/doze/DozeService;IZ)V
    .registers 3
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/doze/DozeService;I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->reregisterAllSensors()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/doze/DozeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-string/jumbo v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 69
    const-string/jumbo v0, "DozeService.%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    .line 70
    iput-object p0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/android/systemui/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$1;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/systemui/doze/DozeService$2;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeService$2;-><init>(Lcom/android/systemui/doze/DozeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 417
    new-instance v0, Lcom/android/systemui/doze/DozeService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$3;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 92
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_4f
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDebug(Z)V

    .line 91
    return-void
.end method

.method private continuePulsing(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    .line 269
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 270
    return-void

    .line 272
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeService$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeService$5;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 266
    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    return-object v5

    .line 449
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 451
    .local v0, "s":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 452
    return-object v0

    .line 455
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_2a
    return-object v5
.end method

.method private finishForCarMode()V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 309
    return-void
.end method

.method private finishToSavePower()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 304
    return-void
.end method

.method private listenForBroadcasts(Z)V
    .registers 12
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 333
    if-eqz p1, :cond_4b

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.systemui.doze.pulse"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    array-length v5, v4

    move v2, v3

    :goto_21
    if-ge v2, v5, :cond_47

    aget-object v1, v4, v2

    .line 340
    .local v1, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    iget-boolean v6, v1, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    if-eqz v6, :cond_31

    iget-object v6, v1, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 339
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 341
    :cond_34
    iget-object v6, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 342
    iget-object v7, v1, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 343
    iget-object v8, p0, Lcom/android/systemui/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v9, -0x1

    .line 341
    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_31

    .line 346
    .end local v1    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 332
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_4a
    return-void

    .line 348
    :cond_4b
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v2, :cond_61

    .line 349
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 352
    :cond_61
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_4a
.end method

.method private listenForNotifications(Z)V
    .registers 4
    .param p1, "listen"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_a

    .line 358
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 356
    :goto_9
    return-void

    .line 360
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_9
.end method

.method private listenForPulseSignals(Z)V
    .registers 6
    .param p1, "listen"    # Z

    .prologue
    .line 315
    sget-boolean v1, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "listenForPulseSignals: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_21
    if-ge v1, v3, :cond_2b

    aget-object v0, v2, v1

    .line 317
    .local v0, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 319
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForBroadcasts(Z)V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->listenForNotifications(Z)V

    .line 314
    return-void
.end method

.method private requestNotificationPulse()V
    .registers 3

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 367
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeService;->requestPulse(I)V

    .line 364
    return-void
.end method

.method private requestPulse(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService;->requestPulse(IZ)V

    .line 219
    return-void
.end method

.method private requestPulse(IZ)V
    .registers 11
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    if-eqz v0, :cond_d

    .line 223
    :cond_c
    :goto_c
    return-void

    .line 228
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-nez v0, :cond_21

    .line 232
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 233
    return-void

    .line 235
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 236
    .local v4, "start":J
    if-eqz p2, :cond_2a

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V

    .line 242
    :cond_2a
    new-instance v1, Lcom/android/systemui/doze/DozeService$4;

    move-object v2, p0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/doze/DozeService$4;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService;JIZ)V

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeService$4;->check()V

    goto :goto_c
.end method

.method private reregisterAllSensors()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_f

    aget-object v0, v3, v2

    .line 325
    .local v0, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 327
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    array-length v3, v2

    :goto_12
    if-ge v1, v3, :cond_1d

    aget-object v0, v2, v1

    .line 328
    .restart local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setListening(Z)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 323
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_1d
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .registers 8
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 372
    if-nez p0, :cond_6

    return-object v2

    .line 373
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 373
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 375
    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 376
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_3a

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_3a

    .line 378
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 381
    .end local v0    # "i":I
    :cond_3a
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private turnDisplayOff()V
    .registers 3

    .prologue
    .line 295
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 294
    return-void
.end method

.method private turnDisplayOn()V
    .registers 3

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setDozeScreenState(I)V

    .line 299
    return-void

    .line 301
    :cond_15
    const/4 v0, 0x2

    goto :goto_11
.end method


# virtual methods
.method synthetic -com_android_systemui_doze_DozeService_lambda$1()V
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_7

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startDozing()V

    .line 0
    :cond_7
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "  mDreaming: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string/jumbo v1, "  mPulsing: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    const-string/jumbo v1, "  mWakeLock: held="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 102
    const-string/jumbo v1, "  mHost: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 103
    const-string/jumbo v1, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_42
    if-ge v1, v3, :cond_52

    aget-object v0, v2, v1

    .line 105
    .local v0, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    const-string/jumbo v4, "  sensor: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 108
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_52
    const-string/jumbo v1, "  mDisplayStateSupported: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    const-string/jumbo v1, "  mPowerSaveActive: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 110
    const-string/jumbo v1, "  mCarMode: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string/jumbo v1, "  mNotificationPulseTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService;->mNotificationPulseTime:J

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 112
    sub-long/2addr v4, v6

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 112
    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 97
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_c
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 159
    return-void
.end method

.method public onCreate()V
    .registers 10

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_c
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/SystemUIApplication;

    if-eqz v0, :cond_27

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/SystemUIApplication;

    .line 124
    .local v7, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v7, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 126
    .end local v7    # "app":Lcom/android/systemui/SystemUIApplication;
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_34

    const-string/jumbo v0, "DozeService"

    const-string/jumbo v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeService;->setWindowless(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 132
    const/4 v0, 0x3

    new-array v8, v0, [Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 133
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 136
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    .line 137
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v5

    .line 135
    const/4 v3, 0x0

    .line 138
    const/4 v6, 0x2

    move-object v1, p0

    .line 133
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 139
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 141
    const-string/jumbo v3, "doze_pulse_on_pick_up"

    .line 142
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v4

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v5

    .line 143
    const/4 v6, 0x3

    move-object v1, p0

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPickupSensor:Lcom/android/systemui/doze/DozeService$TriggerSensor;

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 144
    new-instance v0, Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 146
    const-string/jumbo v3, "doze_pulse_on_double_tap"

    .line 147
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result v5

    .line 146
    const/4 v4, 0x1

    .line 148
    const/4 v6, 0x4

    move-object v1, p0

    .line 144
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeService$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V

    const/4 v1, 0x2

    aput-object v0, v8, v1

    .line 132
    iput-object v8, p0, Lcom/android/systemui/doze/DozeService;->mSensors:[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DozeService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mDisplayStateSupported:Z

    .line 154
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->turnDisplayOff()V

    .line 118
    return-void
.end method

.method public onDreamingStarted()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_c

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->finish()V

    .line 170
    return-void

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_63

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    .line 175
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDreamingStarted canDoze="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->canDoze()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPowerSaveActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, " mCarMode="

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_5b
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_65

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishToSavePower()V

    .line 179
    return-void

    .line 174
    :cond_63
    const/4 v0, 0x0

    goto :goto_1e

    .line 181
    :cond_65
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_6d

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->finishForCarMode()V

    .line 183
    return-void

    .line 186
    :cond_6d
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 187
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/DozeService$-void_onDreamingStarted__LambdaImpl0;-><init>(Lcom/android/systemui/doze/DozeService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public onDreamingStopped()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 205
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_22
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    if-nez v0, :cond_2a

    .line 209
    return-void

    .line 212
    :cond_2a
    iput-boolean v3, p0, Lcom/android/systemui/doze/DozeService;->mDreaming:Z

    .line 213
    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeService;->listenForPulseSignals(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    .line 204
    return-void
.end method
