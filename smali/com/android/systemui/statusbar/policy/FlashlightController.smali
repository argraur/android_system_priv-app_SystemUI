.class public Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$1;,
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mFlashlightEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTorchAvailable:Z

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .registers 2
    .param p1, "available"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchModeChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string/jumbo v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 198
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->tryInitCamera()V

    .line 61
    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_24

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 192
    .local v0, "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v0, :cond_1c

    if-ne v0, p1, :cond_21

    .line 193
    :cond_1c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 189
    .end local v0    # "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_24
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .registers 3
    .param p1, "available"    # Z

    .prologue
    .line 162
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 161
    return-void
.end method

.method private dispatchError()V
    .registers 3

    .prologue
    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 157
    return-void
.end method

.method private dispatchListeners(IZ)V
    .registers 9
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 166
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 167
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 168
    .local v0, "N":I
    const/4 v1, 0x0

    .line 169
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_38

    .line 170
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 171
    .local v3, "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v3, :cond_36

    .line 172
    if-nez p1, :cond_25

    .line 173
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 169
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 174
    :cond_25
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2f

    .line 175
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    goto :goto_22

    .line 166
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4

    .line 176
    .restart local v0    # "N":I
    .restart local v1    # "cleanup":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2f
    const/4 v4, 0x2

    if-ne p1, v4, :cond_22

    .line 177
    :try_start_32
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_22

    .line 180
    :cond_36
    const/4 v1, 0x1

    goto :goto_22

    .line 183
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_38
    if-eqz v1, :cond_3e

    .line 184
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2c

    :cond_3e
    monitor-exit v5

    .line 165
    return-void
.end method

.method private dispatchModeChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 153
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1d

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 134
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_1d
    monitor-exit p0

    .line 131
    return-void

    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 140
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "ids":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v3

    :goto_9
    if-ge v5, v6, :cond_38

    aget-object v2, v3, v5

    .line 142
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 143
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 144
    .local v1, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 145
    .local v4, "lensFacing":Ljava/lang/Integer;
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 146
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_35

    .line 147
    return-object v2

    .line 141
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 150
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "flashAvailable":Ljava/lang/Boolean;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "lensFacing":Ljava/lang/Integer;
    :cond_38
    return-object v9
.end method

.method private tryInitCamera()V
    .registers 5

    .prologue
    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_17

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 68
    :cond_16
    return-void

    .line 71
    :catch_17
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "FlashlightController"

    const-string/jumbo v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 5
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 117
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->tryInitCamera()V

    .line 120
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 115
    return-void

    .line 116
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 242
    const-string/jumbo v0, "FlashlightController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "  mCameraId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, "  mFlashlightEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 248
    const-string/jumbo v0, "  mTorchAvailable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchAvailable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 241
    return-void
.end method

.method public hasFlashlight()Z
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 112
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mTorchAvailable:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 108
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 4
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 127
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 125
    return-void

    .line 126
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFlashlight(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "pendingError":Z
    monitor-enter p0

    .line 85
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_30

    if-nez v2, :cond_8

    monitor-exit p0

    return-void

    .line 86
    :cond_8
    :try_start_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_15

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_30

    .line 89
    :try_start_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_15
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_15} :catch_21
    .catchall {:try_start_e .. :try_end_15} :catchall_30

    :cond_15
    :goto_15
    monitor-exit p0

    .line 97
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchModeChanged(Z)V

    .line 98
    if-eqz v1, :cond_20

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchError()V

    .line 82
    :cond_20
    return-void

    .line 90
    :catch_21
    move-exception v0

    .line 91
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_22
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "Couldn\'t set torch mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_30

    .line 93
    const/4 v1, 0x1

    goto :goto_15

    .line 84
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method
