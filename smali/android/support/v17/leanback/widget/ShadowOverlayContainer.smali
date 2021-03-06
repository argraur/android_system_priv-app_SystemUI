.class public Landroid/support/v17/leanback/widget/ShadowOverlayContainer;
.super Landroid/widget/FrameLayout;
.source "ShadowOverlayContainer.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mFocusedZ:F

.field private mInitialized:Z

.field private mOverlayColor:I

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mShadowType:I

.field private mUnfocusedZ:F

.field private mWrappedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 102
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useStaticShadow()V

    .line 103
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useDynamicShadow()V

    .line 100
    return-void
.end method

.method public static supportsDynamicShadow()Z
    .registers 1

    .prologue
    .line 129
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/ShadowHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ShadowHelper;->supportsDynamicShadow()Z

    move-result v0

    return v0
.end method

.method public static supportsShadow()Z
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->getInstance()Landroid/support/v17/leanback/widget/StaticShadowHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/StaticShadowHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2d

    iget v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayColor:I

    if-eqz v0, :cond_2d

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    .line 250
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 245
    :cond_2d
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 316
    if-eqz p1, :cond_36

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    if-eqz v0, :cond_36

    .line 317
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 318
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 319
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mWrappedView:Landroid/view/View;

    sget-object v1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 320
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setPivotX(F)V

    .line 321
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setPivotY(F)V

    .line 314
    :cond_36
    return-void
.end method

.method public useDynamicShadow()V
    .registers 4

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_normal_z:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_material_shadow_focused_z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->useDynamicShadow(FF)V

    .line 144
    return-void
.end method

.method public useDynamicShadow(FF)V
    .registers 5
    .param p1, "unfocusedZ"    # F
    .param p2, "focusedZ"    # F

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-eqz v0, :cond_d

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_d
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 159
    iput p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mUnfocusedZ:F

    .line 160
    iput p2, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mFocusedZ:F

    .line 153
    :cond_1a
    return-void
.end method

.method public useStaticShadow()V
    .registers 3

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mInitialized:Z

    if-eqz v0, :cond_d

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_d
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsShadow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->mShadowType:I

    .line 167
    :cond_16
    return-void
.end method
