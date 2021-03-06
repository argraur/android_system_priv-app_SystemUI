.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroid/service/notification/IConditionListener;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRequesting:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRequesting:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .registers 2
    .param p1, "available"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .registers 2
    .param p1, "zen"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;[Landroid/service/notification/Condition;)V
    .registers 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenModeConfig()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "ZenModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mListener:Landroid/service/notification/IConditionListener;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "zen_mode"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 82
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 86
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 89
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 68
    return-void
.end method

.method private fireConditionsChanged([Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 194
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConditionsChanged([Landroid/service/notification/Condition;)V

    goto :goto_6

    .line 192
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 206
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    goto :goto_6

    .line 204
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireEffectsSuppressorChanged()V
    .registers 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 176
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    goto :goto_6

    .line 174
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 5
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 200
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto :goto_6

    .line 198
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireNextAlarmChanged()V
    .registers 4

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 170
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    goto :goto_6

    .line 168
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireZenAvailableChanged(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 188
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    goto :goto_6

    .line 186
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private fireZenChanged(I)V
    .registers 5
    .param p1, "zen"    # I

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 182
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    goto :goto_6

    .line 180
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    :cond_16
    return-void
.end method

.method private updateConditions([Landroid/service/notification/Condition;)V
    .registers 7
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_7

    :cond_6
    return-void

    .line 212
    :cond_7
    array-length v2, p1

    :goto_8
    if-ge v1, v2, :cond_1d

    aget-object v0, p1, v1

    .line 213
    .local v0, "c":Landroid/service/notification/Condition;
    iget v3, v0, Landroid/service/notification/Condition;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_15

    .line 212
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 214
    :cond_15
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 217
    .end local v0    # "c":Landroid/service/notification/Condition;
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/service/notification/Condition;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/Condition;

    .line 216
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConditionsChanged([Landroid/service/notification/Condition;)V

    .line 210
    return-void
.end method

.method private updateZenModeConfig()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 222
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-void

    .line 223
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 224
    :goto_18
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 225
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    .line 226
    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 227
    .local v1, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_21
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-void

    .line 223
    .end local v1    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_28
    const/4 v2, 0x0

    .local v2, "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_18

    .line 228
    .end local v2    # "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v1    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2a
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 220
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getCurrentUser()I
    .registers 2

    .prologue
    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_5
.end method

.method public getNextAlarm()J
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 136
    .local v0, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    :goto_e
    return-wide v2

    :cond_f
    const-wide/16 v2, 0x0

    goto :goto_e
.end method

.method public getZen()I
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    return v0
.end method

.method public isCountdownConditionSupported()Z
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "countdown"

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolumeRestricted()Z
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_adjust_volume"

    .line 95
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isZenAvailable()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public setUserId(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 141
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz v0, :cond_e

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    :cond_e
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 140
    return-void
.end method

.method public setZen(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "zen"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 114
    return-void
.end method
