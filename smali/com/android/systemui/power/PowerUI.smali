.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;,
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mNextLogTime:J

.field private mNumTemps:I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mRecentTemps:[F

.field private mScreenOffTime:J

.field private mThresholdTemp:F

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .registers 3
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 60
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 61
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 69
    const/16 v0, 0x7d

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    .line 45
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .registers 6
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 130
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_7

    .line 131
    const/4 v2, 0x1

    return v2

    .line 133
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_e

    .line 134
    return v3

    .line 136
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 137
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_21

    .line 138
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_1e

    .line 139
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 137
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 142
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initTemperatureWarning()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 232
    .local v1, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "show_temperature_warning"

    .line 233
    const v4, 0x7f0e0052

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 232
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1e

    .line 234
    return-void

    .line 237
    :cond_1e
    const-string/jumbo v3, "warning_temperature"

    .line 238
    const v4, 0x7f0e0053

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 237
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 240
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_51

    .line 242
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 243
    const/4 v4, 0x3

    .line 244
    const/4 v5, 0x1

    .line 242
    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    .line 245
    .local v2, "throttlingTemps":[F
    if-eqz v2, :cond_43

    .line 246
    array-length v3, v2

    if-nez v3, :cond_44

    .line 248
    :cond_43
    return-void

    .line 247
    :cond_44
    aget v3, v2, v6

    const v4, -0x800001

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_43

    .line 250
    aget v3, v2, v6

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 252
    .end local v2    # "throttlingTemps":[F
    :cond_51
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    .line 229
    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .registers 6
    .param p1, "temp"    # F

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "currentTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    const-string/jumbo v3, ",thresholdTemp="

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string/jumbo v3, ",batteryStatus="

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string/jumbo v3, ",recentTemps="

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v0, v2, :cond_45

    .line 288
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 290
    :cond_45
    const-string/jumbo v2, "PowerUI"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private logTemperatureStats()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 299
    iget-wide v6, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_12

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_12

    .line 300
    return-void

    .line 303
    :cond_12
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-lez v6, :cond_89

    .line 304
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v4, v6, v10

    .local v4, "sum":F
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v6, v10

    .local v3, "min":F
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v6, v10

    .line 305
    .local v2, "max":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v6, :cond_39

    .line 306
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v6, v1

    .line 307
    .local v5, "temp":F
    add-float/2addr v4, v5

    .line 308
    cmpl-float v6, v5, v2

    if-lez v6, :cond_31

    .line 309
    move v2, v5

    .line 311
    :cond_31
    cmpg-float v6, v5, v3

    if-gez v6, :cond_36

    .line 312
    move v3, v5

    .line 305
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 316
    .end local v5    # "temp":F
    :cond_39
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v6, v6

    div-float v0, v4, v6

    .line 317
    .local v0, "avg":F
    const-string/jumbo v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "avg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_avg"

    float-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 319
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_min"

    float-to-int v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_skin_temp_max"

    float-to-int v8, v2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 322
    .end local v0    # "avg":F
    .end local v1    # "i":I
    .end local v2    # "max":F
    .end local v3    # "min":F
    .end local v4    # "sum":F
    :cond_89
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 323
    iput v10, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    .line 298
    return-void
.end method

.method private setNextLogTime()V
    .registers 5

    .prologue
    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    .line 326
    return-void
.end method

.method private updateTemperatureWarning()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 259
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 260
    const/4 v4, 0x3

    .line 259
    invoke-virtual {v3, v4, v5}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    .line 262
    .local v2, "temps":[F
    array-length v3, v2

    if-eqz v3, :cond_2c

    .line 263
    aget v1, v2, v5

    .line 264
    .local v1, "temp":F
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v3, v4

    .line 266
    const-class v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 267
    .local v0, "phoneStatusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 272
    :cond_27
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissTemperatureWarning()V

    .line 276
    .end local v0    # "phoneStatusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .end local v1    # "temp":F
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    .line 278
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$-void_updateTemperatureWarning__LambdaImpl0;-><init>(Lcom/android/systemui/power/PowerUI;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void

    .line 268
    .restart local v0    # "phoneStatusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .restart local v1    # "temp":F
    :cond_3c
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_27

    .line 269
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    .line 270
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showTemperatureWarning()V

    goto :goto_2c
.end method


# virtual methods
.method synthetic -com_android_systemui_power_PowerUI-mthref-0()V
    .registers 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 331
    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 333
    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 345
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7f

    .line 346
    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 348
    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_7f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 351
    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    .line 352
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 354
    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 330
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "hardware_properties"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Landroid/os/HardwarePropertiesManager;

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 77
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-wide/16 v2, -0x1

    :goto_24
    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 78
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 80
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 86
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    .line 87
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 89
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 87
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 91
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    .line 73
    return-void

    .line 77
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_5c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_24
.end method

.method updateBatteryWarningLevels()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 97
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    const v5, 0x10e0056

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 100
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    const v5, 0x10e0058

    .line 101
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 104
    .local v1, "defWarnLevel":I
    const-string/jumbo v4, "low_power_trigger_level"

    .line 103
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 105
    .local v3, "warnLevel":I
    if-nez v3, :cond_2b

    .line 106
    move v3, v1

    .line 108
    :cond_2b
    if-ge v3, v0, :cond_2e

    .line 109
    move v3, v0

    .line 112
    :cond_2e
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 113
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 114
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    .line 115
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 116
    const v6, 0x10e0059

    .line 115
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 114
    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 96
    return-void
.end method
