.class Lcom/android/systemui/analytics/DataCollector$2;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/analytics/DataCollector;

.field final synthetic val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;


# direct methods
.method constructor <init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/analytics/DataCollector;
    .param p2, "val$currentSession"    # Lcom/android/systemui/analytics/SensorLoggerSession;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    iput-object p2, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 182
    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v5}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 183
    .local v0, "b":[B
    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v5}, Lcom/android/systemui/analytics/DataCollector;->-get1(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "dir":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->val$currentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v5}, Lcom/android/systemui/analytics/SensorLoggerSession;->getResult()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6c

    .line 185
    iget-object v5, p0, Lcom/android/systemui/analytics/DataCollector$2;->this$0:Lcom/android/systemui/analytics/DataCollector;

    invoke-static {v5}, Lcom/android/systemui/analytics/DataCollector;->-get0(Lcom/android/systemui/analytics/DataCollector;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 186
    return-void

    .line 188
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/bad_touches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_3e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 195
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trace_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v4, "touch":Ljava/io/File;
    :try_start_63
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_81

    .line 181
    return-void

    .line 190
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "touch":Ljava/io/File;
    :cond_6c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/good_touches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 199
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "touch":Ljava/io/File;
    :catch_81
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
