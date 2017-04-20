.class public Lcom/android/systemui/qs/external/QSTileServiceWrapper;
.super Ljava/lang/Object;
.source "QSTileServiceWrapper.java"


# instance fields
.field private final mService:Landroid/service/quicksettings/IQSTileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/IQSTileService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/quicksettings/IQSTileService;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 30
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1, p1}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 81
    const/4 v1, 0x1

    return v1

    .line 82
    :catch_7
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x0

    return v1
.end method

.method public onStartListening()Z
    .registers 4

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 61
    const/4 v1, 0x1

    return v1

    .line 62
    :catch_7
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v1, 0x0

    return v1
.end method

.method public onStopListening()Z
    .registers 4

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 71
    const/4 v1, 0x1

    return v1

    .line 72
    :catch_7
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v1, 0x0

    return v1
.end method

.method public onTileAdded()Z
    .registers 4

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onTileAdded()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 41
    const/4 v1, 0x1

    return v1

    .line 42
    :catch_7
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v1, 0x0

    return v1
.end method

.method public onTileRemoved()Z
    .registers 4

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onTileRemoved()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 51
    const/4 v1, 0x1

    return v1

    .line 52
    :catch_7
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const/4 v1, 0x0

    return v1
.end method

.method public onUnlockComplete()Z
    .registers 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 91
    const/4 v1, 0x1

    return v1

    .line 92
    :catch_7
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IQSTileServiceWrapper"

    const-string/jumbo v2, "Caught exception from TileService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v1, 0x0

    return v1
.end method
