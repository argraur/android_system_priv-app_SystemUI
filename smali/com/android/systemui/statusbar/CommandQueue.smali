.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/CommandQueue$H;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .registers 4
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 138
    return-void
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1b0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 375
    return-void

    .line 376
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateCollapsePanels()V
    .registers 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 171
    return-void

    .line 172
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .registers 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 164
    return-void

    .line 165
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 5
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 178
    return-void

    .line 179
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionCancelled()V
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x130000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x130000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 329
    return-void

    .line 330
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionFinished()V
    .registers 4

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1f0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1f0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 345
    return-void

    .line 346
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionPending()V
    .registers 4

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x130000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x130000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 322
    return-void

    .line 323
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public appTransitionStarting(JJ)V
    .registers 10
    .param p1, "startTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x150000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/high16 v3, 0x150000

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v1

    .line 336
    return-void

    .line 337
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public buzzBeepBlinked()V
    .registers 4

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 295
    return-void

    .line 296
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelPreloadRecentApps()V
    .registers 7

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 257
    return-void

    .line 258
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1d0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 389
    return-void

    .line 390
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disable(II)V
    .registers 7
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 157
    return-void

    .line 158
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 265
    return-void

    .line 266
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleSystemNavigationKey(I)V
    .registers 6
    .param p1, "key"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x210000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 396
    return-void

    .line 397
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hideRecentApps(ZZ)V
    .registers 9
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 229
    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xe0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 231
    if-eqz p1, :cond_1f

    move v2, v0

    :goto_11
    if-eqz p2, :cond_21

    .line 230
    :goto_13
    const/high16 v1, 0xe0000

    .line 232
    const/4 v5, 0x0

    .line 230
    invoke-virtual {v4, v1, v2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    monitor-exit v3

    .line 227
    return-void

    :cond_1f
    move v2, v1

    .line 231
    goto :goto_11

    :cond_21
    move v0, v1

    goto :goto_13

    .line 228
    :catchall_23
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public notificationLightOff()V
    .registers 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 302
    return-void

    .line 303
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notificationLightPulse(III)V
    .registers 8
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x110000

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 308
    return-void

    .line 309
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 6
    .param p1, "source"    # I

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 367
    return-void

    .line 368
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public preloadRecentApps()V
    .registers 7

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 250
    return-void

    .line 251
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    .line 382
    return-void

    .line 383
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x10000

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 150
    return-void

    .line 151
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    const/high16 v3, 0x10000

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 142
    return-void

    .line 143
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "showImeSwitcherKey"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v2

    .line 210
    return-void

    .line 211
    .end local v0    # "m":Landroid/os/Message;
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 191
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 192
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 193
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 194
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 195
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 196
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x60000

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v2

    .line 186
    return-void

    .line 187
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setWindowState(II)V
    .registers 7
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 288
    return-void

    .line 289
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showAssistDisclosure()V
    .registers 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 352
    return-void

    .line 353
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showRecentApps(ZZ)V
    .registers 9
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xd0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 223
    if-eqz p1, :cond_1f

    move v2, v0

    :goto_11
    if-eqz p2, :cond_21

    .line 222
    :goto_13
    const/high16 v1, 0xd0000

    .line 223
    const/4 v5, 0x0

    .line 222
    invoke-virtual {v4, v1, v2, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_23

    monitor-exit v3

    .line 219
    return-void

    :cond_1f
    move v2, v1

    .line 223
    goto :goto_11

    :cond_21
    move v0, v1

    goto :goto_13

    .line 220
    :catchall_23
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public showScreenPinningRequest(I)V
    .registers 7
    .param p1, "taskId"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x120000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 315
    return-void

    .line 316
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showTvPictureInPictureMenu()V
    .registers 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1a0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1a0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 281
    return-void

    .line 282
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 359
    return-void

    .line 360
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 6
    .param p1, "deviceId"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 273
    return-void

    .line 274
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toggleRecentApps()V
    .registers 7

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 243
    return-void

    .line 244
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toggleSplitScreen()V
    .registers 7

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 236
    return-void

    .line 237
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .registers 8
    .param p1, "menuVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x70000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    const/high16 v3, 0x70000

    const/4 v4, 0x0

    .line 205
    const/4 v5, 0x0

    .line 204
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 201
    return-void

    .line 202
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
