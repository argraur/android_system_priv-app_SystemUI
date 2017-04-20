.class public Lcom/android/systemui/statusbar/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# instance fields
.field private mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

.field private mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    const-string/jumbo v0, "SystemBars"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createStatusBarFromConfig()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const v4, 0x7f0f019d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1a

    .line 91
    :cond_12
    const-string/jumbo v3, "No status bar component configured"

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 93
    :cond_1a
    const/4 v0, 0x0

    .line 95
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_3f

    move-result-object v0

    .line 100
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2d} :catch_59

    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mComponents:Ljava/util/Map;

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 87
    return-void

    .line 96
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3f
    move-exception v2

    .line 97
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 101
    .end local v2    # "t":Ljava/lang/Throwable;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_59
    move-exception v2

    .line 102
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating status bar component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 81
    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    :cond_9
    return-void
.end method

.method public onNoService()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SystemBars;->createStatusBarFromConfig()V

    .line 56
    return-void
.end method

.method public onServiceStartAttempt()J
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 67
    iput-object v1, p0, Lcom/android/systemui/statusbar/SystemBars;->mStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 68
    const-wide/16 v0, 0x1f4

    return-wide v0

    .line 70
    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public start()V
    .registers 7

    .prologue
    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string/jumbo v1, "SystemBars"

    .line 51
    iget-object v3, p0, Lcom/android/systemui/statusbar/SystemBars;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "bar_service_component"

    .line 50
    const/4 v2, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/SystemBars;->mServiceMonitor:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    .line 48
    return-void
.end method
