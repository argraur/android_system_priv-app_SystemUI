.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;,
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;,
        Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultSnoozeLengthMs:I

.field private mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPinnedNotification:Z

.field private mHeadsUpEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpGoingAway:Z

.field private final mHeadsUpNotificationDecay:I

.field private mIsExpanded:Z

.field private mIsObserving:Z

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinimumDisplayTime:I

.field private mReleaseOnExpandFinish:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSnoozeLengthMs:I

.field private final mSnoozedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusBarWindowView:Landroid/view/View;

.field private mSwipedOutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTwoArray:[I

.field private final mTouchAcceptanceDelay:I

.field private mTrackingHeadsUp:Z

.field private mUser:I

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWaitingOnCollapseWhenGoingAway:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarWindowView"    # Landroid/view/View;
    .param p3, "groupManager"    # Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 104
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    .line 120
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 121
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    .line 122
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 123
    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mMinimumDisplayTime:I

    .line 124
    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpNotificationDecay:I

    .line 125
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "heads_up_snooze_length_ms"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mDefaultSnoozeLengthMs:I

    .line 127
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$2;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "heads_up_snooze_length_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 141
    const/4 v4, 0x0

    .line 140
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    .line 144
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 146
    const v1, 0x105001b

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    .line 116
    return-void
.end method

.method private addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v5, 0x1

    .line 207
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 210
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 211
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 215
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v1, p1, v5}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_25

    .line 217
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_35
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 206
    return-void
.end method

.method private getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object v0
.end method

.method private hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 226
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private hasPinnedNotificationInternal()Z
    .registers 5

    .prologue
    .line 445
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 447
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 448
    const/4 v3, 0x1

    return v3

    .line 451
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2a
    const/4 v3, 0x0

    return v3
.end method

.method public static isClickedHeadsUpNotification(Landroid/view/View;)Z
    .registers 3
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 582
    const v1, 0x7f120041

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 583
    .local v0, "clicked":Ljava/lang/Boolean;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 8
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v5, 0x0

    .line 245
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 246
    .local v2, "remove":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 247
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 248
    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 250
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v0, p1, v5}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_20

    .line 252
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_30
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V
    .registers 7
    .param p1, "headsUpEntry"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .param p2, "isPinned"    # Z

    .prologue
    .line 230
    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 231
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-eq v3, p2, :cond_2c

    .line 232
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setPinned(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updatePinnedMode()V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 235
    .local v0, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    if-eqz p2, :cond_28

    .line 236
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_16

    .line 238
    :cond_28
    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_16

    .line 229
    .end local v0    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_2c
    return-void
.end method

.method public static setIsClickedNotification(Landroid/view/View;Z)V
    .registers 4
    .param p0, "child"    # Landroid/view/View;
    .param p1, "clicked"    # Z

    .prologue
    .line 578
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_7
    const v1, 0x7f120041

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 577
    return-void

    .line 578
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x1

    .line 221
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarState:I

    if-eq v1, v0, :cond_9

    .line 222
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-eqz v1, :cond_d

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 221
    :cond_d
    return v0
.end method

.method private static snoozeKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # I

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePinnedMode()V
    .registers 7

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedNotificationInternal()Z

    move-result v0

    .line 257
    .local v0, "hasPinnedNotification":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-ne v0, v3, :cond_9

    .line 258
    return-void

    .line 260
    :cond_9
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 261
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v3, :cond_18

    .line 262
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "note_peek"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 264
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 265
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 266
    .local v1, "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinnedModeChanged(Z)V

    goto :goto_21

    .line 255
    .end local v1    # "listener":Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
    :cond_31
    return-void
.end method

.method private updateTouchableRegionListener()V
    .registers 3

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-nez v1, :cond_f

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 152
    :goto_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsObserving:Z

    if-ne v0, v1, :cond_11

    .line 153
    return-void

    .line 150
    :cond_f
    const/4 v0, 0x1

    .local v0, "shouldObserve":Z
    goto :goto_a

    .line 155
    .end local v0    # "shouldObserve":Z
    :cond_11
    if-eqz v0, :cond_24

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 161
    :goto_21
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsObserving:Z

    .line 149
    return-void

    .line 159
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_21
.end method

.method private waitForStatusBarLayout()V
    .registers 3

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$3;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 561
    return-void
.end method

.method private wasShownLongEnough(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 289
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    .line 290
    .local v1, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 293
    return v3

    .line 295
    :cond_17
    if-eq v0, v1, :cond_1a

    .line 296
    return v3

    .line 298
    :cond_1a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->wasShownLongEnough()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public addSwipedOutNotification(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .registers 6
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 535
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 536
    .local v0, "aEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v1

    .line 537
    .local v1, "bEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_10

    if-nez v1, :cond_16

    .line 538
    :cond_10
    if-nez v0, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, -0x1

    goto :goto_13

    .line 540
    :cond_16
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v2

    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 424
    const-string/jumbo v4, "HeadsUpManager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string/jumbo v4, "  mTouchAcceptanceDelay="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 426
    const-string/jumbo v4, "  mSnoozeLengthMs="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 427
    const-string/jumbo v4, "  now="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 428
    const-string/jumbo v4, "  mUser="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 429
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 430
    .local v1, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    const-string/jumbo v4, "  HeadsUpEntry="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3e

    .line 432
    .end local v1    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_56
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 433
    .local v0, "N":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  snoozed packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_74
    if-ge v3, v0, :cond_99

    .line 435
    const-string/jumbo v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 436
    const-string/jumbo v4, ", "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 423
    :cond_99
    return-void
.end method

.method public getAllEntries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 365
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 366
    return-object v4

    .line 368
    :cond_a
    const/4 v2, 0x0

    .line 369
    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 370
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v2, :cond_2a

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    .line 371
    :cond_2a
    move-object v2, v0

    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    goto :goto_15

    .line 374
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v2    # "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_2c
    return-object v2
.end method

.method public getTopHeadsUpPinnedHeight()I
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v2

    .line 514
    .local v2, "topEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v2, :cond_a

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v3, :cond_c

    .line 515
    :cond_a
    const/4 v3, 0x0

    return v3

    .line 517
    :cond_c
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 518
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 521
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_23

    .line 522
    move-object v1, v0

    .line 525
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_23
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v3

    return v3
.end method

.method public hasPinnedHeadsUp()Z
    .registers 2

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSnoozed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    iget v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 328
    .local v1, "snoozedUntil":Ljava/lang/Long;
    if-eqz v1, :cond_23

    .line 329
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 331
    const/4 v2, 0x1

    return v2

    .line 333
    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method public isTrackingHeadsUp()Z
    .registers 2

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    return v0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 11
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 393
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 395
    :cond_e
    return-void

    .line 397
    :cond_f
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v5, :cond_4e

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 399
    .local v4, "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 401
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    .line 402
    .local v0, "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v0, :cond_2e

    .line 403
    move-object v4, v0

    .line 406
    .end local v0    # "groupSummary":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 407
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    aget v3, v5, v8

    .line 408
    .local v3, "minX":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTmpTwoArray:[I

    aget v5, v5, v8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 409
    .local v1, "maxX":I
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    .line 411
    .local v2, "maxY":I
    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 412
    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v3, v8, v1, v2}, Landroid/graphics/Region;->set(IIII)Z

    .line 392
    .end local v1    # "maxX":I
    .end local v2    # "maxY":I
    .end local v3    # "minX":I
    .end local v4    # "topEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4d
    :goto_4d
    return-void

    .line 413
    :cond_4e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-nez v5, :cond_56

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    if-eqz v5, :cond_4d

    .line 414
    :cond_56
    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 415
    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_4d
.end method

.method public onExpandingFinished()V
    .registers 4

    .prologue
    .line 473
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    if-eqz v2, :cond_10

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 475
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    .line 484
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 472
    return-void

    .line 477
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 478
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 480
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_16
.end method

.method public onReorderingAllowed()V
    .registers 4

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 617
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 619
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_6

    .line 622
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveWhenReorderingAllowed:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 615
    return-void
.end method

.method public releaseAllImmediately()V
    .registers 5

    .prologue
    .line 310
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    goto :goto_f

    .line 308
    .end local v0    # "key":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public releaseImmediately(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    .line 318
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_7

    .line 319
    return-void

    .line 321
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 322
    .local v1, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 316
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoreEarliestRemovalTime"    # Z

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->wasShownLongEnough(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_d

    .line 279
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAsSoonAsPossible()V

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 164
    return-void
.end method

.method public setExpanded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "expanded"    # Z

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 604
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-eq v1, p2, :cond_17

    .line 605
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 606
    if-eqz p2, :cond_18

    .line 607
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 602
    :cond_17
    :goto_17
    return-void

    .line 609
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_17
.end method

.method public setHeadsUpGoingAway(Z)V
    .registers 3
    .param p1, "headsUpGoingAway"    # Z

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    if-eq p1, v0, :cond_e

    .line 549
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    .line 550
    if-nez p1, :cond_b

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->waitForStatusBarLayout()V

    .line 553
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 547
    :cond_e
    return-void
.end method

.method public setIsExpanded(Z)V
    .registers 4
    .param p1, "isExpanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    if-eq p1, v0, :cond_10

    .line 497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mIsExpanded:Z

    .line 498
    if-eqz p1, :cond_10

    .line 500
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mWaitingOnCollapseWhenGoingAway:Z

    .line 501
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpGoingAway:Z

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateTouchableRegionListener()V

    .line 495
    :cond_10
    return-void
.end method

.method public setRemoteInputActive(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 6
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "remoteInputActive"    # Z

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 588
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eq v1, p2, :cond_17

    .line 589
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    .line 590
    if-eqz p2, :cond_18

    .line 591
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 586
    :cond_17
    :goto_17
    return-void

    .line 593
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_17
.end method

.method public setStatusBarState(I)V
    .registers 2
    .param p1, "statusBarState"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mStatusBarState:I

    .line 629
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .registers 2
    .param p1, "trackingHeadsUp"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z

    .line 487
    return-void
.end method

.method public setUser(I)V
    .registers 2
    .param p1, "user"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    .line 419
    return-void
.end method

.method public setVisualStabilityManager(Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .registers 2
    .param p1, "visualStabilityManager"    # Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 625
    return-void
.end method

.method public shouldSwallowClick(Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 386
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mClock:Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    .line 387
    const/4 v1, 0x1

    return v1

    .line 389
    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 3
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 179
    return-void
.end method

.method public snooze()V
    .registers 11

    .prologue
    .line 339
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 341
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snoozeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 342
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 345
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3e
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mReleaseOnExpandFinish:Z

    .line 338
    return-void
.end method

.method public unpinAll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 466
    .local v0, "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 468
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    goto :goto_b

    .line 463
    .end local v0    # "entry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .end local v1    # "key":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method public updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 6
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "alert"    # Z

    .prologue
    .line 192
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->sendAccessibilityEvent(I)V

    .line 194
    if-eqz p2, :cond_20

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHeadsUpEntries:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .line 196
    .local v0, "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    if-nez v0, :cond_16

    .line 199
    return-void

    .line 201
    :cond_16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry()V

    .line 202
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Z)V

    .line 189
    .end local v0    # "headsUpEntry":Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    :cond_20
    return-void
.end method
