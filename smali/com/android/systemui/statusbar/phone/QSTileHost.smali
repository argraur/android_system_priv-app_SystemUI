.class public Lcom/android/systemui/statusbar/phone/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSTile$Host$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mHeader:Landroid/view/View;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field private final mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "bluetooth"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p4, "location"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotation"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p6, "network"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p7, "zen"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p8, "hotspot"    # Lcom/android/systemui/statusbar/policy/HotspotController;
    .param p9, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;
    .param p10, "flashlight"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p11, "userSwitcher"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p12, "userInfo"    # Lcom/android/systemui/statusbar/policy/UserInfoController;
    .param p13, "keyguard"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .param p14, "security"    # Lcom/android/systemui/statusbar/policy/SecurityController;
    .param p15, "battery"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p16, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p17, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 130
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 131
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 132
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 133
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 134
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 135
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 136
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 137
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 138
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 139
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 140
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 141
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 142
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 143
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 144
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 145
    new-instance v2, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 147
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 148
    const/16 v3, 0xa

    .line 147
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 149
    .local v1, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 150
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    .line 152
    new-instance v2, Lcom/android/systemui/qs/external/TileServices;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sysui_qs_tiles"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 156
    new-instance v2, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 127
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 384
    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .registers 8
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 374
    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 373
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "setting":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 377
    return-void

    .line 379
    :cond_1e
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    .line 381
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 380
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 372
    return-void
.end method

.method public animateToggleQSExpansion()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 211
    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "previousTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 398
    .local v8, "NP":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 399
    .local v7, "NA":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    if-ge v10, v8, :cond_5c

    .line 400
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 401
    .local v11, "tileSpec":Ljava/lang/String;
    const-string/jumbo v1, "custom("

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 399
    :cond_1a
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 402
    :cond_1d
    invoke-interface {p2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 403
    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 404
    .local v9, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 405
    .local v5, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v4, Landroid/service/quicksettings/Tile;

    invoke-direct {v4}, Landroid/service/quicksettings/Tile;-><init>()V

    .line 407
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 405
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 408
    .local v0, "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 409
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 410
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 411
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    goto :goto_1a

    .line 414
    .end local v0    # "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v11    # "tileSpec":Ljava/lang/String;
    :cond_5c
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v1, :cond_7a

    const-string/jumbo v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentTiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_7a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 416
    const-string/jumbo v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 415
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 396
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateCollapsePanels()V

    .line 217
    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .registers 5
    .param p1, "tileSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 420
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 421
    :cond_f
    const-string/jumbo v0, "bt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 422
    :cond_1e
    const-string/jumbo v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CellularTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 423
    :cond_2d
    const-string/jumbo v0, "dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 424
    :cond_3c
    const-string/jumbo v0, "inversion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 425
    :cond_4b
    const-string/jumbo v0, "airplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 426
    :cond_5a
    const-string/jumbo v0, "work"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 427
    :cond_69
    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 428
    :cond_78
    const-string/jumbo v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    new-instance v0, Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 429
    :cond_87
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 430
    :cond_96
    const-string/jumbo v0, "cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/CastTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 431
    :cond_a5
    const-string/jumbo v0, "hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 432
    :cond_b4
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    new-instance v0, Lcom/android/systemui/qs/tiles/UserTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/UserTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 433
    :cond_c3
    const-string/jumbo v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance v0, Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BatteryTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 434
    :cond_d2
    const-string/jumbo v0, "saver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    new-instance v0, Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSaverTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 435
    :cond_e1
    const-string/jumbo v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    new-instance v0, Lcom/android/systemui/qs/tiles/NightDisplayTile;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    return-object v0

    .line 437
    :cond_f0
    const-string/jumbo v0, "intent("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/IntentTile;->create(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    return-object v0

    .line 438
    :cond_fe
    const-string/jumbo v0, "custom("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-static {p0, p1}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v0

    return-object v0

    .line 440
    :cond_10c
    const-string/jumbo v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->destroy()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 171
    return-void
.end method

.method public getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBattery:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method public getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method public getCastController()Lcom/android/systemui/statusbar/policy/CastController;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mFlashlight:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method public getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object v0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method public getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method public getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLocation:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    return-object v0
.end method

.method public getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNetwork:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method public getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    return-object v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mRotation:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method public getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mSecurity:Lcom/android/systemui/statusbar/policy/SecurityController;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method public getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method public getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mZen:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 447
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f019e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "defaultTileList":Ljava/lang/String;
    if-nez p2, :cond_52

    .line 449
    const v5, 0x7f0f01a0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 450
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_32

    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded tile specs from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_32
    :goto_32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 456
    .local v0, "addedDefault":Z
    const-string/jumbo v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_41
    if-ge v5, v7, :cond_90

    aget-object v3, v6, v5

    .line 457
    .local v3, "tile":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 456
    :cond_4f
    :goto_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 452
    .end local v0    # "addedDefault":Z
    .end local v3    # "tile":Ljava/lang/String;
    .end local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_52
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_32

    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded tile specs from setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 459
    .restart local v0    # "addedDefault":Z
    .restart local v3    # "tile":Ljava/lang/String;
    .restart local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_71
    const-string/jumbo v8, "default"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 460
    if-nez v0, :cond_4f

    .line 461
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    const/4 v0, 0x1

    goto :goto_4f

    .line 465
    :cond_8c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 468
    .end local v3    # "tile":Ljava/lang/String;
    :cond_90
    return-object v4
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string/jumbo v10, "sysui_qs_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 315
    return-void

    .line 317
    :cond_a
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_17

    const-string/jumbo v10, "QSTileHost"

    const-string/jumbo v11, "Recreating tiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_17
    if-nez p2, :cond_2e

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 319
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f01a1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 321
    :cond_2e
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, p2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 322
    .local v9, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 323
    .local v0, "currentUser":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    if-ne v0, v10, :cond_45

    return-void

    .line 324
    :cond_45
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tile$iterator":Ljava/util/Iterator;
    :cond_4f
    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 325
    .local v5, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4f

    .line 326
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_89

    const-string/jumbo v11, "QSTileHost"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Destroying tile: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_89
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTile;->destroy()V

    goto :goto_4f

    .line 330
    .end local v5    # "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    :cond_93
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 331
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_9c
    :goto_9c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 332
    .local v7, "tileSpec":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSTile;

    .line 333
    .local v4, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    if-eqz v4, :cond_ef

    instance-of v10, v4, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v10, :cond_bf

    move-object v10, v4

    .line 334
    check-cast v10, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v10

    if-ne v10, v0, :cond_ef

    .line 335
    :cond_bf
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_dd

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Adding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_dd
    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->removeCallbacks()V

    .line 337
    instance-of v10, v4, Lcom/android/systemui/qs/external/CustomTile;

    if-nez v10, :cond_eb

    iget v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    if-eq v10, v0, :cond_eb

    .line 338
    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    .line 340
    :cond_eb
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    .line 342
    :cond_ef
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_10d

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Creating tile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_10d
    :try_start_10d
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v4

    .line 345
    if-eqz v4, :cond_9c

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 346
    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_11f} :catch_121

    goto/16 :goto_9c

    .line 349
    :catch_121
    move-exception v3

    .line 350
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9c

    .line 354
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v7    # "tileSpec":Ljava/lang/String;
    :cond_13e
    iput v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCurrentUser:I

    .line 355
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 356
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    .line 358
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_155
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_16b

    .line 360
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSTile$Host$Callback;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host$Callback;->onTilesChanged()V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_155

    .line 313
    :cond_16b
    return-void
.end method

.method public openPanels()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postAnimateOpenPanels()V

    .line 222
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Host$Callback;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 390
    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .registers 7
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    .local v0, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 369
    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 368
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 365
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mHeader:Landroid/view/View;

    .line 163
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 197
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 192
    return-void
.end method

.method public startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 207
    return-void
.end method
