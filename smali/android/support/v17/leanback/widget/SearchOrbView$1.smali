.class Landroid/support/v17/leanback/widget/SearchOrbView$1;
.super Ljava/lang/Object;
.source "SearchOrbView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchOrbView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchOrbView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchOrbView;

    .prologue
    .line 131
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->this$0:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "color":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$1;->this$0:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    .line 133
    return-void
.end method
