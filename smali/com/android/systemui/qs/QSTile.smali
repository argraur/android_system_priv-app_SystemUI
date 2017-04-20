.class public abstract Lcom/android/systemui/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;,
        Lcom/android/systemui/qs/QSTile$AnimationIcon;,
        Lcom/android/systemui/qs/QSTile$BooleanState;,
        Lcom/android/systemui/qs/QSTile$Callback;,
        Lcom/android/systemui/qs/QSTile$DetailAdapter;,
        Lcom/android/systemui/qs/QSTile$DrawableIcon;,
        Lcom/android/systemui/qs/QSTile$DrawableIconWithRes;,
        Lcom/android/systemui/qs/QSTile$H;,
        Lcom/android/systemui/qs/QSTile$Host;,
        Lcom/android/systemui/qs/QSTile$Icon;,
        Lcom/android/systemui/qs/QSTile$ResourceIcon;,
        Lcom/android/systemui/qs/QSTile$SignalState;,
        Lcom/android/systemui/qs/QSTile$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAnnounceNextStateChange:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSTile$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Lcom/android/systemui/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSTile$Host;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field private mTileSpec:Ljava/lang/String;

.field private mTmpState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/qs/QSTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleAddCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleRemoveCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSTile;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleRemoveCallbacks()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSTile;Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSTile;Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/QSTile;Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    const-string/jumbo v0, "Tile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 95
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mUiHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    .line 97
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/systemui/qs/QSTile$H;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    .line 95
    return-void
.end method

.method private handleAddCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 229
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {p1, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 228
    return-void
.end method

.method private handleRemoveCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 234
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method private handleRemoveCallbacks()V
    .registers 2

    .prologue
    .line 238
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    return-void
.end method

.method private handleScanStateChanged(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 303
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 304
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onScanStateChanged(Z)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_17
    return-void
.end method

.method private handleShowDetail(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 291
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 292
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onShowDetail(Z)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_17
    return-void
.end method

.method private handleStateChanged()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    .line 268
    .local v1, "delayAnnouncement":Z
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 269
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 270
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {v3, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 272
    :cond_26
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_2c

    if-eqz v1, :cond_33

    .line 279
    .end local v2    # "i":I
    :cond_2c
    :goto_2c
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v3, :cond_45

    .end local v1    # "delayAnnouncement":Z
    :goto_30
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    .line 266
    return-void

    .line 273
    .restart local v1    # "delayAnnouncement":Z
    .restart local v2    # "i":I
    :cond_33
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "announcement":Ljava/lang/String;
    if-eqz v0, :cond_2c

    .line 275
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v3, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .end local v0    # "announcement":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_45
    move v1, v4

    .line 279
    goto :goto_30
.end method

.method private handleToggleStateChanged(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 297
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 298
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_17
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 163
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    return-void
.end method

.method protected checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/String;)V
    .registers 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v3, 0x0

    .line 320
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    .line 321
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 320
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 322
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    .line 323
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 322
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 327
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    .line 328
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 319
    :goto_1e
    return-void

    .line 324
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    .line 325
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_1e
.end method

.method public final clearState()V
    .registers 3

    .prologue
    .line 199
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method

.method public click()V
    .registers 3

    .prologue
    .line 175
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 174
    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSIconView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    new-instance v0, Lcom/android/systemui/qs/QSIconView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSIconView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 215
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 214
    return-void
.end method

.method public fireScanStateChanged(Z)V
    .registers 6
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_6
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void

    :cond_10
    move v0, v1

    .line 211
    goto :goto_6
.end method

.method public fireToggleStateChanged(Z)V
    .registers 6
    .param p1, "state"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_6
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void

    :cond_10
    move v0, v1

    .line 207
    goto :goto_6
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .registers 2

    .prologue
    .line 136
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTile$Host;
    .registers 2

    .prologue
    .line 128
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method public abstract getLongClickIntent()Landroid/content/Intent;
.end method

.method public abstract getMetricsCategory()I
.end method

.method public getState()Lcom/android/systemui/qs/QSTile$State;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method public abstract getTileLabel()Ljava/lang/CharSequence;
.end method

.method public getTileSpec()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTileSpec:Ljava/lang/String;

    return-object v0
.end method

.method protected handleClearState()V
    .registers 2

    .prologue
    .line 254
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    .line 253
    return-void
.end method

.method protected abstract handleClick()V
.end method

.method protected handleDestroy()V
    .registers 2

    .prologue
    .line 315
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    return-void
.end method

.method protected handleLongClick()V
    .registers 4

    .prologue
    .line 247
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16e

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 259
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v0

    .line 261
    .local v0, "changed":Z
    if-eqz v0, :cond_12

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleStateChanged()V

    .line 258
    :cond_12
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 1

    .prologue
    .line 243
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->handleClick()V

    .line 241
    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .prologue
    .line 309
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 145
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public longClick()V
    .registers 3

    .prologue
    .line 183
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method public abstract newTileState()Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public final refreshState()V
    .registers 2

    .prologue
    .line 191
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 195
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/qs/QSTile$Callback;

    .prologue
    .line 167
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    .prologue
    .line 171
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public secondaryClick()V
    .registers 3

    .prologue
    .line 179
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method public setDetailListening(Z)V
    .registers 2
    .param p1, "listening"    # Z

    .prologue
    .line 222
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    return-void
.end method

.method public setListening(Ljava/lang/Object;Z)V
    .registers 8
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "listening"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    if-eqz p2, :cond_2c

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v3, :cond_2b

    .line 108
    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_2b
    :goto_2b
    return-void

    .line 112
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_2b

    .line 113
    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setListening false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_48
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-virtual {v0, v4, v2, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b
.end method

.method protected abstract setListening(Z)V
.end method

.method public setTileSpec(Ljava/lang/String;)V
    .registers 2
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 124
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mTileSpec:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .registers 2

    .prologue
    .line 283
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .registers 6
    .param p1, "show"    # Z

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_6
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void

    :cond_f
    move v0, v1

    .line 187
    goto :goto_6
.end method

.method public userSwitch(I)V
    .registers 5
    .param p1, "newUserId"    # I

    .prologue
    .line 203
    .local p0, "this":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 202
    return-void
.end method
