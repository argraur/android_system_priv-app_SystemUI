.class public Lcom/android/systemui/tuner/TunerService;
.super Lcom/android/systemui/SystemUI;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerService$ClearReceiver;,
        Lcom/android/systemui/tuner/TunerService$Observer;,
        Lcom/android/systemui/tuner/TunerService$Tunable;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/tuner/TunerService;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentUser:I

.field private final mListeningUris:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

.field private final mTunableLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/tuner/TunerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerService;->reloadAll()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/tuner/TunerService$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerService$Observer;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method private addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V
    .registers 9
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 137
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 142
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    :cond_38
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1, p2, v1}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "service":Lcom/android/systemui/tuner/TunerService;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/SystemUIApplication;

    if-eqz v2, :cond_17

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 208
    .local v1, "sysUi":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "service":Lcom/android/systemui/tuner/TunerService;
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 210
    .end local v1    # "sysUi":Lcom/android/systemui/SystemUIApplication;
    :cond_17
    if-nez v0, :cond_1e

    .line 212
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->getStaticService(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    return-object v2

    .line 214
    :cond_1e
    return-object v0
.end method

.method private static getStaticService(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    if-nez v0, :cond_21

    .line 219
    new-instance v0, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunerService;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    .line 220
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    .line 221
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tuner/TunerService;->mComponents:Ljava/util/Map;

    .line 222
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerService;->start()V

    .line 224
    :cond_21
    sget-object v0, Lcom/android/systemui/tuner/TunerService;->sInstance:Lcom/android/systemui/tuner/TunerService;

    return-object v0
.end method

.method public static final isTunerEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 262
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private reloadAll()V
    .registers 8

    .prologue
    .line 179
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 181
    iget v6, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 180
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tunable$iterator":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 183
    .local v2, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v2, v0, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 178
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    .end local v3    # "tunable$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method public static final setTunerEnabled(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-static {p0}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 254
    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    if-eqz p1, :cond_17

    move v0, v1

    .line 253
    :goto_13
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 252
    return-void

    .line 256
    :cond_17
    const/4 v0, 0x2

    goto :goto_13
.end method

.method public static final showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onDisabled"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "dialog":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 230
    const v1, 0x7f0f037b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 231
    const v1, 0x7f0f01f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 231
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 234
    const v1, 0x7f0f030a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/tuner/TunerService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/tuner/TunerService$2;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 233
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 249
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 227
    return-void
.end method

.method private upgradeTuner(II)V
    .registers 9
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 96
    const/4 v2, 0x1

    if-ge p1, v2, :cond_2d

    .line 97
    const-string/jumbo v2, "icon_blacklist"

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "blacklistStr":Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 100
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 102
    .local v1, "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    const-string/jumbo v2, "headset"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    const-string/jumbo v3, "icon_blacklist"

    .line 107
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 105
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 110
    .end local v0    # "blacklistStr":Ljava/lang/String;
    .end local v1    # "iconBlacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2d
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method private static userContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 268
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    .line 270
    :catch_13
    move-exception v0

    .line 271
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p0
.end method


# virtual methods
.method public varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .registers 6
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 130
    const/4 v1, 0x0

    array-length v2, p2

    :goto_2
    if-ge v1, v2, :cond_c

    aget-object v0, p2, v1

    .line 131
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;Ljava/lang/String;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 129
    .end local v0    # "key":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public clearAll()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sysui_demo_allowed"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "status_bar_show_battery_percent"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.demo"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "command"

    const-string/jumbo v4, "exit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_31

    .line 188
    .end local v1    # "key":Ljava/lang/String;
    :cond_43
    return-void
.end method

.method public getValue(Ljava/lang/String;I)I
    .registers 5
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reloadSetting(Landroid/net/Uri;)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 167
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 169
    .local v3, "tunables":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    if-nez v3, :cond_13

    .line 170
    return-void

    .line 172
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v6, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tunable$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 174
    .local v1, "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    invoke-interface {v1, v0, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 166
    .end local v1    # "tunable":Lcom/android/systemui/tuner/TunerService$Tunable;
    :cond_2f
    return-void
.end method

.method public removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .registers 5
    .param p1, "tunable"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mTunableLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "list$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 152
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 150
    .end local v0    # "list":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/systemui/tuner/TunerService$Tunable;>;"
    :cond_1a
    return-void
.end method

.method protected reregisterAll()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 158
    return-void

    .line 160
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uri$iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 162
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mObserver:Lcom/android/systemui/tuner/TunerService$Observer;

    iget v4, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1b

    .line 156
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_31
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 5
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 117
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 76
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 77
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_18

    .line 78
    const-string/jumbo v2, "sysui_tuner_version"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/tuner/TunerService;->upgradeTuner(II)V

    goto :goto_18

    .line 81
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_42
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/tuner/TunerService;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/tuner/TunerService;->mCurrentUser:I

    .line 84
    new-instance v2, Lcom/android/systemui/tuner/TunerService$1;

    iget-object v3, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService$1;-><init>(Lcom/android/systemui/tuner/TunerService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 92
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerService;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 72
    return-void
.end method
