.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const v3, 0x7f0f01a4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    .line 69
    :cond_f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "No SystemUIFactory component configured"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_18
    const/4 v0, 0x0

    .line 74
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUIFactory;

    sput-object v3, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_29} :catch_2a

    .line 66
    return-void

    .line 76
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2a
    move-exception v2

    .line 77
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "SystemUIFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating SystemUIFactory component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method


# virtual methods
.method public createAssistManager(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;
    .registers 4
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    new-instance v0, Lcom/android/systemui/assist/AssistManager;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/content/Context;)V

    return-object v0
.end method

.method public createInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p4, "windowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p5, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-object v0
.end method

.method public createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/NextAlarmController;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 36
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
    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    return-object v0
.end method

.method public createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .registers 6
    .param p1, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "headsUpScrim"    # Landroid/view/View;
    .param p4, "lockscreenWallpaper"    # Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .prologue
    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Landroid/view/View;)V

    return-object v0
.end method

.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    return-object v0
.end method
