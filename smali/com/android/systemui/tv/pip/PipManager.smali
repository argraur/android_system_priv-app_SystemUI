.class public Lcom/android/systemui/tv/pip/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/pip/PipManager$1;,
        Lcom/android/systemui/tv/pip/PipManager$2;,
        Lcom/android/systemui/tv/pip/PipManager$3;,
        Lcom/android/systemui/tv/pip/PipManager$4;,
        Lcom/android/systemui/tv/pip/PipManager$5;,
        Lcom/android/systemui/tv/pip/PipManager$Listener;,
        Lcom/android/systemui/tv/pip/PipManager$MediaListener;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_ONBOARDING:Z

.field private static sPipManager:Lcom/android/systemui/tv/pip/PipManager;

.field private static final sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/tv/pip/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mOnboardingShown:Z

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

.field private mPipTaskId:I

.field private mRecentsFocusChangedAnimationDurationMs:I

.field private mRecentsFocusedPipBounds:Landroid/graphics/Rect;

.field private mRecentsPipBounds:Landroid/graphics/Rect;

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tv/pip/PipManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/tv/pip/PipManager;)Landroid/media/session/MediaSessionManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/tv/pip/PipManager;)Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/tv/pip/PipManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/tv/pip/PipManager;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/tv/pip/PipManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/tv/pip/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/tv/pip/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/tv/pip/PipManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/tv/pip/PipManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tv/pip/PipManager;)Landroid/app/ActivityManager$StackInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tv/pip/PipManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->isSettingsShown()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .registers 2
    .param p1, "removePipStack"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/tv/pip/PipManager;[Ljava/lang/String;)V
    .registers 2
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/tv/pip/PipManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->launchPipOnboardingActivityIfNeeded()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/tv/pip/PipManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/tv/pip/PipManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->showPipOverlay()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V
    .registers 2
    .param p1, "controllers"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/tv/pip/PipManager;Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 63
    const-string/jumbo v0, "debug.tv.pip_force_onboarding"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    sput-boolean v0, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 77
    const-string/jumbo v2, "com.android.tv.settings"

    const/4 v3, 0x0

    .line 76
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 79
    const-string/jumbo v2, "com.google.android.leanbacklauncher"

    .line 80
    const-string/jumbo v3, "com.google.android.leanbacklauncher.settings.HomeScreenSettingsActivity"

    .line 78
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 82
    const-string/jumbo v2, "com.google.android.apps.mediashell"

    .line 83
    const-string/jumbo v3, "com.google.android.apps.mediashell.settings.CastSettingsActivity"

    .line 81
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 85
    const-string/jumbo v2, "com.google.android.katniss"

    .line 86
    const-string/jumbo v3, "com.google.android.katniss.setting.SpeechSettingsActivity"

    .line 84
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 88
    const-string/jumbo v2, "com.google.android.katniss"

    .line 89
    const-string/jumbo v3, "com.google.android.katniss.setting.SearchSettingsActivity"

    .line 87
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    .line 91
    const-string/jumbo v2, "com.google.android.gsf.notouch"

    .line 92
    const-string/jumbo v3, "com.google.android.gsf.notouch.UsageDiagnosticsSettingActivity"

    .line 90
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 163
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$1;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$2;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$3;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$4;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    .line 192
    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 584
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/tv/pip/PipManager$5;-><init>(Lcom/android/systemui/tv/pip/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 200
    return-void
.end method

.method private closePipInternal(Z)V
    .registers 7
    .param p1, "removePipStack"    # Z

    .prologue
    const/4 v4, 0x0

    .line 273
    iput v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 274
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 275
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 277
    if-eqz p1, :cond_18

    .line 279
    :try_start_12
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_30

    .line 284
    :cond_18
    :goto_18
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_3b

    .line 285
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipActivityClosed()V

    .line 284
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 280
    .end local v1    # "i":I
    :catch_30
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "removeStack failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    :cond_3b
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    invoke-direct {p0, v4}, Lcom/android/systemui/tv/pip/PipManager;->updatePipVisibility(Z)V

    .line 272
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/tv/pip/PipManager;
    .registers 1

    .prologue
    .line 713
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    if-nez v0, :cond_b

    .line 714
    new-instance v0, Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/tv/pip/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 716
    :cond_b
    sget-object v0, Lcom/android/systemui/tv/pip/PipManager;->sPipManager:Lcom/android/systemui/tv/pip/PipManager;

    return-object v0
.end method

.method private getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .registers 5

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 475
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_8
    return-object v1

    .line 472
    .restart local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_9
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "getStackInfo failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .registers 12
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 479
    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-nez v3, :cond_8

    .line 480
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 478
    :cond_7
    :goto_7
    return-void

    .line 482
    :cond_8
    const/4 v2, 0x0

    .line 483
    .local v2, "requestedFromLastPackages":Z
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-eqz v3, :cond_29

    .line 484
    iget-object v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_11
    if-ge v5, v7, :cond_29

    aget-object v1, v6, v5

    .line 485
    .local v1, "packageName":Ljava/lang/String;
    array-length v8, p1

    move v3, v4

    :goto_17
    if-ge v3, v8, :cond_22

    aget-object v0, p1, v3

    .line 486
    .local v0, "newPackageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 487
    const/4 v2, 0x1

    .line 484
    .end local v0    # "newPackageName":Ljava/lang/String;
    :cond_22
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_11

    .line 485
    .restart local v0    # "newPackageName":Ljava/lang/String;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 493
    .end local v0    # "newPackageName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_29
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 494
    if-nez v2, :cond_7

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/tv/pip/PipManager;->closePip()V

    goto :goto_7
.end method

.method private isSettingsShown()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 563
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v5

    .line 564
    .local v5, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_13

    move-result v7

    if-nez v7, :cond_1e

    .line 565
    :cond_12
    return v10

    .line 567
    .end local v5    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_13
    move-exception v3

    .line 568
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "Failed to detect top activity"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    return v10

    .line 571
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v5    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1e
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 572
    .local v6, "topActivity":Landroid/content/ComponentName;
    sget-object v7, Lcom/android/systemui/tv/pip/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 573
    .local v1, "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 574
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 575
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_56

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 577
    :cond_56
    return v11

    .line 581
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_57
    return v10
.end method

.method private launchPipOnboardingActivityIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 451
    sget-boolean v1, Lcom/android/systemui/tv/pip/PipManager;->DEBUG_FORCE_ONBOARDING:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    if-eqz v1, :cond_a

    .line 450
    :goto_9
    return-void

    .line 452
    :cond_a
    iput-boolean v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    .line 453
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TvPictureInPictureOnboardingShown"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/tv/pip/PipOnboardingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private loadConfigurationsAndApply()V
    .registers 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x104006e

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 231
    const v1, 0x7f0f01a6

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 233
    const v1, 0x7f0f01a7

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 235
    const v1, 0x7f0f01a8

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    .line 237
    const v1, 0x7f0f01a9

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    .line 239
    const v1, 0x7f0e005b

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->isSettingsShown()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    :goto_58
    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_68

    const/4 v1, 0x0

    :goto_61
    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 226
    return-void

    .line 244
    :cond_65
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    goto :goto_58

    .line 245
    :cond_68
    const/4 v1, 0x1

    goto :goto_61
.end method

.method private showPipMenu()V
    .registers 5

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-virtual {v2}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->isRecentsShown()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 411
    return-void

    .line 413
    :cond_9
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 414
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_24

    .line 415
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onShowPipMenu()V

    .line 414
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 417
    :cond_24
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/tv/pip/PipMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method private showPipOverlay()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipOverlayActivity;->showPipOverlay(Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v2, 0x0

    .line 502
    .local v2, "mediaController":Landroid/media/session/MediaController;
    if-eqz p1, :cond_2a

    iget v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2a

    .line 503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_2a

    .line 504
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 507
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 508
    move-object v2, v0

    .line 513
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "i":I
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_2a
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq v3, v2, :cond_58

    .line 514
    iput-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 515
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_38
    if-ltz v1, :cond_4b

    .line 516
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    invoke-interface {v3}, Lcom/android/systemui/tv/pip/PipManager$MediaListener;->onMediaControllerChanged()V

    .line 515
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 503
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    .restart local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 518
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_4b
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_59

    .line 519
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 520
    const-wide/16 v6, 0xbb8

    .line 519
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    .end local v1    # "i":I
    :cond_58
    :goto_58
    return-void

    .line 522
    .restart local v1    # "i":I
    :cond_59
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_58
.end method

.method private updatePipVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setTvPipVisibility(Z)V

    .line 726
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$Listener;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public closePip()V
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->closePipInternal(Z)V

    .line 268
    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getPipRecentsOverlayManager()Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    return-object v0
.end method

.method getPlaybackState()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 540
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-nez v4, :cond_10

    .line 541
    :cond_f
    return v6

    .line 543
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 544
    .local v3, "state":I
    const/4 v4, 0x6

    if-eq v3, v4, :cond_21

    .line 545
    const/16 v4, 0x8

    if-ne v3, v4, :cond_37

    .line 544
    :cond_21
    const/4 v2, 0x1

    .line 551
    .local v2, "isPlaying":Z
    :goto_22
    iget-object v4, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 552
    .local v0, "actions":J
    if-nez v2, :cond_4c

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4c

    .line 553
    const/4 v4, 0x1

    return v4

    .line 546
    .end local v0    # "actions":J
    .end local v2    # "isPlaying":Z
    :cond_37
    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    .line 547
    const/4 v4, 0x4

    if-eq v3, v4, :cond_21

    .line 548
    const/4 v4, 0x5

    if-eq v3, v4, :cond_21

    .line 549
    const/16 v4, 0x9

    if-eq v3, v4, :cond_21

    .line 550
    const/16 v4, 0xa

    if-ne v3, v4, :cond_4a

    const/4 v2, 0x1

    .restart local v2    # "isPlaying":Z
    goto :goto_22

    .end local v2    # "isPlaying":Z
    :cond_4a
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_22

    .line 554
    .restart local v0    # "actions":J
    :cond_4c
    if-eqz v2, :cond_57

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_57

    .line 555
    const/4 v4, 0x0

    return v4

    .line 557
    :cond_57
    return v6
.end method

.method public getRecentsFocusedPipBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    if-eqz v1, :cond_5

    .line 207
    return-void

    .line 209
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mInitialized:Z

    .line 210
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 213
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TvPictureInPictureOnboardingShown"

    const/4 v3, 0x0

    .line 217
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mOnboardingShown:Z

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->loadConfigurationsAndApply()V

    .line 221
    new-instance v1, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    invoke-direct {v1, p1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    .line 223
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 222
    iput-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 205
    return-void
.end method

.method public isPipShown()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 465
    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method movePipToFullscreen()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 295
    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 296
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipTaskId:I

    .line 297
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1e

    .line 298
    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onMoveToFullscreen()V

    .line 297
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 300
    :cond_1e
    iget v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 294
    return-void
.end method

.method onConfigurationChanged()V
    .registers 3

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/systemui/tv/pip/PipManager;->loadConfigurationsAndApply()V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipRecentsOverlayManager:Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipRecentsOverlayManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public removeListener(Lcom/android/systemui/tv/pip/PipManager$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$Listener;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/tv/pip/PipManager$MediaListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/tv/pip/PipManager$MediaListener;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method resizePinnedStack(I)V
    .registers 12
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x4

    .line 344
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_25

    :cond_a
    const/4 v9, 0x1

    .line 345
    .local v9, "wasRecentsShown":Z
    :goto_b
    iput p1, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    .line 346
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_15
    if-ltz v8, :cond_27

    .line 347
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tv/pip/PipManager$Listener;

    invoke-interface {v0}, Lcom/android/systemui/tv/pip/PipManager$Listener;->onPipResizeAboutToStart()V

    .line 346
    add-int/lit8 v8, v8, -0x1

    goto :goto_15

    .line 344
    .end local v8    # "i":I
    .end local v9    # "wasRecentsShown":Z
    :cond_25
    const/4 v9, 0x0

    .restart local v9    # "wasRecentsShown":Z
    goto :goto_b

    .line 349
    .restart local v8    # "i":I
    :cond_27
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_2c

    .line 353
    return-void

    .line 355
    :cond_2c
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    packed-switch v0, :pswitch_data_72

    .line 372
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 376
    :goto_35
    const/4 v6, -0x1

    .line 377
    .local v6, "animationDurationMs":I
    if-eqz v9, :cond_42

    .line 378
    :try_start_38
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-eq v0, v2, :cond_40

    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    if-ne v0, v1, :cond_42

    .line 379
    :cond_40
    iget v6, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusChangedAnimationDurationMs:I

    .line 381
    :cond_42
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x4

    .line 382
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 381
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_66

    .line 341
    :goto_4d
    return-void

    .line 357
    .end local v6    # "animationDurationMs":I
    :pswitch_4e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_35

    .line 360
    :pswitch_52
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_35

    .line 363
    :pswitch_57
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_35

    .line 366
    :pswitch_5c
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_35

    .line 369
    :pswitch_61
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mRecentsFocusedPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_35

    .line 383
    .restart local v6    # "animationDurationMs":I
    :catch_66
    move-exception v7

    .line 384
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "resizeStack failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 355
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_57
        :pswitch_52
        :pswitch_5c
        :pswitch_61
    .end packed-switch
.end method

.method public resumePipResizing(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 328
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 329
    return-void

    .line 333
    :cond_6
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    .line 334
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .registers 3

    .prologue
    .line 260
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 259
    :cond_9
    return-void
.end method

.method public suspendPipResizing(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 320
    iget v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/tv/pip/PipManager;->mSuspendPipResizingReason:I

    .line 317
    return-void
.end method
