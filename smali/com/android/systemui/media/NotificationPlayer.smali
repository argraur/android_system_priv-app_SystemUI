.class public Lcom/android/systemui/media/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/NotificationPlayer$CmdThread;,
        Lcom/android/systemui/media/NotificationPlayer$Command;,
        Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    }
.end annotation


# instance fields
.field private mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

.field private mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/media/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

.field private mLooper:Landroid/os/Looper;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mQueueAudioFocusLock:Ljava/lang/Object;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/media/NotificationPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .registers 2
    .param p1, "cmd"    # Lcom/android/systemui/media/NotificationPlayer$Command;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 276
    if-eqz p1, :cond_20

    .line 277
    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 275
    :goto_1f
    return-void

    .line 279
    :cond_20
    const-string/jumbo v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_1f
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 392
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 390
    :cond_9
    return-void
.end method

.method private enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .registers 3
    .param p1, "cmd"    # Lcom/android/systemui/media/NotificationPlayer$Command;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez v0, :cond_18

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->acquireWakeLock()V

    .line 361
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->start()V

    .line 357
    :cond_18
    return-void
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 396
    :cond_9
    return-void
.end method

.method private startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .registers 10
    .param p1, "cmd"    # Lcom/android/systemui/media/NotificationPlayer$Command;

    .prologue
    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_65

    .line 145
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_1a

    .line 146
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_1a

    .line 147
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 149
    :cond_1a
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    .line 150
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_62

    .line 151
    :try_start_24
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->start()V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->wait()V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_5f

    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_62

    :try_start_2f
    monitor-exit v4

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v4, v6

    .line 158
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    cmp-long v3, v0, v4

    if-lez v3, :cond_5e

    .line 159
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5e} :catch_65

    .line 132
    .end local v0    # "delay":J
    :cond_5e
    :goto_5e
    return-void

    .line 150
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit v5

    throw v3
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_62

    .line 141
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v4

    throw v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_65} :catch_65

    .line 162
    :catch_65
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    if-eqz v0, :cond_10

    .line 231
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    :cond_10
    monitor-exit v1

    .line 238
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 239
    :try_start_14
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2c

    .line 240
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_34

    .line 241
    :try_start_1f
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_28

    .line 242
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 244
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_31

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_34

    :cond_2c
    monitor-exit v1

    .line 227
    return-void

    .line 228
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 240
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v2

    throw v0
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    .line 238
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") playing notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "looping"    # Z
    .param p4, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v4, 0x1

    .line 326
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 327
    .local v0, "cmd":Lcom/android/systemui/media/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 328
    iput v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 329
    iput-object p1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 330
    iput-object p2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 331
    iput-boolean p3, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    .line 332
    iput-object p4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 333
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 334
    :try_start_1a
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 335
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_22

    monitor-exit v2

    .line 325
    return-void

    .line 333
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_31

    .line 383
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 384
    const-string/jumbo v3, " mThread="

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_31
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 387
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 344
    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 347
    :try_start_4
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_1d

    .line 348
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 349
    .local v0, "cmd":Lcom/android/systemui/media/NotificationPlayer$Command;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 350
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 351
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    .line 352
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1f

    .end local v0    # "cmd":Lcom/android/systemui/media/NotificationPlayer$Command;
    :cond_1d
    monitor-exit v2

    .line 343
    return-void

    .line 344
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
