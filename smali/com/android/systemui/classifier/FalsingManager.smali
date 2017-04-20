.class public Lcom/android/systemui/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;,
        Lcom/android/systemui/classifier/FalsingManager$1;
    }
.end annotation


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingManager;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mPendingWtf:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/classifier/FalsingManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 47
    new-array v0, v3, [I

    .line 48
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 47
    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    .line 53
    const/4 v0, 0x4

    .line 55
    const/4 v1, 0x5

    .line 56
    const/16 v2, 0xb

    .line 51
    filled-new-array {v3, v0, v4, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 70
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 72
    iput v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 76
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager$1;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/classifier/FalsingManager$1;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 89
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "falsing_manager_enforce_bouncer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 94
    const/4 v3, -0x1

    .line 91
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    .line 83
    return-void
.end method

.method private clearPendingWtf()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iput-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 216
    :cond_e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 103
    :cond_b
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private onSessionStart()V
    .registers 4

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_25

    .line 139
    const-string/jumbo v0, "onSessionStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "classifierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 142
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 146
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 148
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 149
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 137
    :cond_45
    return-void
.end method

.method private registerSensors([I)V
    .registers 8
    .param p1, "sensors"    # [I

    .prologue
    .line 154
    const/4 v2, 0x0

    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_17

    aget v1, p1, v2

    .line 155
    .local v1, "sensorType":I
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 156
    .local v0, "s":Landroid/hardware/Sensor;
    if-eqz v0, :cond_14

    .line 157
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 154
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v0    # "s":Landroid/hardware/Sensor;
    .end local v1    # "sensorType":I
    :cond_17
    return-void
.end method

.method private sessionEntrypoint()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->onSessionStart()V

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_c

    if-nez p1, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 130
    :cond_c
    :goto_c
    return-void

    .line 132
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_c
.end method

.method private shouldSessionBeActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_6

    .line 119
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    if-ne v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method private updateConfiguration()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "falsing_manager_enforce_bouncer"

    .line 107
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 106
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_classifier_FalsingManager_lambda$1(IILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "enabled"    # I
    .param p2, "screenOn"    # I
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "here"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x2f

    .line 195
    const-string/jumbo v3, "isFalseTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string/jumbo v4, "Session did not become active after query for a false touch."

    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string/jumbo v4, " enabled="

    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v1

    .line 195
    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string/jumbo v4, " mScreenOn="

    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    iget-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v4, :cond_6e

    .line 195
    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const-string/jumbo v1, " mState="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string/jumbo v1, ". Look for warnings ~1000ms earlier to see root cause."

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p4}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 0
    return-void

    :cond_6c
    move v0, v2

    .line 198
    goto :goto_29

    :cond_6e
    move v1, v2

    .line 200
    goto :goto_40
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    const-string/jumbo v0, "FALSING MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, "classifierEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 434
    const-string/jumbo v0, "mSessionActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_56

    move v0, v1

    :goto_23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 435
    const-string/jumbo v0, "mBouncerOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_58

    move v0, v1

    :goto_31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 436
    const-string/jumbo v0, "mState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "mScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_5a

    :goto_4d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 438
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 431
    return-void

    :cond_54
    move v0, v2

    .line 433
    goto :goto_15

    :cond_56
    move v0, v2

    .line 434
    goto :goto_23

    :cond_58
    move v0, v2

    .line 435
    goto :goto_31

    :cond_5a
    move v1, v2

    .line 437
    goto :goto_4d
.end method

.method public isClassiferEnabled()Z
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .registers 9

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_85

    .line 177
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 178
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-nez v0, :cond_85

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/4 v2, 0x1

    .line 180
    .local v2, "enabled":I
    :goto_23
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_91

    const/4 v3, 0x1

    .line 181
    .local v3, "screenOn":I
    :goto_28
    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "state":Ljava/lang/String;
    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v0, "here"

    invoke-direct {v5, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 183
    .local v5, "here":Ljava/lang/Throwable;
    const-string/jumbo v0, "isFalseTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string/jumbo v6, "Session is not active, yet there\'s a query for a false touch."

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string/jumbo v6, " enabled="

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v6, " mScreenOn="

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    const-string/jumbo v6, " mState="

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string/jumbo v6, ". Escalating to WTF if screen does not turn on soon."

    .line 183
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->wLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingManager$-boolean_isFalseTouch__LambdaImpl0;-><init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    .end local v2    # "enabled":I
    .end local v3    # "screenOn":I
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "here":Ljava/lang/Throwable;
    :cond_85
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 211
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_8f
    const/4 v2, 0x0

    .restart local v2    # "enabled":I
    goto :goto_23

    .line 180
    :cond_91
    const/4 v3, 0x0

    .restart local v3    # "screenOn":I
    goto :goto_28

    .line 213
    .end local v2    # "enabled":I
    .end local v3    # "screenOn":I
    :cond_93
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    return v0
.end method

.method public isReportingEnabled()Z
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 230
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    .line 408
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .registers 4
    .param p1, "rightCorner"    # Z

    .prologue
    .line 397
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 398
    const-string/jumbo v0, "onAffordanceSwipingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_d
    if-eqz p1, :cond_1b

    .line 401
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 405
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    .line 396
    return-void

    .line 403
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_15
.end method

.method public onBouncerHidden()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 309
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_24

    .line 310
    const-string/jumbo v2, "onBouncerHidden"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    const-string/jumbo v3, "from="

    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 310
    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_24
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_2f

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    .line 308
    :cond_2f
    return-void

    :cond_30
    move v0, v1

    .line 311
    goto :goto_19
.end method

.method public onBouncerShown()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 297
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_24

    .line 298
    const-string/jumbo v2, "onBouncerShown"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    const-string/jumbo v3, "from="

    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 299
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_30

    move v0, v1

    .line 298
    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_24
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_2f

    .line 303
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 304
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    .line 296
    :cond_2f
    return-void

    .line 299
    :cond_30
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onCameraHintStarted()V
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    .line 416
    return-void
.end method

.method public onCameraOn()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    .line 388
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    .line 420
    return-void
.end method

.method public onLeftAffordanceOn()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    .line 392
    return-void
.end method

.method public onNotificationActive()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    .line 344
    return-void
.end method

.method public onNotificationDismissed()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    .line 372
    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .registers 7
    .param p1, "accepted"    # Z
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_3b

    .line 350
    const-string/jumbo v0, "onNotificationDoubleTap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, " dx="

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, " dy="

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    const-string/jumbo v2, " (px)"

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    .line 348
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .registers 3

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 378
    const-string/jumbo v0, "onNotificatonStartDismissing"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    .line 376
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .registers 3

    .prologue
    .line 361
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 362
    const-string/jumbo v0, "onNotificatonStartDraggingDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    .line 360
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    .line 384
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    .line 368
    return-void
.end method

.method public onQsDown()V
    .registers 3

    .prologue
    .line 321
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 322
    const-string/jumbo v0, "onQsDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    .line 320
    return-void
.end method

.method public onScreenOff()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 279
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_24

    .line 280
    const-string/jumbo v2, "onScreenOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string/jumbo v3, "from="

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 280
    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    .line 285
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 286
    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 278
    return-void

    :cond_2f
    move v0, v1

    .line 281
    goto :goto_19
.end method

.method public onScreenOnFromTouch()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 267
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_24

    .line 268
    const-string/jumbo v2, "onScreenOnFromTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    const-string/jumbo v3, "from="

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_32

    move v0, v1

    .line 268
    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_24
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 274
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    .line 266
    :cond_31
    return-void

    .line 269
    :cond_32
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onScreenTurningOn()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 254
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_27

    .line 255
    const-string/jumbo v2, "onScreenTurningOn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string/jumbo v3, "from="

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_35

    move v0, v1

    .line 255
    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 260
    :cond_27
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 262
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    .line 253
    :cond_34
    return-void

    .line 256
    :cond_35
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    monitor-enter p0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 224
    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSucccessfulUnlock()V
    .registers 3

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 291
    const-string/jumbo v0, "onSucccessfulUnlock"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_9

    .line 424
    :cond_8
    :goto_8
    return-void

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_8
.end method

.method public onTrackingStarted()V
    .registers 3

    .prologue
    .line 333
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 334
    const-string/jumbo v0, "onTrackingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    .line 332
    return-void
.end method

.method public onTrackingStopped()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    .line 340
    return-void
.end method

.method public onUnlockHintStarted()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    .line 412
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 443
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 445
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationExpanded()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    .line 356
    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    .line 328
    return-void
.end method

.method public setStatusBarState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_33

    .line 240
    const-string/jumbo v0, "setStatusBarState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string/jumbo v2, "from="

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    const-string/jumbo v2, " to="

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_33
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    .line 238
    :goto_3e
    return-void

    .line 249
    :cond_3f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    goto :goto_3e
.end method

.method public shouldEnforceBouncer()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    return v0
.end method
