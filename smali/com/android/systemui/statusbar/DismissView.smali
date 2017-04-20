.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "DismissView.java"


# instance fields
.field private mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 35
    const v0, 0x7f120251

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isButtonVisible()Z
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissViewButton;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isOnEmptySpace(FF)Z
    .registers 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1d

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1e

    .line 49
    :cond_1d
    :goto_1d
    return v0

    .line 51
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1d

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    const v1, 0x7f0f031f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f028b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    .line 39
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
