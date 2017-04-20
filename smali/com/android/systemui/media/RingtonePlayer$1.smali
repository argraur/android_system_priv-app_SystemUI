.class Lcom/android/systemui/media/RingtonePlayer$1;
.super Landroid/media/IRingtonePlayer$Stub;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/RingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/RingtonePlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/media/RingtonePlayer;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-direct {p0}, Landroid/media/IRingtonePlayer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 187
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1, v0}, Lcom/android/systemui/media/RingtonePlayer;->-wrap0(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v2, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPlaying(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 141
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    monitor-exit v2

    .line 143
    if-eqz v0, :cond_22

    .line 144
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    return v1

    .line 140
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 146
    .restart local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    .line 194
    .local v8, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1, v8}, Lcom/android/systemui/media/RingtonePlayer;->-wrap0(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 200
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x3

    :try_start_21
    new-array v2, v1, [Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "is_ringtone"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 202
    const-string/jumbo v1, "is_alarm"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 203
    const-string/jumbo v1, "is_notification"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 205
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 206
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_51

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_4e} :catch_79
    .catchall {:try_start_21 .. :try_end_4e} :catchall_af

    move-result v1

    if-eqz v1, :cond_60

    .line 208
    :cond_51
    :try_start_51
    const-string/jumbo v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_57} :catch_79
    .catchall {:try_start_51 .. :try_end_57} :catchall_af

    move-result-object v1

    .line 214
    if-eqz v6, :cond_5d

    :try_start_5a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_6f

    :cond_5d
    :goto_5d
    if-eqz v9, :cond_71

    throw v9

    .line 206
    :cond_60
    const/4 v1, 0x2

    :try_start_61
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_79
    .catchall {:try_start_61 .. :try_end_64} :catchall_af

    move-result v1

    if-nez v1, :cond_51

    .line 214
    :cond_67
    if-eqz v6, :cond_6c

    :try_start_69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_87

    :cond_6c
    :goto_6c
    if-eqz v9, :cond_95

    throw v9

    :catch_6f
    move-exception v9

    goto :goto_5d

    .line 208
    :cond_71
    return-object v1

    .line 209
    :catch_72
    move-exception v7

    .line 210
    .local v7, "e":Ljava/io/IOException;
    :try_start_73
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_79} :catch_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_af

    .line 214
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_79
    move-exception v1

    :try_start_7a
    throw v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_7f
    if-eqz v6, :cond_84

    :try_start_81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_89

    :cond_84
    :goto_84
    if-eqz v2, :cond_94

    throw v2

    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_87
    move-exception v9

    goto :goto_6c

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_89
    move-exception v3

    if-nez v2, :cond_8e

    move-object v2, v3

    goto :goto_84

    :cond_8e
    if-eq v2, v3, :cond_84

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_94
    throw v1

    .line 216
    :cond_95
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uri is not ringtone, alarm, or notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :catchall_af
    move-exception v1

    move-object v2, v9

    goto :goto_7f
.end method

.method public play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "volume"    # F
    .param p5, "looping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 111
    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    if-nez v0, :cond_30

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 113
    .local v4, "user":Landroid/os/UserHandle;
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/RingtonePlayer$Client;-><init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/UserHandle;Landroid/media/AudioAttributes;)V

    .line 114
    .restart local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_47

    .end local v4    # "user":Landroid/os/UserHandle;
    :cond_30
    monitor-exit v6

    .line 118
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 119
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/Ringtone;->setVolume(F)V

    .line 120
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 103
    return-void

    .line 109
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_47
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looping"    # Z
    .param p4, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 167
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Async playback only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_11
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 170
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 172
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer;->-get0(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1, p2}, Lcom/android/systemui/media/RingtonePlayer;->-wrap0(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V

    .line 164
    return-void
.end method

.method public setPlaybackProperties(Landroid/os/IBinder;FZ)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "looping"    # Z

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 154
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_25

    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    monitor-exit v2

    .line 156
    if-eqz v0, :cond_24

    .line 157
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setVolume(F)V

    .line 158
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 151
    :cond_24
    return-void

    .line 153
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stop(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 128
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->-get1(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    monitor-exit v2

    .line 130
    if-eqz v0, :cond_25

    .line 131
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get1(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 132
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->-get0(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 124
    :cond_25
    return-void

    .line 127
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopAsync()V
    .registers 3

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 179
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Async playback only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer;->-get0(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    .line 176
    return-void
.end method
