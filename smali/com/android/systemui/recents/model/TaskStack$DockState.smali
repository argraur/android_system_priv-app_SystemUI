.class public Lcom/android/systemui/recents/model/TaskStack$DockState;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static final TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

.field private static final mTmpRect:Landroid/graphics/Rect;


# instance fields
.field public final createMode:I

.field private final dockArea:Landroid/graphics/RectF;

.field public final dockSide:I

.field private final expandedTouchDockArea:Landroid/graphics/RectF;

.field private final touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 261
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 262
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 261
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->NONE:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 263
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 265
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v6, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v7, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 263
    const/4 v1, 0x1

    .line 264
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 263
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 267
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 269
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e000000    # 0.125f

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 270
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 267
    const/4 v1, 0x2

    .line 268
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 267
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 271
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 273
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v6, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v7, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 274
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 271
    const/4 v1, 0x3

    .line 272
    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 271
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 275
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 277
    new-instance v6, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v6, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f600000    # 0.875f

    invoke-direct {v7, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 278
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v8, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 275
    const/4 v1, 0x4

    .line 276
    const/4 v2, 0x1

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 275
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->BOTTOM:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 436
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    .line 248
    return-void
.end method

.method constructor <init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 15
    .param p1, "dockSide"    # I
    .param p2, "createMode"    # I
    .param p3, "dockAreaAlpha"    # I
    .param p4, "hintTextAlpha"    # I
    .param p5, "hintTextOrientation"    # I
    .param p6, "touchArea"    # Landroid/graphics/RectF;
    .param p7, "dockArea"    # Landroid/graphics/RectF;
    .param p8, "expandedTouchDockArea"    # Landroid/graphics/RectF;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    .line 450
    iput p2, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->createMode:I

    .line 451
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 452
    const v4, 0x7f0f02dd

    .line 451
    const/4 v5, 0x0

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;-><init>(IIIILcom/android/systemui/recents/model/TaskStack$DockState$ViewState;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    .line 453
    iput-object p7, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    .line 454
    iput-object p6, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    .line 455
    iput-object p8, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    .line 448
    return-void
.end method

.method private getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 538
    iget v0, p1, Landroid/graphics/RectF;->left:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 539
    iget v2, p1, Landroid/graphics/RectF;->right:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 538
    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 537
    return-void
.end method

.method private updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 526
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 527
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 531
    :cond_c
    :goto_c
    return-object p1

    .line 528
    :cond_d
    iget v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 529
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_c
.end method


# virtual methods
.method public acceptsDrop(IIIILandroid/graphics/Rect;Z)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "isCurrentTarget"    # Z

    .prologue
    .line 283
    if-eqz p6, :cond_10

    .line 284
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    .line 285
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0

    .line 287
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->touchArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    .line 288
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 289
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dividerSize"    # I
    .param p4, "insets"    # Landroid/graphics/Rect;
    .param p5, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x1

    .line 481
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1b

    .line 482
    .local v6, "isHorizontalDivision":Z
    :goto_9
    invoke-static {v6, p4, p1, p2, p3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 484
    .local v0, "position":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 485
    .local v2, "newWindowBounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 487
    return-object v2

    .line 481
    .end local v0    # "position":I
    .end local v2    # "newWindowBounds":Landroid/graphics/Rect;
    .end local v6    # "isHorizontalDivision":Z
    :cond_1b
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 18
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dividerSize"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "layoutAlgorithm"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .param p7, "res"    # Landroid/content/res/Resources;
    .param p8, "windowRectOut"    # Landroid/graphics/Rect;

    .prologue
    .line 499
    invoke-virtual/range {p7 .. p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    const/4 v8, 0x1

    .line 500
    .local v8, "isHorizontalDivision":Z
    :goto_a
    invoke-static {v8, p5, p2, p3, p4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 503
    .local v0, "position":I
    iget v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    move-object/from16 v2, p8

    move v3, p2

    move v4, p3

    move v5, p4

    .line 502
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 507
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v7, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39

    .line 511
    const/4 v4, 0x0

    .line 515
    .local v4, "top":I
    :goto_2c
    iget v6, p5, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    move-object v1, p6

    move-object v2, p1

    move-object/from16 v3, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 517
    return-object v7

    .line 499
    .end local v0    # "position":I
    .end local v4    # "top":I
    .end local v7    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v8    # "isHorizontalDivision":Z
    :cond_37
    const/4 v8, 0x0

    goto :goto_a

    .line 512
    .restart local v0    # "position":I
    .restart local v7    # "taskStackBounds":Landroid/graphics/Rect;
    .restart local v8    # "isHorizontalDivision":Z
    :cond_39
    iget v4, p5, Landroid/graphics/Rect;->top:I

    .restart local v4    # "top":I
    goto :goto_2c
.end method

.method public getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    .line 470
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/model/TaskStack$DockState;->updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack$DockState;->viewState:Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$DockState$ViewState;->update(Landroid/content/Context;)V

    .line 461
    return-void
.end method
