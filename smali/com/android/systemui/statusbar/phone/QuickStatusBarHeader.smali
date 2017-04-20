.class public Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;
.super Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$4__LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$5__LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onFinishInflate__LambdaImpl0;,
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDateTimeAlarmGroup:Landroid/view/ViewGroup;

.field private mDateTimeGroup:Landroid/view/ViewGroup;

.field private mDateTimeTranslation:F

.field private mEdit:Landroid/view/View;

.field private mEmergencyOnly:Landroid/widget/TextView;

.field protected mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsRoaming:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mRoamingsBySubId:Landroid/util/SparseBooleanArray;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mShowFullAlarm:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mRoamingsBySubId:Landroid/util/SparseBooleanArray;

    .line 103
    return-void
.end method

.method private calculateRoaming()Z
    .registers 3

    .prologue
    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mRoamingsBySubId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mRoamingsBySubId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    return v1

    .line 417
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private startSettingsActivity()V
    .registers 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x1

    .line 365
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 364
    return-void
.end method

.method private updateAlarmVisibilities()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmShowing:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowFullAlarm:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmShowing:Z

    if-eqz v3, :cond_1c

    :goto_16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void

    :cond_1a
    move v0, v2

    .line 252
    goto :goto_d

    :cond_1c
    move v1, v2

    .line 253
    goto :goto_16
.end method

.method private updateDateTimePosition()V
    .registers 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsRoaming:Z

    if-eqz v0, :cond_13

    .line 288
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpansionAmount:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeTranslation:F

    mul-float/2addr v0, v2

    .line 287
    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 286
    return-void

    .line 288
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updateListeners()V
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-eqz v0, :cond_28

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 291
    :cond_27
    :goto_27
    return-void

    .line 299
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_27
.end method

.method private updateResources()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    const v2, 0x7f1001d8

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEmergencyOnly:Landroid/widget/TextView;

    const v2, 0x7f1001d7

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 164
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 165
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowFullAlarm:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    :goto_21
    const-string/jumbo v3, "alpha"

    .line 164
    new-array v4, v9, [F

    .line 165
    aput v5, v4, v7

    aput v6, v4, v8

    .line 164
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEmergencyOnly:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    .line 164
    new-array v4, v9, [F

    .line 166
    aput v5, v4, v7

    aput v6, v4, v8

    .line 164
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 167
    .local v0, "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowFullAlarm:Z

    if-eqz v1, :cond_4f

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatusCollapsed:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v9, [F

    aput v6, v3, v7

    aput v5, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 170
    :cond_4f
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsAnimator()V

    .line 160
    return-void

    .line 165
    .end local v0    # "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_59
    const v1, 0x7f120248

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_21
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1_android_view_View_view_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$2(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$3()V
    .registers 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setClickable(Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$4()V
    .registers 2

    .prologue
    .line 341
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$4__LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$4__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$5()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$5__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_-com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$5__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 352
    :goto_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    .line 0
    return-void

    .line 348
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0379

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_13
.end method

.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$6()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    .line 0
    return-void
.end method

.method public getCollapsedHeight()I
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_29

    .line 337
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    .line 338
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_22

    const/16 v1, 0x196

    .line 337
    :goto_c
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onClick_android_view_View_v_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 335
    :cond_21
    :goto_21
    return-void

    .line 339
    :cond_22
    const/16 v1, 0x1ea

    goto :goto_c

    .line 356
    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    goto :goto_21

    .line 358
    :cond_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v1, :cond_21

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_21

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    .local v0, "showIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_21
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setListening(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->remListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 248
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onDetachedFromWindow()V

    .line 244
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const v1, 0x1020003

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onFinishInflate()V

    .line 111
    const v0, 0x7f1201f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEmergencyOnly:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/View;

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onFinishInflate__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_onFinishInflate__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f1201f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    const v1, 0x7f120241

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const v0, 0x7f1201f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeTranslation:F

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowFullAlarm:Z

    .line 125
    const v0, 0x7f1201f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 127
    const v0, 0x7f1201f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 129
    const v0, 0x7f1201f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 130
    const v0, 0x7f1201f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f120247

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatusCollapsed:Landroid/view/View;

    .line 134
    const v0, 0x7f120101

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f120103

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f120104

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 108
    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 9
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const v6, 0x7f0f026b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 217
    if-eqz p1, :cond_34

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "alarmString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 221
    aput-object v0, v5, v2

    .line 220
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Object;

    .line 223
    aput-object v0, v5, v2

    .line 222
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    .end local v0    # "alarmString":Ljava/lang/String;
    :cond_34
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmShowing:Z

    if-eqz p1, :cond_43

    move v3, v1

    :goto_39
    if-eq v4, v3, :cond_42

    .line 226
    if-eqz p1, :cond_45

    :goto_3d
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAlarmShowing:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 215
    :cond_42
    return-void

    :cond_43
    move v3, v2

    .line 225
    goto :goto_39

    :cond_45
    move v1, v2

    .line 226
    goto :goto_3d
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onRtlPropertiesChanged(I)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    .line 155
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .registers 2
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 306
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .registers 2
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 375
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .registers 3
    .param p1, "qsPanelCallback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 385
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 391
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_11

    const/4 v0, 0x1

    .line 392
    .local v0, "changed":Z
    :goto_5
    if-eqz v0, :cond_10

    .line 393
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    .line 394
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_10

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 390
    :cond_10
    return-void

    .line 391
    .end local v0    # "changed":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 209
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 207
    return-void
.end method

.method public setExpansion(F)V
    .registers 4
    .param p1, "headerExpansionFraction"    # F

    .prologue
    .line 233
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpansionAmount:F

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateDateTimePosition()V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateAlarmVisibilities()V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v0, 0x3f6e147b    # 0.93f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    .line 232
    return-void

    .line 240
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public setListening(Z)V
    .registers 3
    .param p1, "listening"    # Z

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_5

    .line 258
    return-void

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateListeners()V

    .line 256
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 15
    .param p1, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p2, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "statusType"    # I
    .param p4, "qsType"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "typeContentDescription"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isWide"    # Z
    .param p10, "subId"    # I
    .param p11, "roaming"    # Z

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mRoamingsBySubId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p10, p11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->calculateRoaming()Z

    move-result v0

    .line 406
    .local v0, "isRoaming":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsRoaming:Z

    if-eq v1, v0, :cond_22

    .line 407
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsRoaming:Z

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEmergencyOnly:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsRoaming:Z

    if-eqz v1, :cond_23

    const v1, 0x7f0f022a

    :goto_18
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 410
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_22

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    .line 403
    :cond_22
    return-void

    .line 409
    :cond_23
    const v1, 0x10402b4

    goto :goto_18
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .registers 2
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 370
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .registers 3
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 313
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_12

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 311
    :cond_12
    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .registers 2
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 381
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 380
    return-void
.end method

.method public setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 5
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setHeaderView(Landroid/view/View;)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 326
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    .line 329
    .local v0, "isAPhone":Z
    if-eqz v0, :cond_3e

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 319
    :cond_3e
    return-void
.end method

.method public updateEverything()V
    .registers 2

    .prologue
    .line 267
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method protected updateSettingsAnimator()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 176
    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    .line 176
    new-array v5, v9, [F

    .line 177
    aput v6, v5, v1

    aput v7, v5, v8

    .line 176
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v4, "alpha"

    .line 176
    new-array v5, v9, [F

    .line 178
    aput v6, v5, v1

    aput v7, v5, v8

    .line 176
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isLayoutRtl()Z

    move-result v0

    .line 182
    .local v0, "isRtl":Z
    if-eqz v0, :cond_48

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-nez v2, :cond_48

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 175
    :goto_47
    return-void

    .line 192
    :cond_48
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :cond_52
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_47
.end method

.method protected updateVisibilities()V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateAlarmVisibilities()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateDateTimePosition()V

    .line 276
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEmergencyOnly:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsRoaming:Z

    if-eqz v1, :cond_55

    :cond_16
    move v1, v2

    :goto_17
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v4, 0x7f1201f4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_57

    move v1, v2

    .line 278
    :goto_2c
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    .line 281
    .local v0, "isDemo":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_45

    if-eqz v0, :cond_59

    :cond_45
    move v1, v3

    :goto_46
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/View;

    if-nez v0, :cond_5b

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v4, :cond_5b

    :goto_51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void

    .end local v0    # "isDemo":Z
    :cond_55
    move v1, v3

    .line 277
    goto :goto_17

    :cond_57
    move v1, v3

    .line 279
    goto :goto_2c

    .restart local v0    # "isDemo":Z
    :cond_59
    move v1, v2

    .line 282
    goto :goto_46

    :cond_5b
    move v2, v3

    .line 283
    goto :goto_51
.end method
