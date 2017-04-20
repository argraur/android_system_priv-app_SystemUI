.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$1;,
        Lcom/android/systemui/settings/BrightnessController$2;,
        Lcom/android/systemui/settings/BrightnessController$3;,
        Lcom/android/systemui/settings/BrightnessController$4;,
        Lcom/android/systemui/settings/BrightnessController$5;,
        Lcom/android/systemui/settings/BrightnessController$6;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private final mPower:Landroid/os/IPowerManager;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/BrightnessController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    .registers 2
    .param p1, "automatic"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 155
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 241
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 277
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    .line 278
    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 279
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 280
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$7;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 287
    new-instance v1, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 289
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 290
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 291
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 292
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 293
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 296
    const v2, 0x1120023

    .line 295
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 297
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 298
    const-string/jumbo v1, "vrmanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 275
    return-void
.end method

.method private setBrightness(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 418
    :goto_5
    return-void

    .line 421
    :catch_6
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private setBrightnessAdj(F)V
    .registers 4
    .param p1, "adj"    # F

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 425
    :goto_5
    return-void

    .line 428
    :catch_6
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private updateIcon(Z)V
    .registers 4
    .param p1, "automatic"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 434
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 436
    :cond_8
    const v1, 0x7f0200d0

    .line 434
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    :cond_e
    return-void
.end method

.method private updateVrMode(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_d

    .line 442
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    .line 443
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :cond_d
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .registers 12
    .param p1, "view"    # Lcom/android/systemui/settings/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I
    .param p5, "stopTracking"    # Z

    .prologue
    .line 357
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    .line 358
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v4, :cond_a

    return-void

    .line 360
    :cond_a
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v4, :cond_3e

    .line 361
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    add-int v3, p4, v4

    .line 362
    .local v3, "val":I
    if-eqz p5, :cond_1b

    .line 363
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v5, 0x1f2

    invoke-static {v4, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 365
    :cond_1b
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 366
    if-nez p2, :cond_28

    .line 367
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 407
    .end local v3    # "val":I
    :cond_28
    :goto_28
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cb$iterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 408
    .local v1, "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2e

    .line 375
    .end local v1    # "cb":Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    .end local v2    # "cb$iterator":Ljava/util/Iterator;
    :cond_3e
    iget-boolean v4, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-nez v4, :cond_5d

    .line 376
    iget v4, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v3, p4, v4

    .line 377
    .restart local v3    # "val":I
    if-eqz p5, :cond_4f

    .line 378
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v5, 0xda

    invoke-static {v4, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 380
    :cond_4f
    invoke-direct {p0, v3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    .line 381
    if-nez p2, :cond_28

    .line 382
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 391
    .end local v3    # "val":I
    :cond_5d
    int-to-float v4, p4

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 392
    .local v0, "adj":F
    if-eqz p5, :cond_6e

    .line 393
    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v5, 0xdb

    invoke-static {v4, v5, p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 395
    :cond_6e
    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    .line 396
    if-nez p2, :cond_28

    .line 397
    new-instance v4, Lcom/android/systemui/settings/BrightnessController$10;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/settings/BrightnessController$10;-><init>(Lcom/android/systemui/settings/BrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 356
    .end local v0    # "adj":F
    .restart local v2    # "cb$iterator":Ljava/util/Iterator;
    :cond_7c
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .registers 2
    .param p1, "control"    # Lcom/android/systemui/settings/ToggleSlider;

    .prologue
    .line 314
    return-void
.end method

.method public registerCallbacks()V
    .registers 4

    .prologue
    .line 319
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v1, :cond_5

    .line 320
    return-void

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_18

    .line 325
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_23

    .line 332
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 318
    return-void

    .line 327
    :catch_23
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar.BrightnessController"

    const-string/jumbo v2, "Failed to register VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public setBackgroundLooper(Landroid/os/Looper;)V
    .registers 3
    .param p1, "backgroundLooper"    # Landroid/os/Looper;

    .prologue
    .line 302
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 301
    return-void
.end method

.method public unregisterCallbacks()V
    .registers 4

    .prologue
    .line 338
    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v1, :cond_5

    .line 339
    return-void

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_10

    .line 344
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_1b

    .line 350
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 337
    return-void

    .line 345
    :catch_1b
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar.BrightnessController"

    const-string/jumbo v2, "Failed to unregister VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method
