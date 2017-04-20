.class public Lcom/android/systemui/recents/tv/views/TaskCardView;
.super Landroid/widget/LinearLayout;
.source "TaskCardView.java"


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCornerRadius:I

.field private mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

.field private mDismissIconView:Landroid/view/View;

.field private mDismissState:Z

.field private mInfoFieldView:Landroid/view/View;

.field private mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mThumbnailView:Landroid/view/View;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTouchExplorationEnabled:Z

.field private mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/tv/views/TaskCardView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mCornerRadius:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 78
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setLayoutDirection(I)V

    .line 74
    return-void
.end method

.method public static getNumberOfVisibleTasks(Landroid/content/Context;)I
    .registers 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 346
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v9, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 347
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 348
    .local v3, "display":Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 349
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 350
    iget v5, v6, Landroid/graphics/Point;->x:I

    .line 351
    .local v5, "screenWidth":I
    const v9, 0x7f10026d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 352
    .local v2, "cardWidth":I
    const v9, 0x7f10027b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 353
    .local v7, "spacing":I
    int-to-double v10, v5

    int-to-double v12, v2

    int-to-double v14, v7

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    double-to-int v9, v10

    return v9
.end method

.method public static getStartingCardThumbnailRect(Landroid/content/Context;ZI)Landroid/graphics/Rect;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasFocus"    # Z
    .param p2, "numberOfTasks"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    if-le p2, v0, :cond_8

    .line 132
    invoke-static {p0, p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getStartingCardThumbnailRectForStartPosition(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 134
    :cond_8
    invoke-static {p0, p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getStartingCardThumbnailRectForFocusedPosition(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getStartingCardThumbnailRectForFocusedPosition(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasFocus"    # Z

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 168
    .local v10, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v9, "out":Landroid/util/TypedValue;
    const v19, 0x7f0e0061

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v9, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 170
    if-eqz p1, :cond_113

    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    .line 172
    .local v11, "scale":F
    :goto_1b
    const v19, 0x7f10026d

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    .line 173
    .local v16, "width":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v11

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 174
    .local v17, "widthDelta":I
    const v19, 0x7f10026e

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 175
    .local v7, "height":I
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v11

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v8, v0

    .line 176
    .local v8, "heightDelta":I
    const v19, 0x7f100279

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    .line 178
    .local v14, "topMargin":I
    const v19, 0x7f10026f

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    .line 179
    const v20, 0x7f100275

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    .line 178
    add-int v5, v19, v20

    .line 180
    .local v5, "headerHeight":I
    int-to-float v0, v5

    move/from16 v19, v0

    mul-float v19, v19, v11

    int-to-float v0, v5

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 183
    .local v6, "headerHeightDelta":I
    const v19, 0x7f100283

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v19

    .line 184
    const v20, 0x7f100284

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    .line 183
    add-int v19, v19, v20

    .line 185
    const v20, 0x7f100282

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    .line 183
    add-int v19, v19, v20

    .line 186
    const v20, 0x7f100285

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    .line 183
    add-int v2, v19, v20

    .line 188
    .local v2, "dismissAreaHeight":I
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, v11

    int-to-float v0, v2

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v3, v0

    .line 190
    .local v3, "dismissAreaHeightDelta":I
    add-int v19, v8, v6

    add-int v15, v19, v3

    .line 192
    .local v15, "totalHeightDelta":I
    const-string/jumbo v19, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 193
    .local v18, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 194
    .local v4, "display":Landroid/view/Display;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 195
    .local v13, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 196
    iget v12, v13, Landroid/graphics/Point;->x:I

    .line 198
    .local v12, "screenWidth":I
    new-instance v19, Landroid/graphics/Rect;

    div-int/lit8 v20, v12, 0x2

    div-int/lit8 v21, v16, 0x2

    sub-int v20, v20, v21

    div-int/lit8 v21, v17, 0x2

    sub-int v20, v20, v21

    .line 199
    div-int/lit8 v21, v15, 0x2

    sub-int v21, v14, v21

    int-to-float v0, v5

    move/from16 v22, v0

    mul-float v22, v22, v11

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 200
    div-int/lit8 v22, v12, 0x2

    div-int/lit8 v23, v16, 0x2

    add-int v22, v22, v23

    div-int/lit8 v23, v17, 0x2

    add-int v22, v22, v23

    .line 201
    div-int/lit8 v23, v15, 0x2

    sub-int v23, v14, v23

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v24, v24, v11

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    .line 202
    int-to-float v0, v7

    move/from16 v24, v0

    mul-float v24, v24, v11

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 201
    add-int v23, v23, v24

    .line 198
    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v19

    .line 170
    .end local v2    # "dismissAreaHeight":I
    .end local v3    # "dismissAreaHeightDelta":I
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "headerHeight":I
    .end local v6    # "headerHeightDelta":I
    .end local v7    # "height":I
    .end local v8    # "heightDelta":I
    .end local v11    # "scale":F
    .end local v12    # "screenWidth":I
    .end local v13    # "size":Landroid/graphics/Point;
    .end local v14    # "topMargin":I
    .end local v15    # "totalHeightDelta":I
    .end local v16    # "width":I
    .end local v17    # "widthDelta":I
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_113
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "scale":F
    goto/16 :goto_1b
.end method

.method private static getStartingCardThumbnailRectForStartPosition(Landroid/content/Context;Z)Landroid/graphics/Rect;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasFocus"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    .local v3, "res":Landroid/content/res/Resources;
    const v10, 0x7f10026d

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 143
    .local v8, "width":I
    const v10, 0x7f10027b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    mul-int/lit8 v7, v10, 0x2

    .line 144
    .local v7, "totalSpacing":I
    if-eqz p1, :cond_1e

    .line 145
    const v10, 0x7f10027c

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    add-int/2addr v7, v10

    .line 147
    :cond_1e
    const v10, 0x7f10026e

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 148
    .local v2, "height":I
    const v10, 0x7f100279

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 149
    .local v6, "topMargin":I
    const v10, 0x7f10026f

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 150
    const v11, 0x7f100275

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 149
    add-int v1, v10, v11

    .line 152
    .local v1, "headerHeight":I
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 153
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 154
    .local v0, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 155
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 156
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 158
    .local v4, "screenWidth":I
    new-instance v10, Landroid/graphics/Rect;

    div-int/lit8 v11, v4, 0x2

    div-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    .line 159
    add-int v12, v6, v1

    .line 160
    div-int/lit8 v13, v4, 0x2

    div-int/lit8 v14, v8, 0x2

    add-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/2addr v13, v8

    .line 161
    add-int v14, v6, v1

    add-int/2addr v14, v2

    .line 158
    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v10
.end method

.method private setAsBannerView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bannerView"    # Landroid/widget/ImageView;

    .prologue
    .line 312
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 314
    const v2, 0x7f100270

    .line 313
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 316
    const v2, 0x7f100271

    .line 315
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 317
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    return-void
.end method

.method private setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 324
    const v2, 0x7f100272

    .line 323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 326
    const v2, 0x7f100273

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 328
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    return-void
.end method

.method private setAsScreenShotView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .param p2, "screenshotView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, -0x1

    .line 296
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 298
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 300
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 302
    new-instance v1, Lcom/android/systemui/recents/tv/views/TaskCardView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView$1;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 308
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    return-void
.end method

.method private setDismissState(Z)V
    .registers 3
    .param p1, "dismissState"    # Z

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    if-eq v0, p1, :cond_11

    .line 241
    iput-boolean p1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_11

    .line 246
    if-eqz p1, :cond_12

    .line 247
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startEnterAnimation()V

    .line 239
    :cond_11
    :goto_11
    return-void

    .line 249
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startExitAnimation()V

    goto :goto_11
.end method

.method private setThumbnailView()V
    .registers 8

    .prologue
    .line 273
    const v4, 0x7f120214

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 274
    .local v3, "screenshotView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 275
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f

    .line 276
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsScreenShotView(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 272
    :goto_1e
    return-void

    .line 279
    :cond_1f
    const/4 v0, 0x0

    .line 280
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    :try_start_20
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_30

    .line 281
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_30
    if-eqz v0, :cond_59

    .line 284
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsBannerView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_35} :catch_36

    goto :goto_1e

    .line 288
    :catch_36
    move-exception v1

    .line 289
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "TaskCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_1e

    .line 286
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_59
    :try_start_59
    iget-object v4, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setAsIconView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_60} :catch_36

    goto :goto_1e
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 236
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 210
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 211
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setDismissState(Z)V

    .line 212
    return v1

    .line 217
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 219
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setDismissState(Z)V

    .line 224
    :cond_2d
    :goto_2d
    return v1

    .line 221
    :cond_2e
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->requestPipControlsFocus()V

    goto :goto_2d

    .line 230
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isInDismissState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    return v1

    .line 208
    nop

    :pswitch_data_40
    .packed-switch 0x13
        :pswitch_1e
        :pswitch_e
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public getDismissIconView()Landroid/view/View;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 119
    return-void
.end method

.method public getFocusedThumbnailRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 126
    return-object v0
.end method

.method public getInfoFieldView()Landroid/view/View;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    return-object v0
.end method

.method public getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    return-object v0
.end method

.method public getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mBadgeView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setThumbnailView()V

    .line 108
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->reset()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->reset()V

    .line 103
    return-void
.end method

.method public isInDismissState()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v1, 0x7f120213

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mThumbnailView:Landroid/view/View;

    .line 85
    const v1, 0x7f120210

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    .line 86
    const v1, 0x7f120212

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTitleTextView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f120211

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mBadgeView:Landroid/widget/ImageView;

    .line 88
    const v1, 0x7f120215

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    .line 89
    new-instance v1, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    const v2, 0x7f100248

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mCornerRadius:I

    .line 92
    new-instance v1, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mInfoFieldView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mRecentsRowFocusAnimationHolder:Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    .line 93
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 94
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    .line 95
    iget-boolean v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mTouchExplorationEnabled:Z

    if-nez v1, :cond_6d

    .line 96
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_65
    new-instance v1, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mViewFocusAnimator:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    .line 82
    return-void

    .line 98
    :cond_6d
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissIconView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65
.end method

.method public startDismissTaskAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissState:Z

    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskCardView;->mDismissAnimationsHolder:Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/tv/animations/DismissAnimationsHolder;->startDismissAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    return-void
.end method
