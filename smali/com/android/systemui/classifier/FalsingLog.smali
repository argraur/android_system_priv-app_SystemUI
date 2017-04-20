.class public Lcom/android/systemui/classifier/FalsingLog;
.super Ljava/lang/Object;
.source "FalsingLog.java"


# static fields
.field public static final ENABLED:Z

.field private static final LOGCAT:Z

.field private static final MAX_SIZE:I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingLog;


# instance fields
.field private final mFormat:Ljava/text/SimpleDateFormat;

.field private final mLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "debug.falsing_log"

    .line 52
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 53
    const-string/jumbo v0, "debug.falsing_logcat"

    .line 54
    const/4 v1, 0x0

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    .line 58
    const-string/jumbo v0, "debug.falsing_log_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    sget v1, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    .line 67
    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-class v3, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v3

    .line 124
    :try_start_3
    const-string/jumbo v2, "FALSING LOG:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-nez v2, :cond_18

    .line 126
    const-string/jumbo v2, "Disabled, to enable: setprop debug.falsing_log 1"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_49

    monitor-exit v3

    .line 128
    return-void

    .line 130
    :cond_18
    :try_start_18
    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-eqz v2, :cond_26

    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 131
    :cond_26
    const-string/jumbo v2, "<empty>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_49

    monitor-exit v3

    .line 133
    return-void

    .line 135
    :cond_31
    :try_start_31
    sget-object v2, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_49

    goto :goto_39

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "s$iterator":Ljava/util/Iterator;
    :catchall_49
    move-exception v2

    monitor-exit v3

    throw v2

    .line 138
    .restart local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    monitor-exit v3

    .line 123
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_22

    .line 101
    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_22
    const-string/jumbo v0, "E"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->LOGCAT:Z

    if-eqz v0, :cond_22

    .line 82
    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_22
    const-string/jumbo v0, "I"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "level"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const-class v2, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v2

    .line 107
    :try_start_3
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_6b

    if-nez v1, :cond_9

    monitor-exit v2

    .line 108
    return-void

    .line 110
    :cond_9
    :try_start_9
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    if-nez v1, :cond_14

    .line 111
    new-instance v1, Lcom/android/systemui/classifier/FalsingLog;

    invoke-direct {v1}, Lcom/android/systemui/classifier/FalsingLog;-><init>()V

    sput-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    .line 114
    :cond_14
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    sget v3, Lcom/android/systemui/classifier/FalsingLog;->MAX_SIZE:I

    if-lt v1, v3, :cond_27

    .line 115
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 117
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v3, v3, Lcom/android/systemui/classifier/FalsingLog;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string/jumbo v3, " "

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string/jumbo v3, " "

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string/jumbo v3, " "

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "entry":Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/classifier/FalsingLog;->sInstance:Lcom/android/systemui/classifier/FalsingLog;

    iget-object v1, v1, Lcom/android/systemui/classifier/FalsingLog;->mLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_6b

    monitor-exit v2

    .line 106
    return-void

    .end local v0    # "entry":Ljava/lang/String;
    :catchall_6b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static wLogcat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "FalsingLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v0, "W"

    invoke-static {v0, p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static declared-synchronized wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 14
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "here"    # Ljava/lang/Throwable;

    .prologue
    const-class v7, Lcom/android/systemui/classifier/FalsingLog;

    monitor-enter v7

    .line 142
    :try_start_3
    sget-boolean v6, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b2

    if-nez v6, :cond_9

    monitor-exit v7

    .line 143
    return-void

    .line 145
    :cond_9
    :try_start_9
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 148
    .local v0, "application":Landroid/app/Application;
    const-string/jumbo v3, ""

    .line 149
    .local v3, "fileMessage":Ljava/lang/String;
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_bc

    if-eqz v0, :cond_bc

    .line 150
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "falsing-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 151
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 151
    const-string/jumbo v9, ".txt"

    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_b2

    .line 152
    .local v2, "f":Ljava/io/File;
    const/4 v4, 0x0

    .line 154
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_4f
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_a2
    .catchall {:try_start_4f .. :try_end_54} :catchall_b5

    .line 155
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_54
    invoke-static {v5}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 156
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Log written to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_71} :catch_c9
    .catchall {:try_start_54 .. :try_end_71} :catchall_c6

    move-result-object v3

    .line 161
    if-eqz v5, :cond_77

    .line 162
    :try_start_74
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 169
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_77
    :goto_77
    const-string/jumbo v6, "FalsingLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_74 .. :try_end_a0} :catchall_b2

    monitor-exit v7

    .line 141
    return-void

    .line 158
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catch_a2
    move-exception v1

    .line 159
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .local v1, "e":Ljava/io/IOException;
    :goto_a3
    :try_start_a3
    const-string/jumbo v6, "FalsingLog"

    const-string/jumbo v8, "Unable to write falsing log"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b5

    .line 161
    if-eqz v4, :cond_77

    .line 162
    :try_start_ae
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_77

    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileMessage":Ljava/lang/String;
    :catchall_b2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 160
    .restart local v0    # "application":Landroid/app/Application;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileMessage":Ljava/lang/String;
    :catchall_b5
    move-exception v6

    .line 161
    :goto_b6
    if-eqz v4, :cond_bb

    .line 162
    :try_start_b8
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 160
    :cond_bb
    throw v6

    .line 166
    .end local v2    # "f":Ljava/io/File;
    :cond_bc
    const-string/jumbo v6, "FalsingLog"

    const-string/jumbo v8, "Unable to write log, build must be debuggable."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_b2

    goto :goto_77

    .line 160
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    :catchall_c6
    move-exception v6

    move-object v4, v5

    .end local v5    # "pw":Ljava/io/PrintWriter;
    .local v4, "pw":Ljava/io/PrintWriter;
    goto :goto_b6

    .line 158
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    :catch_c9
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    goto :goto_a3
.end method
