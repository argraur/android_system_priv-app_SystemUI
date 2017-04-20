.class public Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/QSTile;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;"
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mComponent:Landroid/content/ComponentName;

.field private mDefaultIcon:Landroid/graphics/drawable/Icon;

.field private mIsShowingDialog:Z

.field private mIsTokenGranted:Z

.field private mListening:Z

.field private final mService:Landroid/service/quicksettings/IQSTileService;

.field private final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field private final mTile:Landroid/service/quicksettings/Tile;

.field private final mToken:Landroid/os/IBinder;

.field private final mUser:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/external/CustomTile;)Landroid/service/quicksettings/IQSTileService;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 62
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 76
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 77
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 78
    new-instance v1, Landroid/service/quicksettings/Tile;

    invoke-direct {v1}, Landroid/service/quicksettings/Tile;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 80
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/external/TileServices;->getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/external/TileServiceManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 85
    :try_start_3d
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mAppContext:Landroid/content/Context;
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4c} :catch_4d

    .line 74
    :goto_4c
    return-void

    .line 86
    :catch_4d
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4c
.end method

.method public static create(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;
    .registers 6
    .param p0, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/QSTileHost;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p1, :cond_34

    const-string/jumbo v1, "custom("

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 361
    const-string/jumbo v1, "custom("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty custom tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    .end local v0    # "action":Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad custom tile spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4e
    new-instance v1, Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getColor(I)I
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 334
    packed-switch p0, :pswitch_data_12

    .line 342
    const/4 v0, 0x0

    return v0

    .line 336
    :pswitch_5
    const v0, 0x7f0c00b9

    return v0

    .line 338
    :pswitch_9
    const v0, 0x7f0c00ba

    return v0

    .line 340
    :pswitch_d
    const v0, 0x7f0c00bb

    return v0

    .line 334
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p0, "spec"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string/jumbo v1, "custom("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty custom tile spec action"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_20
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 7
    .param p1, "icon1"    # Landroid/graphics/drawable/Icon;
    .param p2, "icon2"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p1, p2, :cond_6

    .line 127
    return v3

    .line 129
    :cond_6
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 130
    :cond_a
    return v2

    .line 132
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 133
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    if-eq v0, v1, :cond_18

    .line 134
    :cond_17
    return v2

    .line 136
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 137
    return v2

    .line 139
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 140
    return v2

    .line 142
    :cond_32
    return v3
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;)Z
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 249
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 248
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 250
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_26

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 250
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_26
    return-object v1
.end method

.method private setTileIcon()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 92
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 93
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0xc0000

    .line 94
    .local v1, "flags":I
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/external/CustomTile;->isSystemApp(Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 95
    const v1, 0xc0200

    .line 97
    :cond_12
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 98
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    iget v6, v3, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v6, :cond_5b

    iget v2, v3, Landroid/content/pm/ServiceInfo;->icon:I

    .line 101
    .local v2, "icon":I
    :goto_1e
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 102
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/qs/external/CustomTile;->iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v5

    .line 103
    :goto_32
    if-eqz v2, :cond_62

    .line 104
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-static {v6, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    :goto_3e
    iput-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 105
    if-eqz v5, :cond_49

    .line 106
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v8}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 109
    :cond_49
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_5a

    .line 110
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 90
    .end local v1    # "flags":I
    .end local v2    # "icon":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_5a
    :goto_5a
    return-void

    .line 99
    .restart local v1    # "flags":I
    .restart local v3    # "info":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_5b
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_64

    .restart local v2    # "icon":I
    goto :goto_1e

    .line 101
    :cond_60
    const/4 v5, 0x1

    .local v5, "updateIcon":Z
    goto :goto_32

    .end local v5    # "updateIcon":Z
    :cond_62
    move-object v6, v7

    .line 104
    goto :goto_3e

    .line 112
    .end local v1    # "flags":I
    .end local v2    # "icon":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_64
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    iput-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    goto :goto_5a
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_19

    .line 241
    return-object v0

    .line 243
    :cond_19
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 243
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 318
    const/16 v0, 0x10c

    return v0
.end method

.method public getQsTile()Landroid/service/quicksettings/Tile;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUser()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return v0
.end method

.method protected handleClick()V
    .registers 5

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    if-nez v1, :cond_9

    .line 257
    return-void

    .line 261
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7f3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_41

    .line 266
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 267
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 270
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2f} :catch_3f

    .line 274
    :goto_2f
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->getMetricsCategory()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 255
    return-void

    .line 271
    :catch_3f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2f

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_15
.end method

.method protected handleDestroy()V
    .registers 4

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 220
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v1, :cond_e

    .line 223
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_1a

    .line 227
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V

    .line 218
    return-void

    .line 224
    :catch_1a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_e
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 13
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 284
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v5

    .line 285
    .local v5, "tileState":I
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v6}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 286
    const/4 v5, 0x0

    .line 289
    :cond_f
    const/4 v4, 0x0

    .line 290
    .local v4, "mHasRes":Z
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 292
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    :try_start_16
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 293
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_6f

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6d

    const/4 v4, 0x1

    .line 299
    :goto_24
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/qs/external/CustomTile;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 300
    .local v0, "color":I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 301
    if-eqz v4, :cond_82

    new-instance v6, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v7

    invoke-direct {v6, v1, v7}, Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_3c
    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 303
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 304
    if-nez v5, :cond_5c

    .line 305
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 306
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 307
    const/16 v9, 0x12

    .line 305
    invoke-virtual {v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 309
    :cond_5c
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_88

    .line 310
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v6}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 283
    :goto_6c
    return-void

    .line 293
    .end local v0    # "color":I
    :cond_6d
    const/4 v4, 0x0

    goto :goto_24

    .line 294
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_6f
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Invalid icon, forcing into unavailable state"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v5, 0x0

    .line 297
    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mAppContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_24

    .line 302
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "color":I
    :cond_82
    new-instance v6, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    invoke-direct {v6, v1}, Lcom/android/systemui/qs/QSTile$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c

    .line 312
    :cond_88
    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_6c
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2

    .prologue
    .line 232
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onDialogHidden()V
    .registers 4

    .prologue
    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 178
    :goto_a
    return-void

    .line 183
    :catch_b
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public onDialogShown()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 174
    return-void
.end method

.method public onTileChanged(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 146
    return-void
.end method

.method public setListening(Z)V
    .registers 5
    .param p1, "listening"    # Z

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-ne v1, p1, :cond_5

    return-void

    .line 190
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    .line 192
    if-eqz p1, :cond_23

    .line 193
    :try_start_9
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->setTileIcon()V

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->refreshState()V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-nez v1, :cond_22

    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 188
    :cond_22
    :goto_22
    return-void

    .line 200
    :cond_23
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V

    .line 201
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    if-eqz v1, :cond_3c

    .line 209
    :cond_30
    :goto_30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_22

    .line 212
    :catch_3a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_22

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_47

    .line 207
    :goto_43
    const/4 v1, 0x0

    :try_start_44
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_46} :catch_3a

    goto :goto_30

    .line 205
    :catch_47
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_43
.end method

.method public startUnlockAndRun()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/CustomTile$1;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public updateState(Landroid/service/quicksettings/Tile;)V
    .registers 4
    .param p1, "tile"    # Landroid/service/quicksettings/Tile;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 167
    return-void
.end method
