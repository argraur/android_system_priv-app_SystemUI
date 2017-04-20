.class public Lcom/android/systemui/volume/VolumeDialogController;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogController$C;,
        Lcom/android/systemui/volume/VolumeDialogController$Callbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$Receiver;,
        Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;,
        Lcom/android/systemui/volume/VolumeDialogController$State;,
        Lcom/android/systemui/volume/VolumeDialogController$StreamState;,
        Lcom/android/systemui/volume/VolumeDialogController$VC;,
        Lcom/android/systemui/volume/VolumeDialogController$W;
    }
.end annotation


# static fields
.field private static final STREAMS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudio:Landroid/media/AudioManager;

.field private final mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mEnabled:Z

.field private final mHasVibrator:Z

.field private final mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

.field private final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

.field private mShowDndTile:Z

.field private final mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mStreamTitles:[Ljava/lang/String;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .registers 3
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onVolumeChangedW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onDismissRequestedW(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/VolumeDialogController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->onGetStateW()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/VolumeDialogController;Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .registers 2
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V
    .registers 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .registers 3
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .registers 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .registers 3
    .param p1, "activeStream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .registers 3
    .param p1, "rm"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .registers 3
    .param p1, "rm"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialogController;II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .registers 3
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    .line 63
    return-void

    .line 69
    :array_12
    .array-data 4
        0x4
        0x6
        0x8
        0x3
        0x5
        0x2
        0x1
        0x7
        0x9
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    .line 91
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$VC;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    .line 92
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$C;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    .line 93
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 95
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 107
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$W;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .line 111
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    .line 115
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->init()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->init()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    :goto_bd
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    .line 104
    return-void

    :cond_c0
    move v0, v1

    .line 120
    goto :goto_bd
.end method

.method private checkRoutedToBluetoothW(I)Z
    .registers 6
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "changed":Z
    if-ne p1, v3, :cond_14

    .line 273
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x380

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 277
    .local v1, "routedToBluetooth":Z
    :cond_10
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v0

    .line 279
    .end local v0    # "changed":Z
    .end local v1    # "routedToBluetooth":Z
    :cond_14
    return v0
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 408
    if-nez p1, :cond_4

    return-object v5

    .line 409
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 410
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_d
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 413
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "rt":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_23} :catch_27

    move-result v5

    if-lez v5, :cond_28

    .line 415
    return-object v4

    .line 417
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "rt":Ljava/lang/String;
    :catch_27
    move-exception v1

    .line 418
    :cond_28
    return-object v2
.end method

.method private static isLogWorthy(I)Z
    .registers 2
    .param p0, "stream"    # I

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_8

    .line 378
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 376
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 369
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static isRinger(I)Z
    .registers 3
    .param p0, "stream"    # I

    .prologue
    const/4 v0, 0x1

    .line 395
    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private onDismissRequestedW(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 482
    return-void
.end method

.method private onGetStateW()V
    .registers 8

    .prologue
    .line 333
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_4a

    aget v1, v3, v2

    .line 334
    .local v1, "stream":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    .line 335
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 336
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 337
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    .line 338
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 339
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    .line 340
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 341
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 343
    .end local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v1    # "stream":I
    :cond_4a
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    .line 345
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 346
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 332
    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 254
    if-nez p1, :cond_1c

    .line 255
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 256
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 251
    :cond_1c
    return-void
.end method

.method private onSetActiveStreamW(I)V
    .registers 5
    .param p1, "stream"    # I

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    .line 468
    .local v0, "changed":Z
    if-eqz v0, :cond_d

    .line 469
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 466
    :cond_d
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .registers 6
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_b

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_b
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .registers 4
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    .line 445
    if-eqz p2, :cond_8

    .line 446
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 444
    :goto_7
    return-void

    .line 448
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_7
.end method

.method private onSetStreamMuteW(IZ)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_b

    const/16 v0, -0x64

    .line 454
    :goto_6
    const/4 v2, 0x0

    .line 453
    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 452
    return-void

    .line 454
    :cond_b
    const/16 v0, 0x64

    goto :goto_6
.end method

.method private onSetStreamVolumeW(II)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 458
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_28
    const/16 v0, 0x64

    if-lt p1, v0, :cond_32

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->setStreamVolume(II)V

    .line 461
    return-void

    .line 463
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 457
    return-void
.end method

.method private onSetZenModeW(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 478
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetZenModeW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSafetyWarning(I)V

    .line 265
    return-void
.end method

.method private onVolumeChangedW(II)Z
    .registers 14
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_68

    const/4 v4, 0x1

    .line 284
    .local v4, "showUI":Z
    :goto_7
    and-int/lit16 v6, p2, 0x1000

    if-eqz v6, :cond_6a

    const/4 v1, 0x1

    .line 285
    .local v1, "fromKey":Z
    :goto_c
    and-int/lit16 v6, p2, 0x800

    if-eqz v6, :cond_6c

    const/4 v5, 0x1

    .line 286
    .local v5, "showVibrateHint":Z
    :goto_11
    and-int/lit16 v6, p2, 0x80

    if-eqz v6, :cond_6e

    const/4 v3, 0x1

    .line 287
    .local v3, "showSilentHint":Z
    :goto_16
    const/4 v0, 0x0

    .line 288
    .local v0, "changed":Z
    if-eqz v4, :cond_1d

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    .line 291
    .end local v0    # "changed":Z
    :cond_1d
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 292
    .local v2, "lastAudibleStreamVolume":I
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 293
    .local v0, "changed":Z
    if-eqz v4, :cond_70

    const/4 v6, 0x3

    :goto_2b
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v6

    or-int/2addr v0, v6

    .line 294
    if-eqz v0, :cond_39

    .line 295
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v6, v7}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 297
    :cond_39
    if-eqz v4, :cond_40

    .line 298
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v6, v10}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    .line 300
    :cond_40
    if-eqz v5, :cond_47

    .line 301
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowVibrateHint()V

    .line 303
    :cond_47
    if-eqz v3, :cond_4e

    .line 304
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSilentHint()V

    .line 306
    :cond_4e
    if-eqz v0, :cond_67

    if-eqz v1, :cond_67

    .line 307
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x4

    invoke-static {v6, v8, v7}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 309
    :cond_67
    return v0

    .line 283
    .end local v0    # "changed":Z
    .end local v1    # "fromKey":Z
    .end local v2    # "lastAudibleStreamVolume":I
    .end local v3    # "showSilentHint":Z
    .end local v4    # "showUI":Z
    .end local v5    # "showVibrateHint":Z
    :cond_68
    const/4 v4, 0x0

    .restart local v4    # "showUI":Z
    goto :goto_7

    .line 284
    :cond_6a
    const/4 v1, 0x0

    .restart local v1    # "fromKey":Z
    goto :goto_c

    .line 285
    :cond_6c
    const/4 v5, 0x0

    .restart local v5    # "showVibrateHint":Z
    goto :goto_11

    .line 286
    :cond_6e
    const/4 v3, 0x0

    .restart local v3    # "showSilentHint":Z
    goto :goto_16

    .restart local v0    # "changed":Z
    .restart local v2    # "lastAudibleStreamVolume":I
    :cond_70
    move v6, p1

    .line 293
    goto :goto_2b
.end method

.method private streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .registers 4
    .param p1, "stream"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 325
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v0, :cond_18

    .line 326
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .end local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .line 327
    .restart local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_18
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .registers 8
    .param p1, "activeStream"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne p1, v1, :cond_9

    return v4

    .line 314
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    .line 315
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 316
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_38

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveStreamW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_38
    const/16 v1, 0x64

    if-ge p1, v1, :cond_60

    move v0, p1

    .line 318
    .local v0, "s":I
    :goto_3d
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceVolumeControlStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_5a
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 320
    return v5

    .line 317
    .end local v0    # "s":I
    :cond_60
    const/4 v0, -0x1

    .restart local v0    # "s":I
    goto :goto_3d
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v3

    .line 400
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 401
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v2, v1, v3

    .line 403
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 402
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 404
    return v4
.end method

.method private updateRingerModeExternalW(I)Z
    .registers 7
    .param p1, "rm"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    if-ne p1, v0, :cond_9

    return v3

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 434
    return v4
.end method

.method private updateRingerModeInternalW(I)Z
    .registers 7
    .param p1, "rm"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v0, :cond_9

    return v3

    .line 439
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    .line 440
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 441
    return v4
.end method

.method private updateStreamLevelW(II)Z
    .registers 9
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 360
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v1, p2, :cond_b

    return v4

    .line 361
    :cond_b
    iput p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 362
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 363
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 365
    :cond_29
    return v5
.end method

.method private updateStreamMuteW(IZ)Z
    .registers 9
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 383
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-ne v1, p2, :cond_b

    return v4

    .line 384
    :cond_b
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 385
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 386
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xf

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 388
    :cond_29
    if-eqz p2, :cond_3a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isRinger(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 389
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    .line 391
    :cond_3a
    return v5
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .registers 7
    .param p1, "stream"    # I
    .param p2, "routedToBluetooth"    # Z

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 351
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v1, p2, :cond_a

    const/4 v1, 0x0

    return v1

    .line 352
    :cond_a
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 353
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    const-string/jumbo v3, " routedToBluetooth="

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method private updateZenModeW()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 423
    const-string/jumbo v2, "zen_mode"

    .line 422
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, "zen":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-ne v1, v0, :cond_16

    return v4

    .line 425
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput v0, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    .line 426
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xd

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 427
    return v5
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$C;->add(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 187
    return-void
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .prologue
    .line 159
    new-instance v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V

    return-object v0
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 127
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "  mEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    const-string/jumbo v0, "  mDestroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 177
    const-string/jumbo v0, "  mVolumePolicy: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 178
    const-string/jumbo v0, "  mState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "  mShowDndTile: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 180
    const-string/jumbo v0, "  mHasVibrator: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    const-string/jumbo v0, "  mRemoteStreams: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->-get0(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    .line 173
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getState()V
    .registers 3

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method

.method public hasVibrator()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    return v0
.end method

.method public notifyVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_6

    return-void

    .line 202
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_b
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void

    :cond_15
    move v0, v1

    .line 202
    goto :goto_b
.end method

.method protected onUserActivityW()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method

.method public register()V
    .registers 4

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_17

    .line 138
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->showDndTile(Z)V

    .line 141
    :try_start_11
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v1}, Lcom/android/systemui/volume/MediaSessions;->init()V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_16} :catch_21

    .line 131
    :goto_16
    return-void

    .line 134
    :catch_17
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to set the volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-void

    .line 142
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_21
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No access to media sessions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public setActiveStream(I)V
    .registers 5
    .param p1, "stream"    # I

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public setRingerMode(IZ)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "external"    # Z

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :goto_a
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void

    .line 213
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setStreamVolume(II)V
    .registers 5
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 5
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez v1, :cond_7

    return-void

    .line 151
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_e} :catch_f

    .line 147
    :goto_e
    return-void

    .line 152
    :catch_f
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No volume policy api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public showDndTile(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .prologue
    .line 487
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showDndTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 486
    return-void
.end method

.method public userActivity()V
    .registers 3

    .prologue
    const/16 v1, 0xd

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_7

    return-void

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public vibrate()V
    .registers 5

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 241
    :cond_b
    return-void
.end method
