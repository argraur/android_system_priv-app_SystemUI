.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
.implements Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$1;,
        Lcom/android/systemui/statusbar/BaseStatusBar$2;,
        Lcom/android/systemui/statusbar/BaseStatusBar$3;,
        Lcom/android/systemui/statusbar/BaseStatusBar$4;,
        Lcom/android/systemui/statusbar/BaseStatusBar$5;,
        Lcom/android/systemui/statusbar/BaseStatusBar$6;,
        Lcom/android/systemui/statusbar/BaseStatusBar$7;,
        Lcom/android/systemui/statusbar/BaseStatusBar$8;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    }
.end annotation


# static fields
.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

.field public static final ENABLE_REMOTE_INPUT:Z

.field public static final FORCE_REMOTE_INPUT_HISTORY:Z


# instance fields
.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field protected mAllowLockscreenRemoteInput:Z

.field protected mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private mDensity:I

.field protected mDeviceInteractive:Z

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mFontScale:F

.field protected mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpTicker:Z

.field protected mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutDirection:I

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNonBlockablePkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field protected mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field protected mVrMode:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/BaseStatusBar;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/Notification;)V
    .registers 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->processForRemoteInput(Landroid/app/Notification;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "done"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    const-string/jumbo v0, "debug.enable_remote_input"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    .line 138
    const-string/jumbo v0, "debug.child_notifs"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 140
    const-string/jumbo v0, "debug.force_remoteinput_history"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    .line 141
    sput-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 187
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 188
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 194
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    .line 207
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    .line 215
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 217
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 226
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 227
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 250
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 273
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .line 286
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 297
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 314
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 326
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 512
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 589
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 603
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 602
    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1336
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 127
    return-void
.end method

.method private adminAllowsUnredactedNotifications(I)Z
    .registers 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1480
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    .line 1481
    return v1

    .line 1483
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1485
    .local v0, "dpmFlags":I
    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .registers 6
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2534
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2535
    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_11

    .line 2534
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 2535
    goto :goto_10
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 19
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 1074
    .local v12, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1075
    .local v11, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 1076
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    .line 1077
    .local v7, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    .line 1078
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1079
    .local v9, "pkg":Ljava/lang/String;
    move-object v4, v9

    .line 1080
    .local v4, "appname":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1081
    .local v10, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v2, -0x1

    .line 1084
    .local v2, "appUid":I
    const/16 v14, 0x2200

    .line 1083
    :try_start_32
    invoke-virtual {v11, v9, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1086
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_46

    .line 1087
    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1088
    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1089
    .local v10, "pkgicon":Landroid/graphics/drawable/Drawable;
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_46} :catch_a9

    .line 1096
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pkgicon":Landroid/graphics/drawable/Drawable;
    :cond_46
    :goto_46
    const v14, 0x7f1201af

    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    const v14, 0x7f1201b0

    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    const v14, 0x7f1201ba

    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1100
    .local v13, "settingsButton":Landroid/widget/TextView;
    if-ltz v2, :cond_af

    .line 1101
    move v3, v2

    .line 1102
    .local v3, "appUidF":I
    new-instance v14, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v9, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    const v14, 0x7f0f03a0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 1114
    .end local v3    # "appUidF":I
    :goto_7a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    .line 1115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v15

    .line 1114
    invoke-virtual {v7, v11, v12, v14, v15}, Lcom/android/systemui/statusbar/NotificationGuts;->bindImportance(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Ljava/util/Set;I)V

    .line 1117
    const v14, 0x7f1201bb

    invoke-virtual {v7, v14}, Lcom/android/systemui/statusbar/NotificationGuts;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1118
    .local v5, "doneButton":Landroid/widget/TextView;
    const v14, 0x7f0f03a1

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    .line 1119
    new-instance v14, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v7, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    return-void

    .line 1091
    .end local v5    # "doneButton":Landroid/widget/TextView;
    .end local v13    # "settingsButton":Landroid/widget/TextView;
    :catch_a9
    move-exception v6

    .line 1093
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10    # "pkgicon":Landroid/graphics/drawable/Drawable;
    goto :goto_46

    .line 1111
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "pkgicon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "settingsButton":Landroid/widget/TextView;
    :cond_af
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7a
.end method

.method private dismissPopups(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1236
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1235
    return-void
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 2631
    move-object v0, p0

    .line 2633
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_11

    .line 2638
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2640
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2639
    const/4 v4, 0x4

    .line 2638
    invoke-virtual {p0, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_16

    move-result-object v0

    .line 2645
    :cond_11
    :goto_11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    .line 2641
    :catch_16
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_11
.end method

.method private processForRemoteInput(Landroid/app/Notification;)V
    .registers 15
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v10, 0x0

    .line 1772
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-nez v9, :cond_6

    return-void

    .line 1774
    :cond_6
    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v9, :cond_62

    iget-object v9, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "android.wearable.EXTENSIONS"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 1775
    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v9, :cond_1e

    iget-object v9, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v9, v9

    if-nez v9, :cond_62

    .line 1776
    :cond_1e
    const/4 v7, 0x0

    .line 1777
    .local v7, "viableAction":Landroid/app/Notification$Action;
    new-instance v8, Landroid/app/Notification$WearableExtender;

    invoke-direct {v8, p1}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 1779
    .local v8, "we":Landroid/app/Notification$WearableExtender;
    invoke-virtual {v8}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v1

    .line 1780
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1782
    .local v3, "numActions":I
    const/4 v2, 0x0

    .end local v7    # "viableAction":Landroid/app/Notification$Action;
    .local v2, "i":I
    :goto_2d
    if-ge v2, v3, :cond_4f

    .line 1783
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 1784
    .local v0, "action":Landroid/app/Notification$Action;
    if-nez v0, :cond_3a

    .line 1782
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1787
    :cond_3a
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 1788
    .local v5, "remoteInputs":[Landroid/app/RemoteInput;
    if-eqz v5, :cond_37

    .line 1791
    array-length v11, v5

    move v9, v10

    :goto_42
    if-ge v9, v11, :cond_4d

    aget-object v6, v5, v9

    .line 1792
    .local v6, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    if-eqz v12, :cond_63

    .line 1793
    move-object v7, v0

    .line 1797
    .end local v6    # "ri":Landroid/app/RemoteInput;
    :cond_4d
    if-eqz v7, :cond_37

    .line 1802
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_4f
    if-eqz v7, :cond_62

    .line 1803
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1804
    .local v4, "rebuilder":Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/app/Notification$Action;

    aput-object v7, v9, v10

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 1805
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1771
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v2    # "i":I
    .end local v3    # "numActions":I
    .end local v4    # "rebuilder":Landroid/app/Notification$Builder;
    .end local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_62
    return-void

    .line 1791
    .restart local v0    # "action":Landroid/app/Notification$Action;
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .restart local v2    # "i":I
    .restart local v3    # "numActions":I
    .restart local v5    # "remoteInputs":[Landroid/app/RemoteInput;
    .restart local v6    # "ri":Landroid/app/RemoteInput;
    .restart local v8    # "we":Landroid/app/Notification$WearableExtender;
    :cond_63
    add-int/lit8 v9, v9, 0x1

    goto :goto_42
.end method

.method private saveImportanceCloseControls(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .registers 14
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;
    .param p4, "done"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1143
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 1144
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->saveImportance(Landroid/service/notification/StatusBarNotification;)V

    .line 1146
    new-array v3, v6, [I

    .line 1147
    .local v3, "rowLocation":[I
    new-array v2, v6, [I

    .line 1148
    .local v2, "doneLocation":[I
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    .line 1149
    invoke-virtual {p4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1151
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 1152
    .local v0, "centerX":I
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 1153
    .local v1, "centerY":I
    aget v6, v2, v7

    aget v7, v3, v7

    sub-int/2addr v6, v7

    add-int v4, v6, v0

    .line 1154
    .local v4, "x":I
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    add-int v5, v6, v1

    .line 1155
    .local v5, "y":I
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(II)V

    .line 1142
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string/jumbo v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 1037
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 1046
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V

    .line 1068
    const/4 v2, 0x0

    .line 1046
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1044
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .registers 6

    .prologue
    .line 689
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 690
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 691
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_2f

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 693
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    goto :goto_18

    .line 689
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "user$iterator":Ljava/util/Iterator;
    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2f
    monitor-exit v3

    .line 688
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 2346
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2347
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 2349
    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 2348
    const/4 v9, 0x1

    .line 2346
    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_48

    const/4 v4, 0x1

    .line 2350
    .local v4, "show":Z
    :goto_14
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2351
    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    const/4 v8, 0x0

    .line 2350
    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 2352
    .local v1, "dpmFlags":I
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_4a

    const/4 v0, 0x1

    .line 2355
    .local v0, "allowedByDpm":Z
    :goto_22
    if-eqz v4, :cond_4c

    .end local v0    # "allowedByDpm":Z
    :goto_24
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 2357
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v6, :cond_54

    .line 2358
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2359
    const-string/jumbo v7, "lock_screen_allow_remote_input"

    .line 2361
    iget v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 2358
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v2, 0x1

    .line 2363
    .local v2, "remoteInput":Z
    :goto_3d
    and-int/lit8 v6, v1, 0x40

    if-nez v6, :cond_50

    const/4 v3, 0x1

    .line 2365
    .local v3, "remoteInputDpm":Z
    :goto_42
    if-eqz v2, :cond_52

    .end local v3    # "remoteInputDpm":Z
    :goto_44
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    .line 2345
    .end local v2    # "remoteInput":Z
    :goto_47
    return-void

    .line 2346
    .end local v1    # "dpmFlags":I
    .end local v4    # "show":Z
    :cond_48
    const/4 v4, 0x0

    .restart local v4    # "show":Z
    goto :goto_14

    .line 2352
    .restart local v1    # "dpmFlags":I
    :cond_4a
    const/4 v0, 0x0

    .restart local v0    # "allowedByDpm":Z
    goto :goto_22

    :cond_4c
    move v0, v5

    .line 2355
    goto :goto_24

    .line 2358
    .end local v0    # "allowedByDpm":Z
    :cond_4e
    const/4 v2, 0x0

    .restart local v2    # "remoteInput":Z
    goto :goto_3d

    .line 2363
    :cond_50
    const/4 v3, 0x0

    .restart local v3    # "remoteInputDpm":Z
    goto :goto_42

    :cond_52
    move v3, v5

    .line 2365
    goto :goto_44

    .line 2367
    .end local v2    # "remoteInput":Z
    .end local v3    # "remoteInputDpm":Z
    :cond_54
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setLockScreenAllowRemoteInput(Z)V

    goto :goto_47
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .registers 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2480
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 2481
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 2482
    .local v0, "bigContentView":Landroid/widget/RemoteViews;
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 2483
    .local v3, "headsUpContentView":Landroid/widget/RemoteViews;
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 2486
    .local v4, "publicContentView":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2487
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 2488
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2489
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v6

    .line 2490
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2488
    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2492
    :cond_2a
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getHeadsUpContentView()Landroid/view/View;

    move-result-object v2

    .line 2493
    .local v2, "headsUpChild":Landroid/view/View;
    if-eqz v3, :cond_3d

    if-eqz v2, :cond_3d

    .line 2494
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2495
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2494
    invoke-virtual {v3, v5, v2, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2497
    :cond_3d
    if-eqz v4, :cond_54

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 2498
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2499
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2498
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2502
    :cond_54
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 2504
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2505
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 2479
    return-void
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2234
    if-nez p1, :cond_3

    .line 2235
    return-void

    .line 2238
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2233
    return-void
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1862
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .registers 3
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2049
    return-void
.end method

.method public animateCollapsePanels(IZZ)V
    .registers 4
    .param p1, "flags"    # I
    .param p2, "force"    # Z
    .param p3, "delayed"    # Z

    .prologue
    .line 2052
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x1

    .line 1014
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1015
    const v2, 0x10203b7

    .line 1014
    if-eq v1, v2, :cond_21

    .line 1017
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_21

    .line 1018
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v3, :cond_21

    .line 1019
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 1020
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 1024
    :cond_21
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_35

    .line 1025
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v2, v3, :cond_36

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v2, 0x7f12003a

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(ILjava/lang/Object;)V

    .line 1012
    :cond_35
    return-void

    .line 1025
    :cond_36
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method protected bindDismissListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .registers 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 982
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDismissListener(Landroid/view/View$OnClickListener;)V

    .line 981
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 3

    .prologue
    .line 1288
    const/16 v0, 0x3ff

    .line 1289
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1290
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1287
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_9

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 1401
    :cond_9
    return-void
.end method

.method public clearNotificationEffects()V
    .registers 3

    .prologue
    .line 2154
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2152
    :goto_5
    return-void

    .line 2155
    :catch_6
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .registers 2

    .prologue
    .line 1322
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 12
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v9, 0x0

    .line 2208
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2209
    .local v8, "n":Landroid/app/Notification;
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2209
    invoke-direct {v7, v1, v2, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2211
    .local v7, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2213
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 2214
    .local v3, "smallIcon":Landroid/graphics/drawable/Icon;
    if-nez v3, :cond_57

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No small icon in notification from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2217
    return-object v9

    .line 2219
    :cond_57
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2220
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 2221
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2223
    iget v4, v8, Landroid/app/Notification;->iconLevel:I

    .line 2224
    iget v5, v8, Landroid/app/Notification;->number:I

    .line 2225
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 2219
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2226
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2228
    return-object v9

    .line 2230
    :cond_8c
    return-object v7
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .registers 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    .line 2192
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->createIcon(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 2193
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v1, :cond_8

    .line 2194
    return-object v4

    .line 2198
    :cond_8
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2199
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2201
    return-object v4

    .line 2203
    :cond_2d
    return-object v0
.end method

.method public destroy()V
    .registers 4

    .prologue
    .line 2618
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2620
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2617
    :goto_c
    return-void

    .line 2621
    :catch_d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_c
.end method

.method protected dismissKeyboardShortcuts()V
    .registers 1

    .prologue
    .line 1398
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 1397
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 3

    .prologue
    .line 1295
    const/16 v0, 0x403

    .line 1296
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1297
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1294
    return-void
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .registers 3
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 941
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 940
    return-void
.end method

.method public dismissPopups()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1232
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups(IIZZ)V

    .line 1231
    return-void
.end method

.method public dismissPopups(IIZZ)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "resetGear"    # Z
    .param p4, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_a

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZ)V

    .line 1243
    :cond_a
    if-eqz p3, :cond_11

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedGearView(ZZ)V

    .line 1239
    :cond_11
    return-void
.end method

.method protected getActivityOptions()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 2099
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 2100
    .local v0, "options":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 2101
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 927
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method protected abstract getMaxKeyguardNotifications(Z)I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .registers 2

    .prologue
    .line 1159
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 12
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2169
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2171
    :try_start_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 2172
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    .line 2171
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_27

    .line 2168
    :goto_26
    return-void

    .line 2173
    :catch_27
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_26
.end method

.method protected handleVisibleToUserChanged(Z)V
    .registers 8
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 2129
    if-eqz p1, :cond_40

    .line 2130
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    .line 2132
    .local v3, "pinnedHeadsUp":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-nez v4, :cond_33

    .line 2133
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v4, :cond_17

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_31

    :cond_17
    const/4 v0, 0x1

    .line 2134
    .local v0, "clearNotificationEffects":Z
    :goto_18
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2135
    .local v2, "notificationLoad":I
    if-eqz v3, :cond_35

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPanelFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2136
    const/4 v2, 0x1

    .line 2140
    :goto_2b
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V

    .line 2127
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "pinnedHeadsUp":Z
    :goto_30
    return-void

    .line 2133
    .restart local v3    # "pinnedHeadsUp":Z
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_18

    .line 2132
    .end local v0    # "clearNotificationEffects":Z
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "clearNotificationEffects":Z
    goto :goto_18

    .line 2138
    .restart local v2    # "notificationLoad":I
    :cond_35
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "note_load"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2b

    .line 2144
    .end local v0    # "clearNotificationEffects":Z
    .end local v2    # "notificationLoad":I
    .end local v3    # "pinnedHeadsUp":Z
    :catch_3e
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_30

    .line 2142
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_40
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_45} :catch_3e

    goto :goto_30
.end method

.method public hideRecentApps(ZZ)V
    .registers 8
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1263
    const/16 v0, 0x3fc

    .line 1264
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1265
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_18

    move v3, v1

    .line 1266
    :goto_e
    if-eqz p2, :cond_1a

    .line 1265
    :goto_10
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1262
    return-void

    :cond_18
    move v3, v2

    .line 1265
    goto :goto_e

    :cond_1a
    move v1, v2

    .line 1266
    goto :goto_10
.end method

.method protected hideRecents(ZZ)V
    .registers 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_9

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1375
    :cond_9
    return-void
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .registers 34
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 1592
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v29

    .line 1591
    invoke-static/range {v28 .. v29}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 1594
    .local v21, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    .line 1596
    .local v25, "sbn":Landroid/service/notification/StatusBarNotification;
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_2f} :catch_64

    .line 1602
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    .line 1603
    .local v9, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    .line 1604
    .local v5, "bigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 1605
    .local v15, "headsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    move-object/from16 v22, v0

    .line 1607
    .local v22, "publicContentView":Landroid/widget/RemoteViews;
    if-nez v9, :cond_75

    .line 1608
    const-string/jumbo v28, "StatusBar"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "no contentView for: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const/16 v28, 0x0

    return v28

    .line 1597
    .end local v5    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v9    # "contentView":Landroid/widget/RemoteViews;
    .end local v15    # "headsUpContentView":Landroid/widget/RemoteViews;
    .end local v22    # "publicContentView":Landroid/widget/RemoteViews;
    :catch_64
    move-exception v12

    .line 1598
    .local v12, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v28, "StatusBar"

    const-string/jumbo v29, "Unable to get notification remote views"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1599
    const/16 v28, 0x0

    return v28

    .line 1620
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v9    # "contentView":Landroid/widget/RemoteViews;
    .restart local v15    # "headsUpContentView":Landroid/widget/RemoteViews;
    .restart local v22    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_75
    const/4 v14, 0x0

    .line 1621
    .local v14, "hasUserChangedExpansion":Z
    const/16 v26, 0x0

    .line 1622
    .local v26, "userExpanded":Z
    const/16 v27, 0x0

    .line 1624
    .local v27, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20e

    .line 1625
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v24, v0

    .line 1626
    .local v24, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v14

    .line 1627
    .local v14, "hasUserChangedExpansion":Z
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v26

    .line 1628
    .local v26, "userExpanded":Z
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v27

    .line 1629
    .local v27, "userLocked":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 1630
    if-eqz v14, :cond_a0

    .line 1631
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1665
    .end local v14    # "hasUserChangedExpansion":Z
    .end local v26    # "userExpanded":Z
    .end local v27    # "userLocked":Z
    :cond_a0
    :goto_a0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindDismissListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1671
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    .line 1672
    .local v7, "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    .line 1674
    .local v8, "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v28, 0x60000

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1675
    sget-boolean v28, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_REMOTE_INPUT:Z

    if-eqz v28, :cond_cc

    .line 1676
    const/high16 v28, 0x20000

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1679
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationClicker:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 1682
    const/4 v10, 0x0

    .line 1683
    .local v10, "contentViewLocal":Landroid/view/View;
    const/4 v6, 0x0

    .line 1684
    .local v6, "bigContentViewLocal":Landroid/view/View;
    const/16 v16, 0x0

    .line 1685
    .local v16, "headsUpContentViewLocal":Landroid/view/View;
    const/16 v23, 0x0

    .line 1688
    .local v23, "publicViewLocal":Landroid/view/View;
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v28

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v29, v0

    .line 1687
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v7, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v10

    .line 1691
    .local v10, "contentViewLocal":Landroid/view/View;
    if-eqz v5, :cond_11b

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v28

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v29, v0

    .line 1692
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v7, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v6

    .line 1697
    .end local v6    # "bigContentViewLocal":Landroid/view/View;
    :cond_11b
    if-eqz v15, :cond_139

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v28

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v29, v0

    .line 1698
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v15, v0, v7, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v16

    .line 1703
    .end local v16    # "headsUpContentViewLocal":Landroid/view/View;
    :cond_139
    if-eqz v22, :cond_159

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v28

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v29, v0

    .line 1704
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v8, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v23

    .line 1709
    .end local v23    # "publicViewLocal":Landroid/view/View;
    :cond_159
    if-eqz v10, :cond_165

    .line 1710
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1711
    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1713
    :cond_165
    if-eqz v6, :cond_171

    .line 1714
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1715
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 1717
    :cond_171
    if-eqz v16, :cond_181

    .line 1718
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1719
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 1721
    :cond_181
    if-eqz v23, :cond_191

    .line 1722
    const/16 v28, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1723
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_191} :catch_298

    .line 1734
    :cond_191
    :try_start_191
    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 1735
    .local v19, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_1ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_191 .. :try_end_1ad} :catch_2e2

    .line 1739
    .end local v19    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1ad
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v28, v0

    if-nez v28, :cond_307

    const/16 v28, 0x1

    :goto_1c1
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 1748
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1749
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1750
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    if-eqz v6, :cond_30b

    const/16 v28, 0x1

    :goto_1e4
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    .line 1752
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1755
    if-eqz v14, :cond_1fd

    .line 1758
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1760
    :cond_1fd
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1761
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1762
    const/16 v28, 0x1

    return v28

    .line 1635
    .end local v7    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v8    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v10    # "contentViewLocal":Landroid/view/View;
    .end local v24    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v14, "hasUserChangedExpansion":Z
    .local v26, "userExpanded":Z
    .local v27, "userLocked":Z
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 1636
    const-string/jumbo v29, "layout_inflater"

    .line 1635
    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 1637
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const v28, 0x7f0400f2

    .line 1638
    const/16 v29, 0x0

    .line 1637
    move-object/from16 v0, v18

    move/from16 v1, v28

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1639
    .restart local v24    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    .line 1643
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    .line 1650
    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1651
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 1654
    .local v4, "appname":Ljava/lang/String;
    const/16 v28, 0x2200

    .line 1653
    :try_start_279
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 1656
    .restart local v19    # "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v19, :cond_291

    .line 1657
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_290
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_279 .. :try_end_290} :catch_30f

    move-result-object v4

    .line 1662
    .end local v19    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_291
    :goto_291
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 1726
    .end local v4    # "appname":Ljava/lang/String;
    .end local v14    # "hasUserChangedExpansion":Z
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v26    # "userExpanded":Z
    .end local v27    # "userLocked":Z
    .restart local v7    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v8    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    :catch_298
    move-exception v12

    .line 1727
    .restart local v12    # "e":Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "/0x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1728
    .local v17, "ident":Ljava/lang/String;
    const-string/jumbo v28, "StatusBar"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "couldn\'t inflate view for notification "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    const/16 v28, 0x0

    return v28

    .line 1736
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "ident":Ljava/lang/String;
    .restart local v10    # "contentViewLocal":Landroid/view/View;
    :catch_2e2
    move-exception v13

    .line 1737
    .local v13, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v28, "StatusBar"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Failed looking up ApplicationInfo for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1ad

    .line 1739
    .end local v13    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_307
    const/16 v28, 0x0

    goto/16 :goto_1c1

    .line 1750
    :cond_30b
    const/16 v28, 0x0

    goto/16 :goto_1e4

    .line 1659
    .end local v7    # "contentContainer":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v8    # "contentContainerPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v10    # "contentViewLocal":Landroid/view/View;
    .restart local v4    # "appname":Ljava/lang/String;
    .restart local v14    # "hasUserChangedExpansion":Z
    .restart local v18    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "pkg":Ljava/lang/String;
    .restart local v26    # "userExpanded":Z
    .restart local v27    # "userLocked":Z
    :catch_30f
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_291
.end method

.method public isBouncerShowing()Z
    .registers 2

    .prologue
    .line 2614
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method public isCollapsing()Z
    .registers 2

    .prologue
    .line 1866
    const/4 v0, 0x0

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 920
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 921
    const/4 v2, -0x1

    if-eq p1, v2, :cond_f

    :try_start_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13

    move-result-object v2

    if-eqz v2, :cond_11

    :cond_f
    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 920
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isDeviceInVrMode()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 4

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_14

    .line 2662
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    .line 2663
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2662
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2664
    const/4 v0, 0x0

    return v0

    .line 2666
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isLockscreenPublicMode()Z
    .registers 2

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 5
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1032
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v1

    .line 1033
    const v2, 0x10203ba

    .line 1032
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    .line 1031
    :cond_15
    return v0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 898
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 899
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 904
    .local v0, "notificationUserId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public abstract isPanelFullyCollapsed()Z
.end method

.method protected abstract isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2649
    :goto_5
    return-void

    .line 2652
    :catch_6
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public abstract maybeEscalateHeadsUp()V
.end method

.method protected notifyHeadsUpScreenOff()V
    .registers 1

    .prologue
    .line 2530
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->maybeEscalateHeadsUp()V

    .line 2529
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .registers 13

    .prologue
    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 843
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 844
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 843
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_105

    .line 845
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 847
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "insecure lockscreen, skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 849
    const-string/jumbo v7, "show_note_about_notification_hiding"

    .line 848
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 850
    return-void

    .line 852
    :cond_3e
    const-string/jumbo v6, "StatusBar"

    const-string/jumbo v7, "disabling lockecreen notifications and alerting the user"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 855
    const-string/jumbo v7, "lock_screen_show_notifications"

    .line 854
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 857
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 856
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 860
    .local v4, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 861
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 860
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 863
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 864
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 863
    invoke-static {v6, v9, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 867
    .local v5, "setupIntent":Landroid/app/PendingIntent;
    const v1, 0x106005b

    .line 868
    .local v1, "colorRes":I
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    const v7, 0x7f02007c

    .line 868
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 870
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f033d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 868
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 871
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f033e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 868
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 874
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x106005b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 868
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 877
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f033f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 876
    const v8, 0x7f020088

    .line 868
    invoke-virtual {v6, v8, v7, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 880
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0340

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 879
    const v8, 0x7f020113

    .line 868
    invoke-virtual {v6, v8, v7, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 882
    .local v3, "note":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 885
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 886
    .local v2, "noMan":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 842
    .end local v0    # "cancelIntent":Landroid/app/PendingIntent;
    .end local v1    # "colorRes":I
    .end local v2    # "noMan":Landroid/app/NotificationManager;
    .end local v3    # "note":Landroid/app/Notification$Builder;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "setupIntent":Landroid/app/PendingIntent;
    :cond_105
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 946
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 947
    .local v3, "locale":Ljava/util/Locale;
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 948
    .local v2, "ld":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 949
    .local v1, "fontScale":F
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 950
    .local v0, "density":I
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    if-ne v0, v4, :cond_1e

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_25

    .line 951
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onDensityOrFontScaleChanged()V

    .line 952
    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    .line 953
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 955
    :cond_25
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-eq v2, v4, :cond_38

    .line 961
    :cond_31
    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 962
    iput v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 963
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 945
    :cond_38
    return-void
.end method

.method protected onDensityOrFontScaleChanged()V
    .registers 7

    .prologue
    .line 968
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 969
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 970
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 971
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-ne v4, v5, :cond_3a

    const/4 v2, 0x1

    .line 972
    .local v2, "exposedGuts":Z
    :goto_1e
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->reInflateViews()V

    .line 973
    if-eqz v2, :cond_32

    .line 974
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 975
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 977
    :cond_32
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 971
    .end local v2    # "exposedGuts":Z
    :cond_3a
    const/4 v2, 0x0

    .restart local v2    # "exposedGuts":Z
    goto :goto_1e

    .line 967
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2    # "exposedGuts":Z
    :cond_3c
    return-void
.end method

.method public onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .registers 3
    .param p1, "clickedEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "nowExpanded"    # Z

    .prologue
    .line 1550
    return-void
.end method

.method public onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 5
    .param p1, "guts"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    const/4 v2, 0x0

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 1251
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1249
    return-void
.end method

.method protected onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .registers 2
    .param p1, "dismissAction"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 1542
    return-void
.end method

.method protected onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "clickedView"    # Landroid/view/View;

    .prologue
    .line 1544
    return-void
.end method

.method protected onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "clicked"    # Landroid/view/View;

    .prologue
    .line 1547
    return-void
.end method

.method public onPanelLaidOut()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1531
    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-ne v2, v3, :cond_13

    .line 1534
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v0

    .line 1535
    .local v0, "maxBefore":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v1

    .line 1536
    .local v1, "maxNotifications":I
    if-eq v0, v1, :cond_13

    .line 1537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    .line 1530
    .end local v0    # "maxBefore":I
    .end local v1    # "maxNotifications":I
    :cond_13
    return-void
.end method

.method public onSecureLockScreen()Z
    .registers 2

    .prologue
    .line 1512
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    return v0
.end method

.method protected onWorkChallengeUnlocked()V
    .registers 1

    .prologue
    .line 1435
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .registers 8
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 2056
    if-eqz p1, :cond_b

    .line 2058
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 2055
    :cond_b
    :goto_b
    return-void

    .line 2059
    :catch_c
    move-exception v0

    .line 2060
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method protected performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 9
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    .line 996
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    .line 998
    .local v4, "userId":I
    :try_start_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v5, v2, v3, v1, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 999
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v5, :cond_2e

    .line 1000
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 999
    if-eqz v5, :cond_2e

    .line 1001
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1003
    :cond_2e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_36} :catch_37

    .line 992
    :goto_36
    return-void

    .line 1005
    :catch_37
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_36
.end method

.method public preloadRecentApps()V
    .registers 3

    .prologue
    .line 1281
    const/16 v0, 0x3fe

    .line 1282
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1283
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1280
    return-void
.end method

.method protected preloadRecents()V
    .registers 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_9

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1387
    :cond_9
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v4, 0x0

    .line 2179
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2180
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_24

    .line 2181
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-object v4

    .line 2184
    :cond_24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2185
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method protected sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1326
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1328
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 1325
    :cond_d
    :goto_d
    return-void

    .line 1329
    :catch_e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_d
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .registers 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 2607
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 2606
    return-void
.end method

.method protected abstract setHeadsUpUser(I)V
.end method

.method protected setLockScreenAllowRemoteInput(Z)V
    .registers 2
    .param p1, "allowLockscreenRemoteInput"    # Z

    .prologue
    .line 2342
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllowLockscreenRemoteInput:Z

    .line 2341
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .registers 2
    .param p1, "publicMode"    # Z

    .prologue
    .line 1428
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1427
    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 908
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setNotificationsShown([Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1, p1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 911
    :goto_5
    return-void

    .line 914
    :catch_6
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected setShowLockscreenNotifications(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 2338
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 2337
    return-void
.end method

.method protected setZenMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2332
    :cond_7
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 2333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2330
    return-void
.end method

.method public shouldHideNotifications(I)Z
    .registers 4
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsNotificationsInPublic(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1504
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    .line 1503
    :cond_11
    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .registers 3
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 2539
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .registers 9
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2543
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2544
    :cond_c
    return v5

    .line 2547
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2549
    return v5

    .line 2552
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 2554
    .local v1, "inUse":Z
    if-eqz v1, :cond_26

    :try_start_1e
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2c

    move-result v3

    if-eqz v3, :cond_2a

    :cond_26
    const/4 v1, 0x0

    .line 2559
    .end local v1    # "inUse":Z
    :goto_27
    if-nez v1, :cond_37

    .line 2563
    return v5

    .line 2554
    .restart local v1    # "inUse":Z
    :cond_2a
    const/4 v1, 0x1

    .local v1, "inUse":Z
    goto :goto_27

    .line 2555
    .local v1, "inUse":Z
    :catch_2c
    move-exception v0

    .line 2556
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "StatusBar"

    const-string/jumbo v4, "failed to query dream manager"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 2566
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "inUse":Z
    :cond_37
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressScreenOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2568
    return v5

    .line 2571
    :cond_44
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 2573
    return v5

    .line 2576
    :cond_4b
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2578
    return v5

    .line 2581
    :cond_52
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_60

    .line 2583
    return v5

    .line 2586
    :cond_60
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_80

    .line 2587
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2589
    return v5

    .line 2592
    :cond_71
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2593
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 2592
    :cond_7f
    return v2

    .line 2597
    :cond_80
    return v2
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x0

    .line 2327
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public showAssistDisclosure()V
    .registers 2

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_9

    .line 2672
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 2670
    :cond_9
    return-void
.end method

.method public showRecentApps(ZZ)V
    .registers 8
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1256
    const/16 v0, 0x3fb

    .line 1257
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1258
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_18

    move v3, v1

    :goto_e
    if-eqz p2, :cond_1a

    :goto_10
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1255
    return-void

    :cond_18
    move v3, v2

    .line 1258
    goto :goto_e

    :cond_1a
    move v1, v2

    goto :goto_10
.end method

.method protected showRecents(ZZ)V
    .registers 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_f

    .line 1370
    const-string/jumbo v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->showRecents(ZZ)V

    .line 1368
    :cond_f
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .registers 2

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_9

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 1407
    :cond_9
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .registers 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_9

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1413
    :cond_9
    return-void
.end method

.method public start()V
    .registers 27

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 701
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 704
    const-string/jumbo v3, "device_policy"

    .line 703
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 706
    new-instance v2, Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 708
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 712
    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 711
    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 716
    const-string/jumbo v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 717
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 716
    const/4 v11, 0x1

    .line 715
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 719
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 719
    const/4 v11, 0x0

    .line 718
    invoke-virtual {v2, v3, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 722
    const-string/jumbo v3, "lock_screen_show_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 723
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 722
    const/4 v11, 0x0

    .line 724
    const/4 v12, -0x1

    .line 721
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 725
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_LOCK_SCREEN_ALLOW_REMOTE_INPUT:Z

    if-eqz v2, :cond_d4

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 727
    const-string/jumbo v3, "lock_screen_allow_remote_input"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 729
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 728
    const/4 v11, 0x0

    .line 730
    const/4 v12, -0x1

    .line 726
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 733
    :cond_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 734
    const-string/jumbo v3, "lock_screen_allow_private_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 736
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 735
    const/4 v11, 0x1

    .line 737
    const/4 v12, -0x1

    .line 733
    invoke-virtual {v2, v3, v11, v10, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 740
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 739
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 742
    const-class v2, Lcom/android/systemui/recents/Recents;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/RecentsComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 745
    .local v18, "currentConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 747
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 748
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDensity:I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 752
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 755
    new-instance v2, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 757
    const/16 v2, 0x9

    new-array v6, v2, [I

    .line 758
    .local v6, "switches":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v7, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v4, "iconSlots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v5, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 762
    .local v8, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 764
    .local v9, "dockedStackBounds":Landroid/graphics/Rect;
    :try_start_190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_19b} :catch_319

    .line 770
    :goto_19b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 773
    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x6

    aget v3, v6, v3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IIZ)V

    .line 774
    const/4 v2, 0x1

    aget v11, v6, v2

    const/4 v2, 0x7

    aget v12, v6, v2

    const/16 v2, 0x8

    aget v13, v6, v2

    const/4 v14, -0x1

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 776
    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_20e

    const/4 v2, 0x1

    :goto_1cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 778
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/4 v3, 0x3

    aget v10, v6, v3

    const/4 v3, 0x4

    aget v11, v6, v3

    const/4 v3, 0x5

    aget v3, v6, v3

    if-eqz v3, :cond_210

    const/4 v3, 0x1

    :goto_1e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v11, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 781
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 782
    .local v17, "N":I
    const/16 v24, 0x0

    .line 783
    .local v24, "viewIndex":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1f0
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_212

    .line 784
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 783
    add-int/lit8 v22, v22, 0x1

    goto :goto_1f0

    .line 776
    .end local v17    # "N":I
    .end local v22    # "i":I
    .end local v24    # "viewIndex":I
    :cond_20e
    const/4 v2, 0x0

    goto :goto_1cb

    .line 778
    :cond_210
    const/4 v3, 0x0

    goto :goto_1e3

    .line 789
    .restart local v17    # "N":I
    .restart local v22    # "i":I
    .restart local v24    # "viewIndex":I
    :cond_212
    :try_start_212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 790
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v11, -0x1

    .line 789
    invoke-virtual {v2, v3, v10, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_233
    .catch Landroid/os/RemoteException; {:try_start_212 .. :try_end_233} :catch_2ed

    .line 808
    :goto_233
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 809
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 811
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 812
    .local v21, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 818
    .local v23, "internalFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_cancel"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string/jumbo v2, "com.android.systemui.statusbar.banner_action_setup"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v10, "com.android.systemui.permission.SELF"

    const/4 v11, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 823
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 825
    .local v13, "allUsersFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 824
    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 827
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 826
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 830
    const-string/jumbo v2, "vrmanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v25

    .line 832
    .local v25, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_2c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_2cd
    .catch Landroid/os/RemoteException; {:try_start_2c4 .. :try_end_2cd} :catch_2fb

    .line 837
    :goto_2cd
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNonBlockablePkgs:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 839
    const v10, 0x1070053

    .line 838
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 699
    return-void

    .line 792
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "internalFilter":Landroid/content/IntentFilter;
    .end local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_2ed
    move-exception v19

    .line 793
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "Unable to register notification listener"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_233

    .line 833
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .restart local v21    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "internalFilter":Landroid/content/IntentFilter;
    .restart local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_2fb
    move-exception v19

    .line 834
    .restart local v19    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cd

    .line 766
    .end local v13    # "allUsersFilter":Landroid/content/IntentFilter;
    .end local v17    # "N":I
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v21    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "i":I
    .end local v23    # "internalFilter":Landroid/content/IntentFilter;
    .end local v24    # "viewIndex":I
    .end local v25    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_319
    move-exception v20

    .local v20, "ex":Landroid/os/RemoteException;
    goto/16 :goto_19b
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    if-eqz v0, :cond_9

    .line 2679
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 2677
    :cond_9
    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    .line 1813
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 1814
    .local v1, "keyguardShowing":Z
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1815
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1816
    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1815
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    .line 1817
    :goto_1f
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$14;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$14;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZZLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 1810
    return-void

    .line 1814
    :cond_28
    const/4 v0, 0x0

    .local v0, "afterKeyguardGone":Z
    goto :goto_1f
.end method

.method protected startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "intendSender"    # Landroid/content/IntentSender;
    .param p3, "notificationKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2067
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5, v5, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v3

    .line 2069
    .local v3, "newIntent":Landroid/content/Intent;
    if-nez v3, :cond_b

    .line 2070
    return v6

    .line 2072
    :cond_b
    new-instance v0, Landroid/content/Intent;

    .line 2073
    const-string/jumbo v4, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 2072
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v0, "callBackIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2075
    const-string/jumbo v4, "android.intent.extra.INDEX"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2076
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2079
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2082
    const/high16 v5, 0x54000000

    .line 2078
    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2086
    .local v1, "callBackPendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    .line 2087
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    .line 2085
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2089
    :try_start_3a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_43

    .line 2093
    :goto_41
    const/4 v4, 0x1

    return v4

    .line 2090
    :catch_43
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_41
.end method

.method protected toggleKeyboardShortcuts(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->toggle(Landroid/content/Context;I)V

    .line 1393
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .prologue
    .line 1302
    const/16 v0, 0x402

    .line 1303
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1304
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1301
    return-void
.end method

.method public toggleRecentApps()V
    .registers 1

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 1270
    return-void
.end method

.method protected toggleRecents()V
    .registers 3

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_b

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;)V

    .line 1381
    :cond_b
    return-void
.end method

.method public toggleSplitScreen()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 1276
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleSplitScreenMode(II)V

    .line 1275
    return-void
.end method

.method protected abstract toggleSplitScreenMode(II)V
.end method

.method protected abstract updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 21
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2383
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 2384
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v12

    .line 2385
    .local v12, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v12, :cond_f

    .line 2386
    return-void

    .line 2388
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRemoteInputEntriesToRemoveOnCollapse:Landroid/util/ArraySet;

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2392
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 2393
    .local v14, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2397
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->cacheContentViews(Landroid/content/Context;Landroid/app/Notification;)Z
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_35} :catch_9f

    move-result v10

    .line 2402
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v16

    .line 2403
    .local v16, "shouldPeek":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v9

    .line 2410
    .local v9, "alertAgain":Z
    iget-object v15, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2411
    .local v15, "oldNotification":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v12, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2414
    const/16 v17, 0x0

    .line 2415
    .local v17, "updateSuccessful":Z
    if-eqz v10, :cond_b4

    .line 2418
    :try_start_55
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_ab

    .line 2420
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2421
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 2422
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2423
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 2424
    iget v6, v14, Landroid/app/Notification;->iconLevel:I

    .line 2425
    iget v7, v14, Landroid/app/Notification;->number:I

    .line 2426
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    .line 2420
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2427
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2428
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 2429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_9e} :catch_123

    .line 2430
    return-void

    .line 2398
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v9    # "alertAgain":Z
    .end local v15    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    .end local v16    # "shouldPeek":Z
    .end local v17    # "updateSuccessful":Z
    :catch_9f
    move-exception v11

    .line 2399
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "StatusBar"

    const-string/jumbo v4, "Unable to get notification remote views"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2400
    const/4 v10, 0x0

    .local v10, "applyInPlace":Z
    goto :goto_36

    .line 2433
    .end local v10    # "applyInPlace":Z
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "alertAgain":Z
    .restart local v15    # "oldNotification":Landroid/service/notification/StatusBarNotification;
    .restart local v16    # "shouldPeek":Z
    .restart local v17    # "updateSuccessful":Z
    :cond_ab
    :try_start_ab
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_b2
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_b2} :catch_123

    .line 2434
    const/16 v17, 0x1

    .line 2442
    :cond_b4
    :goto_b4
    if-nez v17, :cond_106

    .line 2444
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 2445
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 2446
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2447
    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 2448
    iget v6, v14, Landroid/app/Notification;->iconLevel:I

    .line 2449
    iget v7, v14, Landroid/app/Notification;->number:I

    .line 2450
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    .line 2444
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 2451
    .restart local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v14}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2452
    iget-object v3, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v3

    if-nez v3, :cond_106

    .line 2454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t update remote views for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 2458
    .end local v2    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_106
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v12, v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    .line 2459
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2461
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 2464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v4, v12, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 2473
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 2380
    return-void

    .line 2436
    :catch_123
    move-exception v11

    .line 2438
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t reapply views for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2439
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b4
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updatePublicContentView(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .registers 11
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const v7, 0x1020016

    .line 2510
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    .line 2511
    .local v3, "publicContentView":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    .line 2512
    .local v1, "inflatedView":Landroid/view/View;
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    if-eqz v5, :cond_3f

    if-eqz v3, :cond_3f

    if-eqz v1, :cond_3f

    .line 2514
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v0, 0x0

    .line 2515
    .local v0, "disabledByPolicy":Z
    :goto_1e
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_42

    .line 2516
    const v5, 0x104014e

    .line 2515
    :goto_25
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2518
    .local v2, "notificationHiddenText":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2519
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v4, :cond_3f

    .line 2520
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2509
    .end local v0    # "disabledByPolicy":Z
    .end local v2    # "notificationHiddenText":Ljava/lang/String;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :cond_3f
    :goto_3f
    return-void

    .line 2514
    :cond_40
    const/4 v0, 0x1

    .restart local v0    # "disabledByPolicy":Z
    goto :goto_1e

    .line 2517
    :cond_42
    const v5, 0x104014d

    goto :goto_25

    .line 2521
    .restart local v2    # "notificationHiddenText":Ljava/lang/String;
    .restart local v4    # "titleView":Landroid/widget/TextView;
    :cond_46
    invoke-virtual {v3, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2522
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    .line 2523
    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 2522
    invoke-virtual {v3, v5, v1, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2524
    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_3f
.end method

.method protected updateRowStates()V
    .registers 23

    .prologue
    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 2256
    .local v3, "N":I
    const/16 v17, 0x0

    .line 2257
    .local v17, "visibleNotifications":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_53

    const/4 v11, 0x1

    .line 2258
    .local v11, "onKeyguard":Z
    :goto_28
    const/4 v9, 0x0

    .line 2259
    .local v9, "maxNotifications":I
    if-eqz v11, :cond_35

    .line 2260
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications(Z)I

    move-result v9

    .line 2262
    :cond_35
    new-instance v15, Ljava/util/Stack;

    invoke-direct {v15}, Ljava/util/Stack;-><init>()V

    .line 2263
    .local v15, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    add-int/lit8 v8, v3, -0x1

    .local v8, "i":I
    :goto_3c
    if-ltz v8, :cond_5b

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2265
    .local v4, "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v19, v0

    if-nez v19, :cond_55

    .line 2263
    .end local v4    # "child":Landroid/view/View;
    :goto_50
    add-int/lit8 v8, v8, -0x1

    goto :goto_3c

    .line 2257
    .end local v8    # "i":I
    .end local v9    # "maxNotifications":I
    .end local v11    # "onKeyguard":Z
    .end local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_53
    const/4 v11, 0x0

    goto :goto_28

    .line 2268
    .restart local v4    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v9    # "maxNotifications":I
    .restart local v11    # "onKeyguard":Z
    .restart local v15    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    :cond_55
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v4    # "child":Landroid/view/View;
    invoke-virtual {v15, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 2270
    :cond_5b
    invoke-virtual {v15}, Ljava/util/Stack;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_18e

    .line 2271
    invoke-virtual {v15}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2272
    .local v12, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v7

    .line 2273
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    .line 2274
    .local v5, "childNotification":Z
    if-eqz v11, :cond_11e

    .line 2275
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 2280
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v19, v0

    .line 2281
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    .line 2280
    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    if-eqz v19, :cond_139

    .line 2281
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v19

    if-eqz v19, :cond_135

    const/16 v16, 0x0

    .line 2282
    .local v16, "suppressedSummary":Z
    :goto_9e
    if-eqz v5, :cond_140

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v19

    if-nez v19, :cond_13d

    const/4 v6, 0x1

    .line 2285
    .local v6, "childWithVisibleSummary":Z
    :goto_b5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    .line 2286
    .local v13, "showOnKeyguard":Z
    if-nez v16, :cond_149

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v19

    if-eqz v19, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v19, v0

    if-eqz v19, :cond_149

    .line 2287
    :cond_d1
    if-eqz v11, :cond_d5

    if-eqz v6, :cond_143

    .line 2294
    :cond_d5
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16a

    const/16 v18, 0x1

    .line 2295
    .local v18, "wasGone":Z
    :goto_e7
    if-eqz v18, :cond_f2

    .line 2296
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 2298
    :cond_f2
    if-nez v5, :cond_fe

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v19

    if-eqz v19, :cond_16e

    .line 2307
    .end local v18    # "wasGone":Z
    :cond_fe
    :goto_fe
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v19

    if-eqz v19, :cond_5b

    .line 2309
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v10

    .line 2310
    .local v10, "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    .line 2311
    .local v14, "size":I
    add-int/lit8 v8, v14, -0x1

    :goto_10e
    if-ltz v8, :cond_5b

    .line 2312
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    add-int/lit8 v8, v8, -0x1

    goto :goto_10e

    .line 2277
    .end local v6    # "childWithVisibleSummary":Z
    .end local v10    # "notificationChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v13    # "showOnKeyguard":Z
    .end local v14    # "size":I
    .end local v16    # "suppressedSummary":Z
    :cond_11e
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    .line 2278
    if-nez v17, :cond_129

    if-eqz v5, :cond_132

    :cond_129
    const/16 v19, 0x0

    :goto_12b
    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto/16 :goto_82

    :cond_132
    const/16 v19, 0x1

    goto :goto_12b

    .line 2281
    :cond_135
    const/16 v16, 0x1

    .restart local v16    # "suppressedSummary":Z
    goto/16 :goto_9e

    .line 2280
    .end local v16    # "suppressedSummary":Z
    :cond_139
    const/16 v16, 0x0

    .restart local v16    # "suppressedSummary":Z
    goto/16 :goto_9e

    .line 2283
    :cond_13d
    const/4 v6, 0x0

    .restart local v6    # "childWithVisibleSummary":Z
    goto/16 :goto_b5

    .line 2282
    .end local v6    # "childWithVisibleSummary":Z
    :cond_140
    const/4 v6, 0x0

    .restart local v6    # "childWithVisibleSummary":Z
    goto/16 :goto_b5

    .line 2288
    .restart local v13    # "showOnKeyguard":Z
    :cond_143
    move/from16 v0, v17

    if-ge v0, v9, :cond_149

    if-nez v13, :cond_d5

    .line 2289
    :cond_149
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 2290
    if-eqz v11, :cond_fe

    if-eqz v13, :cond_fe

    if-nez v5, :cond_fe

    if-nez v16, :cond_fe

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_fe

    .line 2294
    :cond_16a
    const/16 v18, 0x0

    goto/16 :goto_e7

    .line 2299
    .restart local v18    # "wasGone":Z
    :cond_16e
    if-eqz v18, :cond_187

    .line 2301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    .line 2302
    if-eqz v13, :cond_18b

    const/16 v19, 0x0

    .line 2301
    :goto_17e
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 2304
    :cond_187
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_fe

    .line 2302
    :cond_18b
    const/16 v19, 0x1

    goto :goto_17e

    .line 2317
    .end local v5    # "childNotification":Z
    .end local v6    # "childWithVisibleSummary":Z
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v13    # "showOnKeyguard":Z
    .end local v16    # "suppressedSummary":Z
    .end local v18    # "wasGone":Z
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v20, v0

    if-eqz v11, :cond_204

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v19

    if-lez v19, :cond_201

    const/16 v19, 0x1

    .line 2317
    :goto_1a8
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateOverflowContainerVisibility(Z)V

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x2

    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v20, v0

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x3

    .line 2322
    invoke-virtual/range {v19 .. v21}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2251
    return-void

    .line 2318
    :cond_201
    const/16 v19, 0x0

    goto :goto_1a8

    .line 2317
    :cond_204
    const/16 v19, 0x0

    goto :goto_1a8
.end method

.method protected updateVisibleToUser()V
    .registers 3

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2116
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceInteractive:Z

    :goto_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2118
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_13

    .line 2119
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 2114
    :cond_13
    return-void

    .line 2116
    :cond_14
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .registers 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1442
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 1443
    const/4 v1, 0x1

    return v1

    .line 1446
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_26

    .line 1448
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1449
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 1447
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 1450
    .local v0, "allowed":Z
    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1451
    return v0

    .line 1447
    .end local v0    # "allowed":Z
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_1e

    .line 1454
    .end local v0    # "allowed":Z
    :cond_26
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 1462
    const/4 v3, -0x1

    if-ne p1, v3, :cond_6

    .line 1463
    const/4 v3, 0x1

    return v3

    .line 1466
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_2f

    .line 1468
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1469
    const-string/jumbo v4, "lock_screen_allow_private_notifications"

    .line 1467
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v2, 0x1

    .line 1470
    .local v2, "allowedByUser":Z
    :goto_1e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->adminAllowsUnredactedNotifications(I)Z

    move-result v1

    .line 1471
    .local v1, "allowedByDpm":Z
    if-eqz v2, :cond_2d

    move v0, v1

    .line 1472
    :goto_25
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1473
    return v0

    .line 1467
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "allowedByUser":Z
    goto :goto_1e

    .line 1471
    .restart local v1    # "allowedByDpm":Z
    :cond_2d
    const/4 v0, 0x0

    .local v0, "allowed":Z
    goto :goto_25

    .line 1476
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "allowedByUser":Z
    :cond_2f
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    return v3
.end method

.method public userSwitched(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 891
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 890
    return-void
.end method

.method protected visibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 2105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_b

    .line 2106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 2107
    if-nez p1, :cond_b

    .line 2108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 2111
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 2104
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1587
    return-void
.end method
