.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$1;,
        Lcom/android/systemui/qs/QSAnimator$2;
    }
.end annotation


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mLastPosition:F

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQsContainer:Lcom/android/systemui/qs/QSContainer;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSAnimator;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .registers 7
    .param p1, "container"    # Lcom/android/systemui/qs/QSContainer;
    .param p2, "quickPanel"    # Lcom/android/systemui/qs/QuickQSPanel;
    .param p3, "panel"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 359
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    .line 358
    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 366
    new-instance v1, Lcom/android/systemui/qs/QSAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSAnimator$2;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    .line 77
    .local v0, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_44

    .line 78
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    .end local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    .line 70
    :goto_43
    return-void

    .line 81
    .restart local v0    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :cond_44
    const-string/jumbo v1, "QSAnimator"

    const-string/jumbo v2, "QS Not using page layout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private clearAnimationState()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_25

    .line 334
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 335
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 336
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 337
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 339
    .end local v3    # "v":Landroid/view/View;
    :cond_25
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 340
    .local v1, "N2":I
    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3d

    .line 341
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 330
    :cond_3d
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    aput v0, p1, v1

    .line 270
    const/4 v0, 0x1

    aput v1, p1, v0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 268
    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p1, "loc1"    # [I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 275
    if-eq p2, p3, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    .line 278
    :cond_5
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1d

    .line 279
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 280
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 282
    :cond_1d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    .line 274
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .registers 5
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v2, :cond_6

    .line 262
    return v1

    .line 264
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 265
    .local v0, "columnCount":I
    iget v2, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private updateAnimators()V
    .registers 32

    .prologue
    .line 143
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 144
    .local v6, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v21, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 145
    .local v21, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v22, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 147
    .local v22, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v25

    if-nez v25, :cond_1c

    return-void

    .line 148
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v20

    .line 149
    .local v20, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v5, 0x0

    .line 150
    .local v5, "count":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v11, v0, [I

    .line 151
    .local v11, "loc1":[I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v12, v0, [I

    .line 152
    .local v12, "loc2":[I
    const/4 v10, 0x0

    .line 153
    .local v10, "lastXDiff":I
    const/4 v9, 0x0

    .line 155
    .local v9, "lastX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tile$iterator":Ljava/util/Iterator;
    :goto_6b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_32f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/qs/QSTile;

    .line 162
    .local v16, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v19

    .line 163
    .local v19, "tileView":Lcom/android/systemui/qs/QSTileBaseView;
    if-nez v19, :cond_a6

    .line 164
    const-string/jumbo v25, "QSAnimator"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "tileView is null "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_a6
    move-object/from16 v25, v19

    .line 167
    check-cast v25, Lcom/android/systemui/qs/QSTileView;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    .line 168
    .local v8, "label":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v18

    .line 169
    .local v18, "tileIcon":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v5, v0, :cond_21a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21a

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/qs/QSTile;)Lcom/android/systemui/qs/QSTileBaseView;

    move-result-object v15

    .line 173
    .local v15, "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    const/16 v25, 0x0

    aget v9, v11, v25

    .line 174
    invoke-virtual {v15}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 176
    const/16 v25, 0x0

    aget v25, v12, v25

    const/16 v26, 0x0

    aget v26, v11, v26

    sub-int v23, v25, v26

    .line 177
    .local v23, "xDiff":I
    const/16 v25, 0x1

    aget v25, v12, v25

    const/16 v26, 0x1

    aget v26, v11, v26

    sub-int v24, v25, v26

    .line 178
    .local v24, "yDiff":I
    const/16 v25, 0x0

    aget v25, v11, v25

    sub-int v10, v25, v9

    .line 180
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 181
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 185
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 189
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 190
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v15    # "quickTileView":Lcom/android/systemui/qs/QSTileBaseView;
    .end local v23    # "xDiff":I
    .end local v24    # "yDiff":I
    :goto_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6b

    .line 195
    :cond_21a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    move/from16 v25, v0

    if-eqz v25, :cond_30d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v25

    if-eqz v25, :cond_30d

    .line 200
    const/16 v25, 0x0

    aget v26, v11, v25

    add-int v26, v26, v10

    aput v26, v11, v25

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v12, v1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 202
    const/16 v25, 0x0

    aget v25, v12, v25

    const/16 v26, 0x0

    aget v26, v11, v26

    sub-int v23, v25, v26

    .line 203
    .restart local v23    # "xDiff":I
    const/16 v25, 0x1

    aget v25, v12, v25

    const/16 v26, 0x1

    aget v26, v11, v26

    sub-int v24, v25, v26

    .line 205
    .restart local v24    # "yDiff":I
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 206
    const-string/jumbo v25, "translationX"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 207
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 208
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1fe

    .line 212
    .end local v23    # "xDiff":I
    .end local v24    # "yDiff":I
    :cond_30d
    const-string/jumbo v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto/16 :goto_1fe

    .line 218
    .end local v8    # "label":Landroid/widget/TextView;
    .end local v16    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    .end local v18    # "tileIcon":Landroid/view/View;
    .end local v19    # "tileView":Lcom/android/systemui/qs/QSTileBaseView;
    :cond_32f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_482

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object v4

    .line 221
    .local v4, "brightness":Landroid/view/View;
    if-eqz v4, :cond_4c3

    .line 222
    const-string/jumbo v25, "translationY"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput v27, v26, v28

    const/16 v27, 0x0

    const/16 v28, 0x1

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v4, v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 223
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 224
    const-string/jumbo v26, "alpha"

    .line 223
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 224
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v28, v27, v29

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x1

    aput v28, v27, v29

    .line 223
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 225
    const/high16 v26, 0x3f000000    # 0.5f

    .line 223
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_3af
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 235
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 236
    const v26, 0x3f5c28f6    # 0.86f

    .line 235
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v26

    const-string/jumbo v27, "alpha"

    .line 235
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 237
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 235
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v26

    const-string/jumbo v27, "alpha"

    .line 235
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 238
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v29, v28, v30

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 235
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/qs/QSFooter;->getView()Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v13, 0x0

    .line 241
    .local v13, "px":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 242
    .local v14, "py":F
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_4cd

    .line 243
    const/high16 v13, 0x3f800000    # 1.0f

    .line 247
    :cond_44b
    :goto_44b
    new-instance v7, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v7, v0, v1, v13, v14}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 248
    .local v7, "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    invoke-virtual {v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 249
    invoke-virtual {v7}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 250
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 251
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 253
    .end local v4    # "brightness":Landroid/view/View;
    .end local v7    # "interpolatorBuilder":Lcom/android/systemui/qs/PathInterpolatorBuilder;
    .end local v13    # "px":F
    .end local v14    # "py":F
    :cond_482
    new-instance v25, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    .line 253
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 254
    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    aput v29, v28, v30

    const/16 v29, 0x0

    const/16 v30, 0x1

    aput v29, v28, v30

    .line 253
    invoke-virtual/range {v25 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    move-object/from16 v26, v0

    .line 253
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    .line 256
    const/high16 v26, 0x3f000000    # 0.5f

    .line 253
    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 142
    return-void

    .line 229
    .restart local v4    # "brightness":Landroid/view/View;
    :cond_4c3
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto/16 :goto_3af

    .line 244
    .restart local v13    # "px":F
    .restart local v14    # "py":F
    :cond_4cd
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v25

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_44b

    .line 245
    const v13, 0x3ecccccd    # 0.4f

    goto/16 :goto_44b
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .registers 5

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1e

    .line 315
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 311
    :cond_1e
    return-void
.end method

.method public onAnimationAtStart()V
    .registers 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public onAnimationStarted()V
    .registers 6

    .prologue
    const/4 v3, 0x4

    .line 321
    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v2, :cond_26

    move v2, v3

    :goto_8
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 322
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_28

    .line 323
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 325
    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 321
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_26
    const/4 v2, 0x0

    goto :goto_8

    .line 320
    :cond_28
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method public onPageChanged(Z)V
    .registers 3
    .param p1, "isFirst"    # Z

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 136
    :cond_5
    if-nez p1, :cond_a

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 139
    :cond_a
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    .line 134
    return-void
.end method

.method public onRtlChanged()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 85
    return-void
.end method

.method public onTilesChanged()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    const-string/jumbo v2, "sysui_qs_fancy_anim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 120
    if-eqz p2, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_20

    :cond_13
    :goto_13
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v0, :cond_1c

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 130
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 118
    return-void

    :cond_20
    move v0, v1

    .line 120
    goto :goto_13

    .line 124
    :cond_22
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 125
    if-eqz p2, :cond_33

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_36

    :cond_33
    :goto_33
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    goto :goto_1c

    :cond_36
    move v0, v1

    goto :goto_33

    .line 126
    :cond_38
    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_1c
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_fancy_anim"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 106
    const-string/jumbo v2, "sysui_qs_move_whole_rows"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_qqs_count"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 105
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsContainer:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 110
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .registers 2
    .param p1, "qsh"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    .line 97
    return-void
.end method

.method public setOnKeyguard(Z)V
    .registers 4
    .param p1, "onKeyguard"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x4

    :goto_9
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_13

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 89
    :cond_13
    return-void

    .line 91
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setPosition(F)V
    .registers 4
    .param p1, "position"    # F

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_5

    return-void

    .line 287
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_a

    .line 288
    return-void

    .line 290
    :cond_a
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_39

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_38

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 285
    :cond_38
    :goto_38
    return-void

    .line 301
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_38
.end method
