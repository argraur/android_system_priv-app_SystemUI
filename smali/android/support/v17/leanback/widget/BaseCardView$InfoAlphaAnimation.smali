.class Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;
.super Landroid/view/animation/Animation;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoAlphaAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/BaseCardView;
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    .line 899
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 900
    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    .line 901
    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    .line 899
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 906
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mStartValue:F

    iget v3, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->mDelta:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 908
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoAlphaAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v2, v2, Landroid/support/v17/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 905
    :cond_29
    return-void
.end method
