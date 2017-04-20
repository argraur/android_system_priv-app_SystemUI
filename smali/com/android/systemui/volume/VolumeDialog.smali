.class public Lcom/android/systemui/volume/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialog$1;,
        Lcom/android/systemui/volume/VolumeDialog$2;,
        Lcom/android/systemui/volume/VolumeDialog$3;,
        Lcom/android/systemui/volume/VolumeDialog$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialog$Callback;,
        Lcom/android/systemui/volume/VolumeDialog$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialog$H;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private final mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mActiveStream:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

.field private mDensity:I

.field private mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpandButtonAnimationDuration:I

.field private mExpandButtonAnimationRunning:Z

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

.field private mHovering:Z

.field private final mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

.field private mPendingRecheckAll:Z

.field private mPendingStateChanged:Z

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/volume/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowFullZen:Z

.field private mShowHeaders:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private mWindow:Landroid/view/Window;

.field private final mWindowType:I

.field private mZenFooter:Lcom/android/systemui/volume/ZenFooter;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

.field private final mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/Window;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialog;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDensity:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$CustomDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialog;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDensity:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHovering:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SeekBar;I)I
    .registers 3
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/VolumeDialog;ZZ)V
    .registers 3
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandedH(ZZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->initDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .registers 2
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 2
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialog;IZ)V
    .registers 3
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialog;I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialog;I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "controller"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p4, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;
    .param p5, "callback"    # Lcom/android/systemui/volume/VolumeDialog$Callback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$H;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    .line 113
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$Accessibility;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    .line 131
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mHovering:Z

    .line 950
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$1;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 949
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    .line 1011
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$2;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 1028
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$3;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    .line 151
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;

    .line 152
    iput p2, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindowType:I

    .line 153
    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 154
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    .line 155
    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 156
    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 159
    const v1, 0x7f0c00b0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->loadColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->initDialog()V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->init()V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mControllerCallbackH:Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 166
    invoke-virtual {p3}, Lcom/android/systemui/volume/VolumeDialogController;->getState()V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "sysui_show_full_zen"

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 170
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDensity:I

    .line 148
    return-void
.end method

.method private addExistingRows()V
    .registers 9

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 318
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v6, :cond_31

    .line 319
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 320
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialog;->initRow(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;IIIZ)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 316
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_31
    return-void
.end method

.method private addRow(IIIZ)V
    .registers 11
    .param p1, "stream"    # I
    .param p2, "iconRes"    # I
    .param p3, "iconMuteRes"    # I
    .param p4, "important"    # Z

    .prologue
    .line 310
    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 311
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialog;->initRow(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;IIIZ)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method private computeTimeoutH()I
    .registers 3

    .prologue
    const/16 v1, 0x1388

    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4e20

    return v0

    .line 480
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHovering:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x3e80

    return v0

    .line 481
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_19

    return v1

    .line 482
    :cond_19
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v0, :cond_22

    :cond_21
    return v1

    .line 483
    :cond_22
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x5dc

    return v0

    .line 484
    :cond_2a
    const/16 v0, 0xbb8

    return v0
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .registers 5
    .param p1, "stream"    # I

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 341
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v0

    .line 343
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .registers 5

    .prologue
    .line 331
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 332
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v2, v3, :cond_6

    .line 333
    return-object v0

    .line 336
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    return-object v2
.end method

.method private getConservativeCollapseDuration()J
    .registers 3

    .prologue
    .line 534
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .registers 7
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 364
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 365
    .local v2, "n":I
    if-nez p1, :cond_c

    .line 367
    .local v0, "level":I
    :goto_b
    return v0

    .line 366
    .end local v0    # "level":I
    :cond_c
    if-ne p1, v1, :cond_11

    div-int/lit8 v0, v1, 0x64

    goto :goto_b

    :cond_11
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_b
.end method

.method private hasTouchFeature()Z
    .registers 3

    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 946
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private initDialog()V
    .registers 13

    .prologue
    const v11, 0x7f020133

    const/16 v2, 0x30

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 174
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    .line 176
    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 177
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mHovering:Z

    .line 178
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 179
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0, v9}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 191
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 192
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindowType:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 193
    const/4 v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 194
    const-class v0, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    const/16 v0, 0x31

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 196
    const v0, 0x7f10020e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 197
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f040103

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f120289

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialog$4;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f12028a

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    const v1, 0x7f12028b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 216
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v1, 0x7f12028c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 222
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 223
    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialog$5;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 222
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 240
    const v0, 0x7f02013e

    const v1, 0x7f02013f

    .line 239
    invoke-direct {p0, v10, v0, v1, v9}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 241
    const/4 v0, 0x3

    .line 242
    const v1, 0x7f020138

    const v2, 0x7f02013b

    .line 241
    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 243
    const/4 v0, 0x4

    .line 244
    const v1, 0x7f020131

    const v2, 0x7f020132

    .line 243
    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 246
    const v0, 0x7f020144

    const v1, 0x7f020144

    .line 245
    invoke-direct {p0, v8, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 247
    const/4 v0, 0x6

    invoke-direct {p0, v0, v11, v11, v8}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 250
    const v0, 0x7f020142

    const v1, 0x7f020143

    .line 249
    invoke-direct {p0, v9, v0, v1, v8}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    .line 254
    :goto_123
    const v0, 0x7f0e0051

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f120290

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenFooter;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    const v1, 0x7f12026f

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerZenModePanel;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 173
    return-void

    .line 252
    :cond_15c
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->addExistingRows()V

    goto :goto_123
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;IIIZ)V
    .registers 9
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "stream"    # I
    .param p3, "iconRes"    # I
    .param p4, "iconMuteRes"    # I
    .param p5, "important"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 374
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 375
    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 376
    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 377
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialog:Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 378
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 379
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 380
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 381
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 383
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 384
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 385
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 386
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set3(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 389
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialog$6;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f12028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 414
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 415
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialog$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog$7;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-void
.end method

.method private isAttached()Z
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private loadColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "colorResId"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .registers 12
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    const/4 v9, 0x1

    .line 663
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v6}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 664
    .local v0, "animating":Z
    sget-boolean v6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v6, :cond_24

    sget-object v6, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateChangedH animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_24
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 666
    if-eqz v0, :cond_2b

    .line 667
    iput-boolean v9, p0, Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z

    .line 668
    return-void

    .line 670
    :cond_2b
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_63

    .line 673
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 674
    .local v5, "stream":I
    iget-object v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 675
    .local v4, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v6, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v6, :cond_4e

    .line 672
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 676
    :cond_4e
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 677
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialog;->findRow(I)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_4b

    .line 678
    const v6, 0x7f02013c

    const v7, 0x7f02013d

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/android/systemui/volume/VolumeDialog;->addRow(IIIZ)V

    goto :goto_4b

    .line 682
    .end local v4    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v5    # "stream":I
    :cond_63
    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    iget v7, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-eq v6, v7, :cond_77

    .line 683
    iget v6, p1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    .line 684
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 687
    :cond_77
    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "row$iterator":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 688
    .local v2, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_7d

    .line 690
    .end local v2    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_8d
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 662
    return-void
.end method

.method private prepareForCollapse()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 538
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V

    .line 541
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 7
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 900
    if-nez p1, :cond_27

    .line 901
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recheckH ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 903
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 904
    .local v0, "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_17

    .line 907
    .end local v0    # "r":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_27
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recheckH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_48
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 899
    :cond_4b
    return-void
.end method

.method private setStreamImportantH(IZ)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 913
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "row$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 914
    .local v0, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 915
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 916
    return-void

    .line 912
    .end local v0    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_1c
    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .registers 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 626
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_11

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    const/4 p2, 0x1

    .end local p2    # "isActive":Z
    :cond_10
    :goto_10
    return p2

    .line 627
    .restart local p2    # "isActive":Z
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_1d

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 626
    if-nez p2, :cond_f

    .line 628
    :cond_1d
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_10

    move p2, v0

    goto :goto_10
.end method

.method private showH(I)V
    .registers 8
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 458
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 462
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_36

    return-void

    .line 463
    :cond_36
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 464
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShow()V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 457
    return-void
.end method

.method private showSafetyWarningH(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 922
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_9

    .line 923
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 922
    if-eqz v0, :cond_2a

    .line 924
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_c
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_2e

    if-eqz v0, :cond_12

    monitor-exit v1

    .line 926
    return-void

    .line 928
    :cond_12
    :try_start_12
    new-instance v0, Lcom/android/systemui/volume/VolumeDialog$12;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$12;-><init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 937
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SafetyWarningDialog;->show()V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2e

    monitor-exit v1

    .line 939
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 941
    :cond_2a
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 921
    return-void

    .line 924
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimObsoleteH()V
    .registers 5

    .prologue
    .line 651
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "trimObsoleteH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_14
    if-ltz v0, :cond_49

    .line 653
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 654
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_46

    .line 655
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_46

    .line 656
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 657
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 652
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 650
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_49
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .registers 11

    .prologue
    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 522
    .local v2, "diff":J
    iget-wide v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5f

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getConservativeCollapseDuration()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_5f

    const/4 v1, 0x1

    .line 523
    .local v1, "collapsing":Z
    :goto_19
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 524
    .local v4, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_61

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 526
    .local v0, "bottomMargin":I
    :goto_29
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v5, :cond_5e

    .line 527
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_57

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bottomMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_57
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 529
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    :cond_5e
    return-void

    .line 522
    .end local v0    # "bottomMargin":I
    .end local v1    # "collapsing":Z
    .end local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5f
    const/4 v1, 0x0

    .restart local v1    # "collapsing":Z
    goto :goto_19

    .line 525
    .restart local v4    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_61
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100210

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "bottomMargin":I
    goto :goto_29
.end method

.method private updateExpandButtonH()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 590
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateExpandButtonH"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_73

    move v3, v4

    :goto_14
    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 592
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_75

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v3

    :goto_1f
    if-nez v3, :cond_45

    .line 593
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_77

    const v2, 0x7f020135

    .line 595
    .local v2, "res":I
    :goto_28
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->hasTouchFeature()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 596
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 602
    :goto_33
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_89

    .line 603
    const v3, 0x7f0f0344

    .line 602
    :goto_3e
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 605
    .end local v2    # "res":I
    :cond_45
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    if-eqz v3, :cond_72

    .line 606
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 607
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_72

    .line 609
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 611
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 613
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialog$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialog$10;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 620
    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v6, v5

    .line 613
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/volume/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    .end local v0    # "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_72
    return-void

    .line 591
    :cond_73
    const/4 v3, 0x1

    goto :goto_14

    :cond_75
    move v3, v4

    .line 592
    goto :goto_1f

    .line 594
    :cond_77
    const v2, 0x7f020137

    .restart local v2    # "res":I
    goto :goto_28

    .line 599
    :cond_7b
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    const v5, 0x7f02013e

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 600
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_33

    .line 603
    :cond_89
    const v3, 0x7f0f0343

    goto :goto_3e
.end method

.method private updateExpandedH(ZZ)V
    .registers 8
    .param p1, "expanded"    # Z
    .param p2, "dismissing"    # Z

    .prologue
    .line 545
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-ne v2, p1, :cond_5

    return-void

    .line 546
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 547
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->isAttached()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    .line 548
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpandedH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->updateFooterH()V

    .line 551
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->getActiveRow()Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 553
    .local v0, "activeRow":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-nez p2, :cond_66

    .line 554
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 555
    new-instance v1, Landroid/transition/AutoTransition;

    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    .line 556
    .local v1, "transition":Landroid/transition/AutoTransition;
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 557
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/transition/AutoTransition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 558
    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialog$9;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v1, v2}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 583
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 585
    .end local v1    # "transition":Landroid/transition/AutoTransition;
    :cond_66
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialog;->updateRowsH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 544
    return-void
.end method

.method private updateFooterH()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 694
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateFooterH"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenFooter;->getVisibility()I

    move-result v5

    if-nez v5, :cond_70

    const/4 v3, 0x1

    .line 696
    .local v3, "wasVisible":Z
    :goto_17
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz v5, :cond_74

    .line 697
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    .line 696
    if-eqz v5, :cond_74

    .line 698
    :cond_2b
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_72

    move v2, v0

    .line 699
    .local v2, "visible":Z
    :goto_34
    if-eq v3, v2, :cond_38

    if-eqz v2, :cond_76

    .line 702
    :cond_38
    :goto_38
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v5, v2}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 703
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 705
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-virtual {v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7a

    const/4 v1, 0x1

    .line 706
    .local v1, "fullWasVisible":Z
    :goto_4b
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFullZen:Z

    if-eqz v5, :cond_51

    if-eqz v2, :cond_7c

    .line 707
    .local v0, "fullVisible":Z
    :cond_51
    :goto_51
    if-eq v1, v0, :cond_55

    if-eqz v0, :cond_7e

    .line 710
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 711
    if-eqz v0, :cond_6f

    .line 712
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setZenState(I)V

    .line 713
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mZenPanel:Lcom/android/systemui/tuner/TunerZenModePanel;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialog$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/volume/VolumeDialog$11;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/TunerZenModePanel;->setDoneListener(Landroid/view/View$OnClickListener;)V

    .line 693
    :cond_6f
    return-void

    .line 695
    .end local v0    # "fullVisible":Z
    .end local v1    # "fullWasVisible":Z
    .end local v2    # "visible":Z
    .end local v3    # "wasVisible":Z
    :cond_70
    const/4 v3, 0x0

    .restart local v3    # "wasVisible":Z
    goto :goto_17

    :cond_72
    move v2, v4

    .line 698
    goto :goto_34

    :cond_74
    move v2, v0

    .line 696
    goto :goto_34

    .line 700
    .restart local v2    # "visible":Z
    :cond_76
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    goto :goto_38

    .line 705
    :cond_7a
    const/4 v1, 0x0

    .restart local v1    # "fullWasVisible":Z
    goto :goto_4b

    :cond_7c
    move v0, v4

    .line 706
    goto :goto_51

    .line 708
    .restart local v0    # "fullVisible":Z
    :cond_7e
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->prepareForCollapse()V

    goto :goto_55
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 8
    .param p1, "activeRow"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 632
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateRowsH"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_c
    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v4, :cond_13

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->trimObsoleteH()V

    .line 636
    :cond_13
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogRowsView:Landroid/view/ViewGroup;

    const v5, 0x7f120083

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-static {v4, v5}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 638
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "row$iterator":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .line 639
    .local v1, "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    if-ne v1, p1, :cond_52

    const/4 v0, 0x1

    .line 640
    .local v0, "isActive":Z
    :goto_36
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    move-result v3

    .line 641
    .local v3, "shouldBeVisible":Z
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 642
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 643
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 644
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    goto :goto_27

    .line 639
    .end local v0    # "isActive":Z
    .end local v3    # "shouldBeVisible":Z
    :cond_52
    const/4 v0, 0x0

    goto :goto_36

    .line 631
    .end local v1    # "row":Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    :cond_54
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 25
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 724
    sget-boolean v18, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v18, :cond_21

    sget-object v18, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateVolumeRowH s="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    return-void

    .line 726
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 727
    .local v15, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v15, :cond_43

    return-void

    .line 728
    :cond_43
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 729
    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v18, v0

    if-lez v18, :cond_59

    .line 730
    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set11(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 732
    :cond_59
    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get12(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_70

    .line 733
    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set12(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 735
    :cond_70
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e3

    const/4 v9, 0x1

    .line 736
    .local v9, "isRingStream":Z
    :goto_7d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e6

    const/4 v11, 0x1

    .line 737
    .local v11, "isSystemStream":Z
    :goto_8a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e9

    const/4 v6, 0x1

    .line 738
    .local v6, "isAlarmStream":Z
    :goto_97
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ec

    const/4 v7, 0x1

    .line 739
    .local v7, "isMusicStream":Z
    :goto_a4
    if-eqz v9, :cond_1f2

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ef

    const/4 v10, 0x1

    .line 741
    .local v10, "isRingVibrate":Z
    :goto_bb
    if-eqz v9, :cond_1f8

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    move/from16 v18, v0

    if-nez v18, :cond_1f5

    const/4 v8, 0x1

    .line 743
    .local v8, "isRingSilent":Z
    :goto_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1fb

    const/4 v12, 0x1

    .line 744
    .local v12, "isZenAlarms":Z
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1fe

    const/4 v13, 0x1

    .line 745
    .local v13, "isZenNone":Z
    :goto_f6
    if-eqz v12, :cond_205

    if-nez v9, :cond_201

    move/from16 v17, v11

    .line 750
    :goto_fc
    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    move/from16 v18, v0

    mul-int/lit8 v14, v18, 0x64

    .line 751
    .local v14, "max":I
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    move/from16 v0, v18

    if-eq v14, v0, :cond_117

    .line 752
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setMax(I)V

    .line 756
    :cond_117
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 759
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v18

    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 762
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v18, v0

    if-nez v18, :cond_133

    iget-boolean v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_135

    :cond_133
    if-eqz v17, :cond_219

    :cond_135
    const/4 v4, 0x0

    .line 763
    .local v4, "iconEnabled":Z
    :goto_136
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 764
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v19

    if-eqz v4, :cond_21c

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_147
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 766
    if-eqz v10, :cond_220

    const v5, 0x7f020140

    .line 773
    .local v5, "iconRes":I
    :goto_153
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    move/from16 v0, v18

    if-eq v5, v0, :cond_17a

    .line 774
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    if-eqz v18, :cond_16c

    if-eqz v10, :cond_16c

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/volume/VolumeDialogController;->vibrate()V

    .line 777
    :cond_16c
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 778
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 781
    :cond_17a
    const v18, 0x7f020140

    move/from16 v0, v18

    if-ne v5, v0, :cond_266

    const/16 v18, 0x3

    .line 780
    :goto_183
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set9(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 787
    if-eqz v4, :cond_360

    .line 788
    if-eqz v9, :cond_2f4

    .line 789
    if-eqz v10, :cond_290

    .line 790
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 792
    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 791
    const v21, 0x7f0f0359

    .line 790
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 820
    :goto_1ba
    if-eqz v17, :cond_36d

    const/4 v3, 0x0

    .line 821
    .local v3, "enableSlider":Z
    :goto_1bd
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v18

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1cf

    if-nez v10, :cond_370

    if-nez v9, :cond_1cf

    if-eqz v17, :cond_370

    .line 822
    :cond_1cf
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v16, v0

    .line 823
    .local v16, "vlevel":I
    :goto_1d9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V

    .line 723
    return-void

    .line 735
    .end local v3    # "enableSlider":Z
    .end local v4    # "iconEnabled":Z
    .end local v5    # "iconRes":I
    .end local v6    # "isAlarmStream":Z
    .end local v7    # "isMusicStream":Z
    .end local v8    # "isRingSilent":Z
    .end local v9    # "isRingStream":Z
    .end local v10    # "isRingVibrate":Z
    .end local v11    # "isSystemStream":Z
    .end local v12    # "isZenAlarms":Z
    .end local v13    # "isZenNone":Z
    .end local v14    # "max":I
    .end local v16    # "vlevel":I
    :cond_1e3
    const/4 v9, 0x0

    .restart local v9    # "isRingStream":Z
    goto/16 :goto_7d

    .line 736
    :cond_1e6
    const/4 v11, 0x0

    .restart local v11    # "isSystemStream":Z
    goto/16 :goto_8a

    .line 737
    :cond_1e9
    const/4 v6, 0x0

    .restart local v6    # "isAlarmStream":Z
    goto/16 :goto_97

    .line 738
    :cond_1ec
    const/4 v7, 0x0

    .restart local v7    # "isMusicStream":Z
    goto/16 :goto_a4

    .line 740
    :cond_1ef
    const/4 v10, 0x0

    .restart local v10    # "isRingVibrate":Z
    goto/16 :goto_bb

    .line 739
    .end local v10    # "isRingVibrate":Z
    :cond_1f2
    const/4 v10, 0x0

    .restart local v10    # "isRingVibrate":Z
    goto/16 :goto_bb

    .line 742
    :cond_1f5
    const/4 v8, 0x0

    .restart local v8    # "isRingSilent":Z
    goto/16 :goto_cc

    .line 741
    .end local v8    # "isRingSilent":Z
    :cond_1f8
    const/4 v8, 0x0

    .restart local v8    # "isRingSilent":Z
    goto/16 :goto_cc

    .line 743
    :cond_1fb
    const/4 v12, 0x0

    .restart local v12    # "isZenAlarms":Z
    goto/16 :goto_e1

    .line 744
    :cond_1fe
    const/4 v13, 0x0

    .restart local v13    # "isZenNone":Z
    goto/16 :goto_f6

    .line 745
    :cond_201
    const/16 v17, 0x1

    .local v17, "zenMuted":Z
    goto/16 :goto_fc

    .line 746
    .end local v17    # "zenMuted":Z
    :cond_205
    if-eqz v13, :cond_215

    if-nez v9, :cond_211

    if-nez v11, :cond_211

    if-nez v6, :cond_211

    move/from16 v17, v7

    .local v17, "zenMuted":Z
    goto/16 :goto_fc

    .end local v17    # "zenMuted":Z
    :cond_211
    const/16 v17, 0x1

    .local v17, "zenMuted":Z
    goto/16 :goto_fc

    .line 747
    .end local v17    # "zenMuted":Z
    :cond_215
    const/16 v17, 0x0

    .restart local v17    # "zenMuted":Z
    goto/16 :goto_fc

    .line 762
    .end local v17    # "zenMuted":Z
    .restart local v14    # "max":I
    :cond_219
    const/4 v4, 0x1

    .restart local v4    # "iconEnabled":Z
    goto/16 :goto_136

    .line 764
    :cond_21c
    const/high16 v18, 0x3f000000    # 0.5f

    goto/16 :goto_147

    .line 767
    :cond_220
    if-nez v8, :cond_224

    if-eqz v17, :cond_22a

    :cond_224
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .line 768
    .end local v5    # "iconRes":I
    :cond_22a
    iget-boolean v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    move/from16 v18, v0

    if-eqz v18, :cond_240

    .line 769
    iget-boolean v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_23b

    const v5, 0x7f02013a

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .line 770
    .end local v5    # "iconRes":I
    :cond_23b
    const v5, 0x7f020139

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .line 771
    .end local v5    # "iconRes":I
    :cond_240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v18, v0

    if-eqz v18, :cond_254

    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v18, v0

    if-nez v18, :cond_254

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .line 772
    .end local v5    # "iconRes":I
    :cond_254
    iget-boolean v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_260

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .end local v5    # "iconRes":I
    :cond_260
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    .restart local v5    # "iconRes":I
    goto/16 :goto_153

    .line 782
    :cond_266
    const v18, 0x7f02013a

    move/from16 v0, v18

    if-eq v5, v0, :cond_275

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    move/from16 v0, v18

    if-ne v5, v0, :cond_279

    .line 783
    :cond_275
    const/16 v18, 0x2

    goto/16 :goto_183

    .line 784
    :cond_279
    const v18, 0x7f020139

    move/from16 v0, v18

    if-eq v5, v0, :cond_288

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v18

    move/from16 v0, v18

    if-ne v5, v0, :cond_28c

    .line 785
    :cond_288
    const/16 v18, 0x1

    goto/16 :goto_183

    .line 786
    :cond_28c
    const/16 v18, 0x0

    goto/16 :goto_183

    .line 794
    :cond_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v18

    if-eqz v18, :cond_2c8

    .line 795
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 797
    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 796
    const v21, 0x7f0f035a

    .line 795
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 799
    :cond_2c8
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 801
    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 800
    const v21, 0x7f0f035b

    .line 799
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 805
    :cond_2f4
    iget-boolean v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    move/from16 v18, v0

    if-nez v18, :cond_308

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    move/from16 v18, v0

    if-eqz v18, :cond_334

    iget v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    move/from16 v18, v0

    if-nez v18, :cond_334

    .line 806
    :cond_308
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 808
    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 807
    const v21, 0x7f0f0359

    .line 806
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 810
    :cond_334
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 812
    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 811
    const v21, 0x7f0f035b

    .line 810
    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 816
    :cond_360
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v18

    iget-object v0, v15, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ba

    .line 820
    :cond_36d
    const/4 v3, 0x1

    .restart local v3    # "enableSlider":Z
    goto/16 :goto_1bd

    .line 821
    :cond_370
    const/16 v16, 0x0

    goto/16 :goto_1d9
.end method

.method private updateVolumeRowHeaderVisibleH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 827
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v0, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 828
    :goto_c
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    if-nez v2, :cond_28

    move v1, v0

    .line 829
    :goto_15
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get3(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v2

    if-eq v2, v1, :cond_25

    .line 830
    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set3(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    .line 831
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 826
    :cond_25
    return-void

    .line 827
    :cond_26
    const/4 v0, 0x0

    .local v0, "dynamic":Z
    goto :goto_c

    .line 828
    .end local v0    # "dynamic":Z
    :cond_28
    const/4 v1, 0x1

    .local v1, "showHeaders":Z
    goto :goto_15

    .end local v1    # "showHeaders":Z
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "showHeaders":Z
    goto :goto_15
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;ZI)V
    .registers 16
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "enable"    # Z
    .param p3, "vlevel"    # I

    .prologue
    .line 848
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 849
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    if-ne v5, v6, :cond_1a

    const/4 v5, 0x1

    :goto_10
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/volume/VolumeDialog;->updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V

    .line 850
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 851
    return-void

    .line 849
    :cond_1a
    const/4 v5, 0x0

    goto :goto_10

    .line 853
    :cond_1c
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 854
    .local v3, "progress":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 855
    .local v1, "level":I
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_75

    const/4 v4, 0x1

    .line 856
    .local v4, "rowVisible":Z
    :goto_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 857
    const-wide/16 v8, 0x3e8

    .line 856
    cmp-long v5, v6, v8

    if-gez v5, :cond_77

    const/4 v0, 0x1

    .line 858
    .local v0, "inGracePeriod":Z
    :goto_47
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 859
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_79

    if-eqz v4, :cond_79

    if-eqz v0, :cond_79

    .line 860
    sget-boolean v5, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v5, :cond_61

    sget-object v5, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inGracePeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_61
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 862
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get17(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    .line 861
    invoke-virtual {v5, v6, v8, v9}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 863
    return-void

    .line 855
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_75
    const/4 v4, 0x0

    .restart local v4    # "rowVisible":Z
    goto :goto_37

    .line 856
    :cond_77
    const/4 v0, 0x0

    .restart local v0    # "inGracePeriod":Z
    goto :goto_47

    .line 865
    :cond_79
    if-ne p3, v1, :cond_82

    .line 866
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_82

    if-eqz v4, :cond_82

    .line 867
    return-void

    .line 870
    :cond_82
    mul-int/lit8 v2, p3, 0x64

    .line 871
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_df

    .line 872
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-eqz v5, :cond_f8

    if-eqz v4, :cond_f8

    .line 874
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_a3

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 875
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get1(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    if-ne v5, v2, :cond_a3

    .line 876
    return-void

    .line 879
    :cond_a3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-nez v5, :cond_e0

    .line 880
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    const-string/jumbo v6, "progress"

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 881
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 886
    :goto_cc
    invoke-static {p1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set1(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    .line 887
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 888
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 847
    :cond_df
    :goto_df
    return-void

    .line 883
    :cond_e0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 884
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v2, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    goto :goto_cc

    .line 891
    :cond_f8
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v5, :cond_105

    .line 892
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 894
    :cond_105
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_df
.end method

.method private updateVolumeRowSliderTintH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)V
    .registers 5
    .param p1, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p2, "isActive"    # Z

    .prologue
    .line 836
    if-eqz p2, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    if-eqz v1, :cond_d

    .line 837
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 839
    :cond_d
    if-eqz p2, :cond_22

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 841
    .local v0, "tint":Landroid/content/res/ColorStateList;
    :goto_1b
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get4(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v0, v1, :cond_25

    return-void

    .line 840
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v0    # "tint":Landroid/content/res/ColorStateList;
    goto :goto_1b

    .line 842
    :cond_25
    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-set4(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 843
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 844
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->-get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 835
    return-void
.end method

.method private updateWindowWidthH()V
    .registers 8

    .prologue
    .line 274
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 275
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 276
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWindowWidth dm.w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2f
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 278
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 279
    const v5, 0x7f100176

    .line 278
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 280
    .local v2, "max":I
    if-le v3, v2, :cond_41

    .line 281
    move v3, v2

    .line 283
    :cond_41
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method


# virtual methods
.method protected dismissH(I)V
    .registers 8
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 488
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 489
    return-void

    .line 491
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 492
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 493
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    if-nez v1, :cond_1b

    return-void

    .line 494
    :cond_1b
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    .line 495
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;

    new-instance v2, Lcom/android/systemui/volume/VolumeDialog$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialog$8;-><init>(Lcom/android/systemui/volume/VolumeDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 503
    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 504
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 505
    const-class v1, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    .line 507
    const v3, 0x7f0f035d

    .line 506
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 510
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_60
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumeDialogController;->notifyVisible(Z)V

    .line 512
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_75
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v1, :cond_8a

    .line 514
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_85

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SafetyWarning dismissed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_85
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SafetyWarningDialog;->dismiss()V
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_8c

    :cond_8a
    monitor-exit v2

    .line 487
    return-void

    .line 512
    :catchall_8c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "  mShowing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 349
    const-string/jumbo v0, "  mExpanded: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpanded:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 350
    const-string/jumbo v0, "  mExpandButtonAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mExpandButtonAnimationRunning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    const-string/jumbo v0, "  mActiveStream: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 353
    const-string/jumbo v0, "  mDynamic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 354
    const-string/jumbo v0, "  mShowHeaders: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowHeaders:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 355
    const-string/jumbo v0, "  mAutomute: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 356
    const-string/jumbo v0, "  mSilentMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 357
    const-string/jumbo v0, "  mCollapseTime: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mCollapseTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 358
    const-string/jumbo v0, "  mAccessibility.mFeedbackEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAccessibility:Lcom/android/systemui/volume/VolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog$Accessibility;->-get0(Lcom/android/systemui/volume/VolumeDialog$Accessibility;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 346
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 264
    const-string/jumbo v1, "sysui_show_full_zen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 265
    if-eqz p2, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mShowFullZen:Z

    .line 263
    :cond_15
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 470
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->removeMessages(I)V

    .line 471
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 472
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    .line 473
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 472
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 473
    int-to-long v4, v0

    .line 472
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 474
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_44

    sget-object v1, Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_44
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogController;->userActivity()V

    .line 469
    return-void
.end method

.method public setAutomute(Z)V
    .registers 4
    .param p1, "automute"    # Z

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 299
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method

.method public setSilentMode(Z)V
    .registers 4
    .param p1, "silentMode"    # Z

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 305
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 303
    return-void
.end method

.method public setStreamImportant(IZ)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "important"    # Z

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;

    if-eqz p2, :cond_e

    const/4 v0, 0x1

    :goto_5
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void

    .line 288
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
