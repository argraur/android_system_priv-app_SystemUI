.class public Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.super Ljava/lang/Object;
.source "CastControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallbackRegistered:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDiscovering:Z

.field private final mDiscoveringLock:Ljava/lang/Object;

.field private final mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private mProjection:Landroid/media/projection/MediaProjectionInfo;

.field private final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private final mProjectionLock:Ljava/lang/Object;

.field private final mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V
    .registers 3
    .param p1, "projection"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "started"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    const-string/jumbo v0, "CastController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    .line 273
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 302
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    .line 301
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    .line 63
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    .line 65
    const-string/jumbo v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 68
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_66

    const-string/jumbo v0, "CastController"

    const-string/jumbo v1, "new CastController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_66
    return-void
.end method

.method private ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 247
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    .line 245
    :cond_11
    return-void
.end method

.method private fireOnCastDevicesChanged()V
    .registers 4

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 253
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/CastController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    goto :goto_6

    .line 251
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/CastController$Callback;
    :cond_16
    return-void
.end method

.method private fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .prologue
    .line 258
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/CastController$Callback;->onCastDevicesChanged()V

    .line 257
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 211
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 212
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1c

    .line 213
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 214
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 215
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 218
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_1c
    const-string/jumbo v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No label found for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_36} :catch_37

    .line 222
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_36
    return-object p1

    .line 219
    :catch_37
    move-exception v1

    .line 220
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error getting appName for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method private handleDiscoveryChangeLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 114
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    .line 116
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    if-eqz v0, :cond_1e

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 119
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    .line 111
    :cond_1d
    :goto_1d
    return-void

    .line 120
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 122
    const/16 v2, 0x8

    .line 121
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 123
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    goto :goto_1d
.end method

.method private static routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const/4 v1, 0x0

    .line 262
    if-nez p0, :cond_4

    return-object v1

    .line 263
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const/16 v2, 0x40

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    const-string/jumbo v2, ",status="

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_48

    const-string/jumbo v1, ",default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_48
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    const-string/jumbo v1, ",enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_54
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_60

    const-string/jumbo v1, ",connecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_60
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string/jumbo v1, ",selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_6c
    const-string/jumbo v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    .registers 9
    .param p1, "projection"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "started"    # Z

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    .line 192
    .local v2, "oldProjection":Landroid/media/projection/MediaProjectionInfo;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 194
    .local v1, "isCurrent":Z
    if-eqz p2, :cond_10

    if-eqz v1, :cond_4a

    .line 197
    :cond_10
    if-nez p2, :cond_18

    if-eqz v1, :cond_18

    .line 198
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_4e

    .line 199
    const/4 v0, 0x1

    :cond_18
    :goto_18
    monitor-exit v4

    .line 202
    if-eqz v0, :cond_49

    .line 203
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_46

    const-string/jumbo v3, "CastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProjection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    .line 189
    :cond_49
    return-void

    .line 195
    :cond_4a
    :try_start_4a
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_4e

    .line 196
    const/4 v0, 0x1

    .line 194
    goto :goto_18

    .line 192
    .end local v1    # "isCurrent":Z
    :catchall_4e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateRemoteDisplays()V
    .registers 8

    .prologue
    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 227
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 229
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_3b

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 231
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_20

    .line 229
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 232
    :cond_20
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 233
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 234
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_38

    goto :goto_1d

    .line 226
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :catchall_38
    move-exception v4

    monitor-exit v5

    throw v4

    .line 236
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 237
    .local v3, "selected":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_38

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4a
    :goto_4a
    monitor-exit v5

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    .line 225
    return-void

    .line 238
    :cond_4f
    :try_start_4f
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    .line 239
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_38

    goto :goto_4a
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    monitor-exit v0

    .line 85
    return-void

    .line 88
    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v2, "CastController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "  mDiscovering="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 74
    const-string/jumbo v2, "  mCallbackRegistered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 75
    const-string/jumbo v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 76
    const-string/jumbo v2, "  mRoutes.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 78
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    .line 79
    .local v1, "route":Landroid/media/MediaRouter$RouteInfo;
    const-string/jumbo v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 81
    .end local v1    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_5b
    const-string/jumbo v2, "  mProjection="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public getCastDevices()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 134
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 135
    .local v2, "devices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/statusbar/policy/CastController$CastDevice;>;"
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 136
    :try_start_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz v6, :cond_3e

    .line 137
    new-instance v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 138
    .local v1, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 139
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 140
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0f02b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 141
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 142
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 143
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_93

    monitor-exit v9

    .line 144
    return-object v2

    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_3e
    monitor-exit v9

    .line 147
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 148
    :try_start_42
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    .line 149
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    new-instance v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    .line 150
    .restart local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    .line 151
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 152
    .local v3, "name":Ljava/lang/CharSequence;
    if-eqz v3, :cond_96

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_73
    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    .line 153
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_98

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7f
    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    .line 155
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v6

    if-eqz v6, :cond_9a

    const/4 v6, 0x1

    :goto_88
    iput v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    .line 158
    iput-object v4, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_42 .. :try_end_8f} :catchall_90

    goto :goto_4c

    .line 147
    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v3    # "name":Ljava/lang/CharSequence;
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "route$iterator":Ljava/util/Iterator;
    :catchall_90
    move-exception v6

    monitor-exit v9

    throw v6

    .line 135
    :catchall_93
    move-exception v6

    monitor-exit v9

    throw v6

    .restart local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .restart local v3    # "name":Ljava/lang/CharSequence;
    .restart local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v5    # "route$iterator":Ljava/util/Iterator;
    :cond_96
    move-object v6, v8

    .line 152
    goto :goto_73

    .restart local v0    # "description":Ljava/lang/CharSequence;
    :cond_98
    move-object v6, v8

    .line 154
    goto :goto_7f

    .line 156
    :cond_9a
    :try_start_9a
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_90

    move-result v6

    if-eqz v6, :cond_a2

    move v6, v7

    goto :goto_88

    .line 157
    :cond_a2
    const/4 v6, 0x0

    goto :goto_88

    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v1    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    .end local v3    # "name":Ljava/lang/CharSequence;
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_a4
    monitor-exit v9

    .line 162
    return-object v2
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    monitor-exit v0

    .line 94
    return-void

    .line 96
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCurrentUserId(I)V
    .registers 3
    .param p1, "currentUserId"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 128
    return-void
.end method

.method public setDiscovering(Z)V
    .registers 6
    .param p1, "request"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-ne v0, p1, :cond_9

    monitor-exit v1

    return-void

    .line 105
    :cond_9
    :try_start_9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    .line 106
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "CastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDiscovering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2e

    monitor-exit v1

    .line 102
    return-void

    .line 103
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .prologue
    .line 167
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    if-nez v1, :cond_7

    :cond_6
    return-void

    .line 168
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 169
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "CastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 166
    return-void
.end method

.method public stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .prologue
    .line 175
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v0, v2, Landroid/media/projection/MediaProjectionInfo;

    .line 176
    .local v0, "isProjection":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "CastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopCasting isProjection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_22
    if-eqz v0, :cond_55

    .line 178
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    check-cast v1, Landroid/media/projection/MediaProjectionInfo;

    .line 179
    .local v1, "projection":Landroid/media/projection/MediaProjectionInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjectionManager;->stopActiveProjection()V

    .line 174
    .end local v1    # "projection":Landroid/media/projection/MediaProjectionInfo;
    :goto_39
    return-void

    .line 182
    .restart local v1    # "projection":Landroid/media/projection/MediaProjectionInfo;
    :cond_3a
    const-string/jumbo v2, "CastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Projection is no longer active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 185
    .end local v1    # "projection":Landroid/media/projection/MediaProjectionInfo;
    :cond_55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_39
.end method
