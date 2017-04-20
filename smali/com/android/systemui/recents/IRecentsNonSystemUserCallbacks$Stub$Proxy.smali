.class Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecentsNonSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 155
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelPreloadingRecents()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    return-void

    .line 185
    :catchall_16
    move-exception v1

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    throw v1
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .registers 10
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    if-eqz p4, :cond_29

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return-void

    .line 255
    :cond_29
    const/4 v1, 0x0

    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_1d

    .line 259
    :catchall_2e
    move-exception v1

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw v1
.end method

.method public hideRecents(ZZ)V
    .registers 8
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_6
    const-string/jumbo v3, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_23

    move v3, v1

    :goto_f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    if-eqz p2, :cond_25

    :goto_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_27

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    return-void

    :cond_23
    move v3, v2

    .line 211
    goto :goto_f

    :cond_25
    move v1, v2

    .line 212
    goto :goto_14

    .line 215
    :catchall_27
    move-exception v1

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v1
.end method

.method public onConfigurationChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    return-void

    .line 238
    :catchall_16
    move-exception v1

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method public onDraggingInRecents(F)V
    .registers 7
    .param p1, "distanceFromTop"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    return-void

    .line 271
    :catchall_1a
    move-exception v1

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw v1
.end method

.method public onDraggingInRecentsEnded(F)V
    .registers 7
    .param p1, "velocity"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 283
    :catchall_1a
    move-exception v1

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    throw v1
.end method

.method public preloadRecents()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    return-void

    .line 174
    :catchall_16
    move-exception v1

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v1
.end method

.method public showCurrentUserToast(II)V
    .registers 8
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    return-void

    .line 296
    :catchall_1d
    move-exception v1

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v1
.end method

.method public showRecents(ZZZZZI)V
    .registers 12
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "reloadTasks"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "recentsGrowTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_6
    const-string/jumbo v3, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    if-eqz p1, :cond_38

    move v3, v1

    :goto_f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    if-eqz p2, :cond_3a

    move v3, v1

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    if-eqz p3, :cond_3c

    move v3, v1

    :goto_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    if-eqz p4, :cond_3e

    move v3, v1

    :goto_21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    if-eqz p5, :cond_40

    :goto_26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_42

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    return-void

    :cond_38
    move v3, v2

    .line 194
    goto :goto_f

    :cond_3a
    move v3, v2

    .line 195
    goto :goto_15

    :cond_3c
    move v3, v2

    .line 196
    goto :goto_1b

    :cond_3e
    move v3, v2

    .line 197
    goto :goto_21

    :cond_40
    move v1, v2

    .line 198
    goto :goto_26

    .line 202
    :catchall_42
    move-exception v1

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v1
.end method

.method public toggleRecents(I)V
    .registers 7
    .param p1, "recentsGrowTarget"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    return-void

    .line 227
    :catchall_19
    move-exception v1

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v1
.end method
