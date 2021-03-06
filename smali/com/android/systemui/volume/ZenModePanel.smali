.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$1;,
        Lcom/android/systemui/volume/ZenModePanel$2;,
        Lcom/android/systemui/volume/ZenModePanel$3;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$H;,
        Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;,
        Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field public static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field public static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mAttached:Z

.field private mAttachedZen:I

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mCountdownConditionSupported:Z

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExpanded:Z

.field private final mForeverId:Landroid/net/Uri;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private final mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

.field private mVoiceCapable:Z

.field private mZenAlarmWarning:Landroid/widget/TextView;

.field protected mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field protected final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field protected mZenConditions:Landroid/widget/LinearLayout;

.field private mZenIntroduction:Landroid/view/View;

.field private mZenIntroductionConfirm:Landroid/view/View;

.field private mZenIntroductionCustomize:Landroid/widget/TextView;

.field private mZenIntroductionMessage:Landroid/widget/TextView;

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field private mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[I
    .registers 1

    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/ZenModePanel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/ZenModePanel;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .registers 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .registers 2
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->confirmZenIntroduction()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .registers 5
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .registers 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/ZenModePanel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 70
    const-string/jumbo v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 75
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 76
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 77
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 78
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 93
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ZenModePanel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 817
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 940
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 968
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 127
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    .line 131
    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    .line 133
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new ZenModePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_8d
    return-void
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .registers 8
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v4, 0x0

    .line 723
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 725
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_42

    .line 736
    return-void

    .line 727
    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f02f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "modeText":Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 739
    iget-object v4, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 738
    const v4, 0x7f0f0341

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 722
    return-void

    .line 730
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_2d
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f02f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_12

    .line 733
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_37
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0f02f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_12

    .line 725
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2d
        :pswitch_37
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .registers 24
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "row"    # Landroid/view/View;
    .param p3, "rowId"    # I

    .prologue
    .line 618
    if-nez p1, :cond_d

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "condition must not be null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 619
    :cond_d
    move-object/from16 v0, p1

    iget v15, v0, Landroid/service/notification/Condition;->state:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_1f5

    const/4 v7, 0x1

    .line 621
    .local v7, "enabled":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1f8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-object v14, v15

    .line 622
    .local v14, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_25
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 623
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_200

    const/4 v8, 0x1

    .line 624
    .local v8, "first":Z
    :goto_2f
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v15, :cond_41

    .line 625
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 627
    :cond_41
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 628
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v15}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v6

    .line 629
    .local v6, "conditionId":Landroid/net/Uri;
    sget-boolean v15, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v15, :cond_94

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bind i="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " first="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 630
    const-string/jumbo v19, " condition="

    .line 629
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_94
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v15, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 632
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    if-nez v15, :cond_b8

    .line 646
    const v15, 0x1020002

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    .line 648
    :cond_b8
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v15, :cond_d6

    .line 649
    const v15, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    .line 650
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 652
    :cond_d6
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v15, :cond_f4

    .line 653
    const v15, 0x1020015

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iput-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 656
    :cond_f4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_203

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 658
    .local v9, "line1":Ljava/lang/String;
    :goto_102
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 659
    .local v10, "line2":Ljava/lang/String;
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_209

    .line 661
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    :goto_11a
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v15, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 667
    iget-object v0, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_219

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_127
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    .line 669
    const v15, 0x1020019

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 670
    .local v4, "button1":Landroid/widget/ImageView;
    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    const v15, 0x102001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 678
    .local v5, "button2":Landroid/widget/ImageView;
    new-instance v15, Lcom/android/systemui/volume/ZenModePanel$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v14, v2}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;I)V

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    new-instance v18, Lcom/android/systemui/volume/ZenModePanel$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/volume/ZenModePanel$9;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 692
    .local v16, "time":J
    const/4 v15, 0x2

    move/from16 v0, p3

    if-eq v0, v15, :cond_26f

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_26f

    .line 693
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v15, v0, :cond_223

    .line 696
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v15, :cond_21e

    const/4 v15, 0x1

    :goto_196
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 697
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v18, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v15, v0, :cond_221

    const/4 v15, 0x1

    :goto_1ab
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 706
    :goto_1ae
    invoke-virtual {v4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_267

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1b6
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 707
    invoke-virtual {v5}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_26b

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_1c1
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 713
    :goto_1c4
    if-eqz v8, :cond_1ee

    .line 714
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 715
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->lines:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v4, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v5, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 719
    :cond_1ee
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 617
    return-void

    .line 619
    .end local v4    # "button1":Landroid/widget/ImageView;
    .end local v5    # "button2":Landroid/widget/ImageView;
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "enabled":Z
    .end local v8    # "first":Z
    .end local v9    # "line1":Ljava/lang/String;
    .end local v10    # "line2":Ljava/lang/String;
    .end local v14    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v16    # "time":J
    :cond_1f5
    const/4 v7, 0x0

    .restart local v7    # "enabled":Z
    goto/16 :goto_18

    .line 621
    :cond_1f8
    new-instance v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    goto/16 :goto_25

    .line 623
    .restart local v14    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_200
    const/4 v8, 0x0

    .restart local v8    # "first":Z
    goto/16 :goto_2f

    .line 657
    .restart local v6    # "conditionId":Landroid/net/Uri;
    :cond_203
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .restart local v9    # "line1":Ljava/lang/String;
    goto/16 :goto_102

    .line 663
    .restart local v10    # "line2":Ljava/lang/String;
    :cond_209
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v15, v14, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11a

    .line 667
    :cond_219
    const v15, 0x3ecccccd    # 0.4f

    goto/16 :goto_127

    .line 696
    .restart local v4    # "button1":Landroid/widget/ImageView;
    .restart local v5    # "button2":Landroid/widget/ImageView;
    .restart local v16    # "time":J
    :cond_21e
    const/4 v15, 0x0

    goto/16 :goto_196

    .line 697
    :cond_221
    const/4 v15, 0x0

    goto :goto_1ab

    .line 699
    :cond_223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v12, v16, v18

    .line 700
    .local v12, "span":J
    sget v15, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v18, 0xea60

    mul-int v15, v15, v18

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v12, v18

    if-lez v15, :cond_263

    const/4 v15, 0x1

    :goto_238
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 701
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 702
    sget v18, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 701
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v11

    .line 703
    .local v11, "maxCondition":Landroid/service/notification/Condition;
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v0, v11, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_265

    const/4 v15, 0x0

    :goto_25e
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_1ae

    .line 700
    .end local v11    # "maxCondition":Landroid/service/notification/Condition;
    :cond_263
    const/4 v15, 0x0

    goto :goto_238

    .line 703
    .restart local v11    # "maxCondition":Landroid/service/notification/Condition;
    :cond_265
    const/4 v15, 0x1

    goto :goto_25e

    .line 706
    .end local v11    # "maxCondition":Landroid/service/notification/Condition;
    .end local v12    # "span":J
    :cond_267
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_1b6

    .line 707
    :cond_26b
    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_1c1

    .line 709
    :cond_26f
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c4
.end method

.method private checkForAttachedZenChange()V
    .registers 5

    .prologue
    .line 269
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 270
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_22
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_58

    .line 272
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_50
    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 274
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->trackNoneSelected()V

    .line 268
    :cond_58
    return-void
.end method

.method private computeAlarmWarningText(Z)Ljava/lang/String;
    .registers 22
    .param p1, "zenNone"    # Z

    .prologue
    .line 445
    if-nez p1, :cond_5

    .line 446
    const/16 v16, 0x0

    return-object v16

    .line 448
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 449
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v4

    .line 450
    .local v4, "nextAlarm":J
    cmp-long v16, v4, v6

    if-gez v16, :cond_1a

    .line 451
    const/16 v16, 0x0

    return-object v16

    .line 453
    :cond_1a
    const/4 v13, 0x0

    .line 454
    .local v13, "warningRes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    if-eqz v16, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 455
    :cond_33
    const v13, 0x7f0f036e

    .line 462
    :cond_36
    :goto_36
    if-nez v13, :cond_57

    .line 463
    const/16 v16, 0x0

    return-object v16

    .line 457
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 458
    .local v14, "time":J
    cmp-long v16, v14, v6

    if-lez v16, :cond_36

    cmp-long v16, v4, v14

    if-gez v16, :cond_36

    .line 459
    const v13, 0x7f0f036f

    goto :goto_36

    .line 465
    .end local v14    # "time":J
    :cond_57
    sub-long v16, v4, v6

    const-wide/32 v18, 0x5265c00

    cmp-long v16, v16, v18

    if-gez v16, :cond_ba

    const/4 v10, 0x1

    .line 466
    .local v10, "soon":Z
    :goto_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    invoke-static/range {v16 .. v17}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v3

    .line 467
    .local v3, "is24":Z
    if-eqz v10, :cond_c0

    if-eqz v3, :cond_bc

    const-string/jumbo v9, "Hm"

    .line 468
    .local v9, "skeleton":Ljava/lang/String;
    :goto_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "pattern":Ljava/lang/String;
    invoke-static {v8, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 470
    .local v2, "formattedTime":Ljava/lang/CharSequence;
    if-eqz v10, :cond_ca

    const v12, 0x7f0f0370

    .line 471
    .local v12, "templateRes":I
    :goto_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v2, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 472
    .local v11, "template":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/ZenModePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 465
    .end local v2    # "formattedTime":Ljava/lang/CharSequence;
    .end local v3    # "is24":Z
    .end local v8    # "pattern":Ljava/lang/String;
    .end local v9    # "skeleton":Ljava/lang/String;
    .end local v10    # "soon":Z
    .end local v11    # "template":Ljava/lang/String;
    .end local v12    # "templateRes":I
    :cond_ba
    const/4 v10, 0x0

    .restart local v10    # "soon":Z
    goto :goto_61

    .line 467
    .restart local v3    # "is24":Z
    :cond_bc
    const-string/jumbo v9, "hma"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_76

    .end local v9    # "skeleton":Ljava/lang/String;
    :cond_c0
    if-eqz v3, :cond_c6

    const-string/jumbo v9, "EEEHm"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_76

    .end local v9    # "skeleton":Ljava/lang/String;
    :cond_c6
    const-string/jumbo v9, "EEEhma"

    .restart local v9    # "skeleton":Ljava/lang/String;
    goto :goto_76

    .line 470
    .restart local v2    # "formattedTime":Ljava/lang/CharSequence;
    .restart local v8    # "pattern":Ljava/lang/String;
    :cond_ca
    const v12, 0x7f0f0371

    .restart local v12    # "templateRes":I
    goto :goto_89
.end method

.method private confirmZenIntroduction()V
    .registers 5

    .prologue
    .line 208
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->prefKeyForConfirmation(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "prefKey":Ljava/lang/String;
    if-nez v0, :cond_c

    return-void

    .line 210
    :cond_c
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "confirmZenIntroduction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$H;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .registers 2
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 360
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_3
.end method

.method private ensureSelection()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v4

    .line 585
    .local v4, "visibleConditions":I
    if-nez v4, :cond_9

    return-void

    .line 586
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v4, :cond_3d

    .line 587
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v3

    .line 588
    .local v3, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v3, :cond_3a

    iget-object v5, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 589
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not selecting a default, checked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_39
    return-void

    .line 586
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 593
    .end local v3    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_3d
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v1

    .line 594
    .local v1, "foreverTag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-nez v1, :cond_44

    return-void

    .line 595
    :cond_44
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "Selecting a default"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_50
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->getMinuteIndex()I

    move-result v0

    .line 597
    .local v0, "favoriteIndex":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_84

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v5, :cond_84

    .line 600
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 601
    sget-object v6, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v6, v6, v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 600
    invoke-static {v5, v6, v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 602
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 603
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 605
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 582
    :goto_83
    return-void

    .line 598
    :cond_84
    iget-object v5, v1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_83
.end method

.method private fireExpanded()V
    .registers 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_b

    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 811
    :cond_b
    return-void
.end method

.method private fireInteraction()V
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_9

    .line 807
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 805
    :cond_9
    return-void
.end method

.method private forever()Landroid/service/notification/Condition;
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 526
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    .line 527
    const/4 v6, 0x1

    move v7, v5

    .line 526
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private static foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    const v0, 0x10405ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .registers 2
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 348
    if-eqz p0, :cond_5

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_5
    return-object v0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .registers 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_7
.end method

.method private getSelectedCondition()Landroid/service/notification/Condition;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 406
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_1c

    .line 407
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 408
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_19

    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 409
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    return-object v3

    .line 406
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 412
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_1c
    return-object v4
.end method

.method private getSelectedZen(I)I
    .registers 4
    .param p1, "defValue"    # I

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 417
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_e
    return p1
.end method

.method private getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .registers 11

    .prologue
    .line 536
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 537
    .local v7, "weekRange":Ljava/util/GregorianCalendar;
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    .line 538
    .local v8, "now":J
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 539
    const/4 v1, 0x5

    const/4 v4, 0x6

    invoke-virtual {v7, v1, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 540
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getNextAlarm()J

    move-result-wide v2

    .line 541
    .local v2, "nextAlarmMs":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_45

    .line 542
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 543
    .local v0, "nextAlarm":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 544
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setToMidnight(Ljava/util/Calendar;)V

    .line 546
    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-ltz v1, :cond_45

    .line 547
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 548
    sub-long v4, v2, v8

    long-to-float v4, v4

    const v5, 0x476a6000    # 60000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 549
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/4 v6, 0x1

    .line 547
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v1

    return-object v1

    .line 552
    .end local v0    # "nextAlarm":Ljava/util/GregorianCalendar;
    :cond_45
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVisibleConditions()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "rt":I
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 569
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1e

    .line 570
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_18
    add-int/2addr v2, v3

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    move v3, v4

    .line 570
    goto :goto_18

    .line 572
    :cond_1e
    return v2
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .registers 8
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 392
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_22
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibleConditions()I

    move-result v0

    .line 394
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    if-ge v1, v0, :cond_45

    .line 395
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 396
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    if-eqz v2, :cond_42

    .line 397
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 398
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 394
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 390
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_45
    return-void
.end method

.method private handleUpdateConditions()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 488
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 489
    return-void

    .line 491
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v4, :cond_8c

    const/4 v0, 0x0

    .line 492
    .local v0, "conditionCount":I
    :goto_13
    sget-boolean v4, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateConditions conditionCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_30
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->forever()Landroid/service/notification/Condition;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 497
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_50

    .line 498
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 502
    :cond_50
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v4, :cond_75

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v1

    .line 504
    .local v1, "nextAlarmCondition":Landroid/service/notification/Condition;
    if-eqz v1, :cond_90

    .line 505
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 509
    invoke-direct {p0, v1, v4, v7}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 519
    .end local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_75
    :goto_75
    iget-boolean v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v4, :cond_82

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 520
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    .line 522
    :cond_82
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eqz v5, :cond_a3

    :goto_88
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    return-void

    .line 491
    .end local v0    # "conditionCount":I
    :cond_8c
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v4

    .restart local v0    # "conditionCount":I
    goto :goto_13

    .line 513
    .restart local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_90
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_75

    .end local v1    # "nextAlarmCondition":Landroid/service/notification/Condition;
    :cond_a3
    move v2, v3

    .line 522
    goto :goto_88
.end method

.method private handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 4
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 368
    if-eqz p1, :cond_10

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 369
    .local v1, "zen":I
    :goto_5
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 370
    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 371
    .local v0, "c":Landroid/service/notification/Condition;
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    .line 367
    return-void

    .line 368
    .end local v0    # "c":Landroid/service/notification/Condition;
    .end local v1    # "zen":I
    :cond_10
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private handleUpdateZen(I)V
    .registers 6
    .param p1, "zen"    # I

    .prologue
    .line 375
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, p1, :cond_12

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 377
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 379
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 382
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v1, :cond_35

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedCondition()Landroid/service/notification/Condition;

    move-result-object v0

    .line 384
    .local v0, "selected":Landroid/service/notification/Condition;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 385
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 374
    .end local v0    # "selected":Landroid/service/notification/Condition;
    :cond_35
    return-void
.end method

.method private hideAllConditions()V
    .registers 5

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 577
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 578
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 575
    :cond_17
    return-void
.end method

.method private static isCountdown(Landroid/service/notification/Condition;)Z
    .registers 2
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 610
    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .registers 4
    .param p1, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 614
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mForeverId:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;ZI)V
    .registers 27
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z
    .param p4, "rowId"    # I

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0xa3

    move/from16 v0, p3

    invoke-static {v5, v9, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 744
    const/4 v14, 0x0

    .line 745
    .local v14, "newCondition":Landroid/service/notification/Condition;
    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v4, v5

    .line 746
    .local v4, "N":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_a4

    .line 748
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v11

    .line 749
    .local v11, "conditionId":Landroid/net/Uri;
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 750
    .local v18, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 751
    .local v16, "now":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_27
    if-ge v12, v4, :cond_50

    .line 752
    if-eqz p3, :cond_96

    move v13, v12

    .line 753
    .local v13, "j":I
    :goto_2c
    sget-object v5, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v8, v5, v13

    .line 754
    .local v8, "bucketMinutes":I
    const v5, 0xea60

    mul-int/2addr v5, v8

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v6, v16, v20

    .line 755
    .local v6, "bucketTime":J
    if-eqz p3, :cond_9b

    cmp-long v5, v6, v18

    if-lez v5, :cond_9b

    .line 756
    :cond_3f
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 758
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 759
    const/4 v10, 0x0

    .line 757
    invoke-static/range {v5 .. v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v14

    .line 763
    .end local v6    # "bucketTime":J
    .end local v8    # "bucketMinutes":I
    .end local v13    # "j":I
    .end local v14    # "newCondition":Landroid/service/notification/Condition;
    :cond_50
    if-nez v14, :cond_6c

    .line 764
    sget v5, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 765
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 766
    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 765
    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    .line 774
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v16    # "now":J
    .end local v18    # "time":J
    :cond_6c
    :goto_6c
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 775
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 776
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 778
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 742
    return-void

    .line 752
    .restart local v11    # "conditionId":Landroid/net/Uri;
    .restart local v12    # "i":I
    .restart local v14    # "newCondition":Landroid/service/notification/Condition;
    .restart local v16    # "now":J
    .restart local v18    # "time":J
    :cond_96
    add-int/lit8 v5, v4, -0x1

    sub-int v13, v5, v12

    .restart local v13    # "j":I
    goto :goto_2c

    .line 755
    .restart local v6    # "bucketTime":J
    .restart local v8    # "bucketMinutes":I
    :cond_9b
    if-nez p3, :cond_a1

    cmp-long v5, v6, v18

    if-ltz v5, :cond_3f

    .line 751
    :cond_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    .line 770
    .end local v6    # "bucketTime":J
    .end local v8    # "bucketMinutes":I
    .end local v11    # "conditionId":Landroid/net/Uri;
    .end local v12    # "i":I
    .end local v13    # "j":I
    .end local v16    # "now":J
    .end local v18    # "time":J
    :cond_a4
    add-int/lit8 v9, v4, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eqz p3, :cond_d0

    const/4 v5, 0x1

    :goto_ad
    add-int/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 772
    sget-object v9, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v9, v9, v10

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 771
    invoke-static {v5, v9, v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v14

    .local v14, "newCondition":Landroid/service/notification/Condition;
    goto :goto_6c

    .line 770
    .local v14, "newCondition":Landroid/service/notification/Condition;
    :cond_d0
    const/4 v5, -0x1

    goto :goto_ad
.end method

.method private static parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 476
    if-nez p1, :cond_6

    return-object v4

    .line 477
    :cond_6
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 478
    .local v2, "time":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_11

    return-object v4

    .line 479
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 480
    .local v8, "now":J
    sub-long v10, v2, v8

    .line 481
    .local v10, "span":J
    cmp-long v0, v10, v6

    if-lez v0, :cond_26

    sget v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v10, v0

    if-lez v0, :cond_27

    :cond_26
    return-object v4

    .line 483
    :cond_27
    long-to-float v0, v10

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 484
    const/4 v6, 0x0

    move-object v1, p0

    .line 482
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method private static prefKeyForConfirmation(I)Ljava/lang/String;
    .registers 2
    .param p0, "zen"    # I

    .prologue
    .line 216
    packed-switch p0, :pswitch_data_e

    .line 222
    const/4 v0, 0x0

    return-object v0

    .line 218
    :pswitch_5
    const-string/jumbo v0, "DndConfirmedPriorityIntroduction"

    return-object v0

    .line 220
    :pswitch_9
    const-string/jumbo v0, "DndConfirmedSilenceIntroduction"

    return-object v0

    .line 216
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .registers 4
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 356
    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method

.method private select(Landroid/service/notification/Condition;)V
    .registers 7
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v4, -0x1

    .line 782
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_1e
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v1, v4, :cond_26

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-nez v1, :cond_33

    .line 784
    :cond_26
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Ignoring condition selection outside of manual zen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_32
    return-void

    .line 787
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 788
    .local v0, "realConditionId":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v1, :cond_43

    .line 789
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$10;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 796
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 797
    if-nez v0, :cond_55

    .line 798
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    .line 802
    :cond_4d
    :goto_4d
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 781
    return-void

    .line 799
    :cond_55
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v1, v4, :cond_4d

    .line 800
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->setMinuteIndex(I)V

    goto :goto_4d
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 342
    :cond_9
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 343
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2e
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 340
    return-void
.end method

.method private setExpanded(Z)V
    .registers 5
    .param p1, "expanded"    # Z

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 281
    :cond_5
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExpanded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_22
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->ensureSelection()V

    .line 286
    :cond_31
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    .line 279
    return-void
.end method

.method private setRequestingConditions(Z)V
    .registers 6
    .param p1, "requesting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_6

    return-void

    .line 293
    :cond_6
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_23
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_76

    .line 296
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/content/Context;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_5f

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 304
    :goto_3a
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_59
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 291
    :goto_5e
    return-void

    .line 300
    :cond_5f
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 301
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 302
    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v1, v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 301
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_3a

    .line 309
    :cond_76
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    goto :goto_5e
.end method

.method private setSessionExitCondition(Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 256
    :cond_9
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSessionExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2a
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 254
    return-void
.end method

.method private setToMidnight(Ljava/util/Calendar;)V
    .registers 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 556
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 557
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 558
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 559
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 555
    return-void
.end method

.method private updateWidgets()V
    .registers 10

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 421
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->isTransitioning()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 422
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->pendingUpdateWidgets()V

    .line 423
    return-void

    .line 425
    :cond_11
    invoke-direct {p0, v7}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v2

    .line 426
    .local v2, "zen":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_69

    const/4 v3, 0x1

    .line 427
    .local v3, "zenImportant":Z
    :goto_19
    const/4 v5, 0x2

    if-ne v2, v5, :cond_6b

    const/4 v4, 0x1

    .line 428
    .local v4, "zenNone":Z
    :goto_1d
    if-eqz v3, :cond_27

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get0(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 429
    :cond_27
    if-eqz v4, :cond_31

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->-get1(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z

    move-result v5

    if-eqz v5, :cond_6f

    :cond_31
    const/4 v0, 0x0

    .line 431
    .local v0, "introduction":Z
    :goto_32
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v5, :cond_71

    move v5, v6

    :goto_39
    invoke-virtual {v8, v5}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 432
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    if-eqz v0, :cond_73

    move v5, v7

    :goto_41
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 433
    if-eqz v0, :cond_58

    .line 434
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    if-eqz v3, :cond_75

    const v5, 0x7f0f02ea

    :goto_4d
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v8, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    if-eqz v3, :cond_81

    move v5, v7

    :goto_55
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    :cond_58
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->computeAlarmWarningText(Z)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    if-eqz v1, :cond_83

    :goto_60
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-void

    .line 426
    .end local v0    # "introduction":Z
    .end local v1    # "warning":Ljava/lang/String;
    .end local v3    # "zenImportant":Z
    .end local v4    # "zenNone":Z
    :cond_69
    const/4 v3, 0x0

    .restart local v3    # "zenImportant":Z
    goto :goto_19

    .line 427
    :cond_6b
    const/4 v4, 0x0

    .restart local v4    # "zenNone":Z
    goto :goto_1d

    .line 428
    :cond_6d
    const/4 v0, 0x1

    .restart local v0    # "introduction":Z
    goto :goto_32

    .line 429
    .end local v0    # "introduction":Z
    :cond_6f
    const/4 v0, 0x1

    .restart local v0    # "introduction":Z
    goto :goto_32

    :cond_71
    move v5, v7

    .line 431
    goto :goto_39

    :cond_73
    move v5, v6

    .line 432
    goto :goto_41

    .line 435
    :cond_75
    iget-boolean v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mVoiceCapable:Z

    if-eqz v5, :cond_7d

    const v5, 0x7f0f02ec

    goto :goto_4d

    .line 436
    :cond_7d
    const v5, 0x7f0f02ed

    goto :goto_4d

    :cond_81
    move v5, v6

    .line 437
    goto :goto_55

    .restart local v1    # "warning":Ljava/lang/String;
    :cond_83
    move v7, v6

    .line 440
    goto :goto_60
.end method


# virtual methods
.method protected addZenConditions(I)V
    .registers 8
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_2b

    .line 315
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040106

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    .local v1, "rb":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 317
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 318
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040107

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, "rbc":Landroid/view/View;
    add-int v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 320
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 313
    .end local v1    # "rb":Landroid/view/View;
    .end local v2    # "rbc":Landroid/view/View;
    :cond_2b
    return-void
.end method

.method protected createZenButtons()V
    .registers 5

    .prologue
    .line 154
    const v0, 0x7f120296

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 157
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    const v2, 0x7f0f02f9

    .line 156
    const v3, 0x7f0f02f5

    .line 155
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 160
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    const v2, 0x7f0f02fb

    .line 159
    const v3, 0x7f0f02f8

    .line 158
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 163
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    const v2, 0x7f0f02fa

    .line 162
    const v3, 0x7f0f02f7

    .line 161
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 153
    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .registers 7
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 326
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isCountdownConditionSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    .line 327
    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mCountdownConditionSupported:Z

    if-eqz v2, :cond_47

    const/4 v0, 0x2

    .line 328
    .local v0, "countdownDelta":I
    :goto_f
    add-int/lit8 v1, v0, 0x1

    .line 329
    .local v1, "minConditions":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->addZenConditions(I)V

    .line 330
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 331
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 332
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init mExitCondition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_43
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->hideAllConditions()V

    .line 324
    return-void

    .line 327
    .end local v0    # "countdownDelta":I
    .end local v1    # "minConditions":I
    :cond_47
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 229
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_10
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 231
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 232
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 237
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-eqz v1, :cond_3a

    const/4 v0, 0x0

    :cond_3a
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 227
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v0, :cond_c

    .line 203
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->updateLocale()V

    .line 200
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 242
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 243
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 245
    iput-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttached:Z

    .line 246
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 247
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 248
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSessionExitCondition(Landroid/service/notification/Condition;)V

    .line 250
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTransitionHelper:Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel$TransitionHelper;->clear()V

    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenModePanel;->createZenButtons()V

    .line 171
    const v0, 0x7f120297

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroduction:Landroid/view/View;

    .line 172
    const v0, 0x7f120299

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 174
    const v0, 0x7f120298

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionConfirm:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f12029a

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenIntroductionCustomize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 193
    const v0, 0x7f12029b

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f12029e

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenAlarmWarning:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f12029c

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 196
    const v0, 0x7f12029d

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 168
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 363
    return-void
.end method
