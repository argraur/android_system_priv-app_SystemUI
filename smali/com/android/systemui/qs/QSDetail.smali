.class public Lcom/android/systemui/qs/QSDetail;
.super Landroid/widget/LinearLayout;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetail$1;,
        Lcom/android/systemui/qs/QSDetail$2;,
        Lcom/android/systemui/qs/QSDetail$3;
    }
.end annotation


# instance fields
.field private mAnimatingOpen:Z

.field private mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private mClosingDetail:Z

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private mDetailContent:Landroid/view/ViewGroup;

.field private mDetailDoneButton:Landroid/widget/TextView;

.field private mDetailSettingsButton:Landroid/widget/TextView;

.field private final mDetailViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyExpanded:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private final mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mOpenX:I

.field private mOpenY:I

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mScanState:Z

.field private mSwitchState:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTriggeredExpand:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetail;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSDetail;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->checkPendingAnimations()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDetail;Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetail;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSDetail;ZZ)V
    .registers 3
    .param p1, "state"    # Z
    .param p2, "toggleEnabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 274
    new-instance v0, Lcom/android/systemui/qs/QSDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$1;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 307
    new-instance v0, Lcom/android/systemui/qs/QSDetail$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$2;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 328
    new-instance v0, Lcom/android/systemui/qs/QSDetail$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$3;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 73
    return-void
.end method

.method private checkPendingAnimations()V
    .registers 3

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleEnabled()Z

    move-result v0

    .line 270
    :goto_c
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 269
    return-void

    .line 271
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private handleScanStateChanged(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 257
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    if-ne v1, p1, :cond_5

    return-void

    .line 258
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mScanState:Z

    .line 259
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 260
    .local v0, "anim":Landroid/graphics/drawable/Animatable;
    if-eqz p1, :cond_20

    .line 261
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 262
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 256
    :goto_1f
    return-void

    .line 264
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 265
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_1f
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
    .registers 16
    .param p1, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 153
    if-eqz p1, :cond_46

    move v3, v8

    .line 154
    .local v3, "showingDetail":Z
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSDetail;->setClickable(Z)V

    .line 155
    if-eqz v3, :cond_6b

    .line 156
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v4

    .line 158
    .local v4, "toggleState":Ljava/lang/Boolean;
    if-nez v4, :cond_48

    .line 159
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setVisibility(I)V

    .line 160
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setClickable(Z)V

    .line 174
    :goto_25
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v7, :cond_68

    .line 175
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 176
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 180
    :goto_30
    iput p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 181
    iput p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    .line 192
    .end local v4    # "toggleState":Ljava/lang/Boolean;
    :cond_34
    :goto_34
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_7b

    move v10, v8

    :goto_39
    if-eqz p1, :cond_7d

    move v7, v8

    :goto_3c
    if-eq v10, v7, :cond_7f

    move v6, v8

    .line 193
    .local v6, "visibleDiff":Z
    :goto_3f
    if-nez v6, :cond_81

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-ne v7, p1, :cond_81

    return-void

    .end local v3    # "showingDetail":Z
    .end local v6    # "visibleDiff":Z
    :cond_46
    move v3, v9

    .line 153
    goto :goto_6

    .line 162
    .restart local v3    # "showingDetail":Z
    .restart local v4    # "toggleState":Ljava/lang/Boolean;
    :cond_48
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v9}, Landroid/widget/Switch;->setVisibility(I)V

    .line 163
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleEnabled()Z

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/qs/QSDetail;->handleToggleStateChanged(ZZ)V

    .line 164
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/qs/QSDetail$5;

    invoke-direct {v10, p0, p1}, Lcom/android/systemui/qs/QSDetail$5;-><init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_25

    .line 178
    :cond_68
    iput-boolean v9, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_30

    .line 184
    .end local v4    # "toggleState":Ljava/lang/Boolean;
    :cond_6b
    iget p2, p0, Lcom/android/systemui/qs/QSDetail;->mOpenX:I

    .line 185
    iget p3, p0, Lcom/android/systemui/qs/QSDetail;->mOpenY:I

    .line 186
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    if-eqz v7, :cond_34

    .line 187
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->animateToggleQSExpansion()V

    .line 188
    iput-boolean v9, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    goto :goto_34

    :cond_7b
    move v10, v9

    .line 192
    goto :goto_39

    :cond_7d
    move v7, v9

    goto :goto_3c

    :cond_7f
    move v6, v9

    goto :goto_3f

    .line 194
    .restart local v6    # "visibleDiff":Z
    :cond_81
    const/4 v1, 0x0

    .line 195
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz p1, :cond_112

    .line 196
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v5

    .line 197
    .local v5, "viewCacheIndex":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 198
    iget-object v11, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 197
    invoke-interface {p1, v10, v7, v11}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "detailView":Landroid/view/View;
    if-nez v0, :cond_a3

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Must return detail view"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 201
    :cond_a3
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 202
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    if-eqz v2, :cond_10f

    move v7, v9

    :goto_ac
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    new-instance v10, Lcom/android/systemui/qs/QSDetail$6;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/qs/QSDetail$6;-><init>(Lcom/android/systemui/qs/QSDetail;Landroid/content/Intent;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 211
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 214
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    new-array v10, v8, [Ljava/lang/Object;

    .line 216
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v9

    .line 215
    const v11, 0x7f0f0372

    .line 214
    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 217
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 218
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mHideGridContentWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 219
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    .line 231
    .end local v0    # "detailView":Landroid/view/View;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    .end local v5    # "viewCacheIndex":I
    :goto_ec
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->sendAccessibilityEvent(I)V

    .line 232
    if-eqz v6, :cond_10e

    .line 233
    if-eqz p1, :cond_137

    move v7, v8

    :goto_f6
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    .line 234
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    if-nez v7, :cond_100

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_13b

    .line 235
    :cond_100
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/QSDetail;->setAlpha(F)V

    .line 236
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v10, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v10, :cond_139

    :goto_10b
    invoke-virtual {v7, p2, p3, v8, v1}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 152
    :cond_10e
    :goto_10e
    return-void

    .line 202
    .restart local v0    # "detailView":Landroid/view/View;
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    .restart local v5    # "viewCacheIndex":I
    :cond_10f
    const/16 v7, 0x8

    goto :goto_ac

    .line 221
    .end local v0    # "detailView":Landroid/view/View;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    .end local v5    # "viewCacheIndex":I
    :cond_112
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_121

    .line 222
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v10

    invoke-static {v7, v10}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 224
    :cond_121
    iput-boolean v8, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    .line 225
    iput-object v11, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 226
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 227
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 228
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 229
    iget-object v7, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v7, v9}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    goto :goto_ec

    :cond_137
    move v7, v9

    .line 233
    goto :goto_f6

    :cond_139
    move v8, v9

    .line 236
    goto :goto_10b

    .line 238
    :cond_13b
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 239
    const-wide/16 v8, 0x12c

    .line 238
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_10e
.end method

.method private handleToggleStateChanged(ZZ)V
    .registers 4
    .param p1, "state"    # Z
    .param p2, "toggleEnabled"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mSwitchState:Z

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mAnimatingOpen:Z

    if-eqz v0, :cond_7

    .line 249
    return-void

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 246
    return-void
.end method

.method private updateDetailText()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    const v1, 0x7f0f02c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    const v1, 0x7f0f02c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public isClosingDetail()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mClosingDetail:Z

    return v0
.end method

.method public isShowingDetail()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v2, 0x7f100194

    .line 79
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 78
    :cond_27
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 92
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 93
    const v1, 0x1020019

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f1201db

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeader:Landroid/view/View;

    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 98
    const v1, 0x7f1201dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/qs/QSDetail;->updateDetailText()V

    .line 102
    new-instance v1, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 104
    new-instance v0, Lcom/android/systemui/qs/QSDetail$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetail$4;-><init>(Lcom/android/systemui/qs/QSDetail;)V

    .line 112
    .local v0, "doneListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "qsExpanded"    # Z

    .prologue
    .line 134
    if-nez p1, :cond_5

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSDetail;->mTriggeredExpand:Z

    .line 133
    :cond_5
    return-void
.end method

.method public setFullyExpanded(Z)V
    .registers 2
    .param p1, "fullyExpanded"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetail;->mFullyExpanded:Z

    .line 129
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 2
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 122
    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V
    .registers 5
    .param p1, "panel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "header"    # Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 115
    return-void
.end method
