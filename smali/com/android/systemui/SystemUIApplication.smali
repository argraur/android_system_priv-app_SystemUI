.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final SERVICES_PER_USER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/SystemUIApplication;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SystemUIApplication;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SystemUIApplication;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Class;

    .line 47
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    aput-object v1, v0, v3

    .line 48
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    aput-object v1, v0, v4

    .line 49
    const-class v1, Lcom/android/systemui/recents/Recents;

    aput-object v1, v0, v5

    .line 50
    const-class v1, Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 51
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 52
    const-class v1, Lcom/android/systemui/statusbar/SystemBars;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    const-class v1, Lcom/android/systemui/usb/StorageNotification;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 54
    const-class v1, Lcom/android/systemui/power/PowerUI;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    const-class v1, Lcom/android/systemui/media/RingtonePlayer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    const-class v1, Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 57
    const-class v1, Lcom/android/systemui/tv/pip/PipUI;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 58
    const-class v1, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 59
    const-class v1, Lcom/android/systemui/VendorServices;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 46
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    .line 66
    new-array v0, v5, [Ljava/lang/Class;

    .line 67
    const-class v1, Lcom/android/systemui/recents/Recents;

    aput-object v1, v0, v3

    .line 68
    const-class v1, Lcom/android/systemui/tv/pip/PipUI;

    aput-object v1, v0, v4

    .line 66
    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    .line 38
    return-void
.end method

.method private startServicesIfNeeded([Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 140
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v6, :cond_6

    .line 141
    return-void

    .line 144
    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-nez v6, :cond_1c

    .line 147
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "sys.boot_completed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 148
    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 153
    :cond_1c
    const-string/jumbo v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting SystemUI services for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    const-string/jumbo v8, "."

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    array-length v0, p1

    .line 156
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-ge v4, v0, :cond_92

    .line 157
    aget-object v1, p1, v4

    .line 160
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4b
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/SystemUIFactory;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, "newService":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    if-nez v5, :cond_82

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    :goto_5b
    check-cast v6, Lcom/android/systemui/SystemUI;

    aput-object v6, v7, v4
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_5f} :catch_8b
    .catch Ljava/lang/InstantiationException; {:try_start_4b .. :try_end_5f} :catch_84

    .line 168
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iput-object p0, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 169
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v7, v6, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 171
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->start()V

    .line 173
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_7f

    .line 174
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    .line 156
    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_82
    move-object v6, v5

    .line 161
    goto :goto_5b

    .line 164
    .end local v5    # "newService":Ljava/lang/Object;
    :catch_84
    move-exception v3

    .line 165
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 162
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :catch_8b
    move-exception v2

    .line 163
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 177
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :cond_92
    iput-boolean v9, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    .line 139
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
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
    .line 194
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    iget-boolean v2, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_1a

    .line 183
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v1, v2

    .line 184
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_1a

    .line 185
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    .line 186
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 181
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1a
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 85
    const v1, 0x7f13020a

    invoke-virtual {p0, v1}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    .line 87
    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 92
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_2d
    return-void

    .line 113
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    goto :goto_2d
.end method

.method startSecondaryUserServicesIfNeeded()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES_PER_USER:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 135
    return-void
.end method

.method public startServicesIfNeeded()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V

    .line 124
    return-void
.end method
