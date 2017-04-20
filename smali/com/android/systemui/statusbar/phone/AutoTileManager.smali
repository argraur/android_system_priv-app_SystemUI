.class public Lcom/android/systemui/statusbar/phone/AutoTileManager;
.super Ljava/lang/Object;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AutoTileManager$1;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$2;,
        Lcom/android/systemui/statusbar/phone/AutoTileManager$3;
    }
.end annotation


# instance fields
.field private mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    .line 75
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 40
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 41
    const-string/jumbo v0, "QsHotspotAdded"

    invoke-static {p1, v0, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 42
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 44
    :cond_3c
    const-string/jumbo v0, "QsDataSaverAdded"

    invoke-static {p1, v0, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_52

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mDataSaverListener:Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    .line 47
    :cond_52
    const-string/jumbo v0, "QsInvertColorsAdded"

    invoke-static {p1, v0, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 49
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 48
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mColorsSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 66
    :cond_6f
    const-string/jumbo v0, "QsWorkAdded"

    invoke-static {p1, v0, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_81

    .line 67
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mProfileCallback:Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->addCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    .line 37
    :cond_81
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method
