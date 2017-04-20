.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;
.super Landroid/view/Window;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0, p2}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 480
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 1

    .prologue
    .line 464
    return-void
.end method

.method public clearContentView()V
    .registers 1

    .prologue
    .line 484
    return-void
.end method

.method public closeAllPanels()V
    .registers 1

    .prologue
    .line 532
    return-void
.end method

.method public closePanel(I)V
    .registers 2
    .param p1, "featureId"    # I

    .prologue
    .line 510
    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .registers 2

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public invalidatePanelMenu(I)V
    .registers 2
    .param p1, "featureId"    # I

    .prologue
    .line 518
    return-void
.end method

.method public isFloating()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .registers 1

    .prologue
    .line 617
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 541
    return-void
.end method

.method public onMultiWindowModeChanged()V
    .registers 1

    .prologue
    .line 669
    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 506
    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 604
    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public reportActivityRelaunched()V
    .registers 1

    .prologue
    .line 673
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 613
    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 545
    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 621
    return-void
.end method

.method public setChildInt(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 625
    return-void
.end method

.method public setContentView(I)V
    .registers 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 468
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 472
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 476
    return-void
.end method

.method public setDecorCaptionShade(I)V
    .registers 2
    .param p1, "decorCaptionShade"    # I

    .prologue
    .line 661
    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 557
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 561
    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 549
    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 553
    return-void
.end method

.method public setFeatureInt(II)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 565
    return-void
.end method

.method public setNavigationBarColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 657
    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 665
    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 648
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 498
    return-void
.end method

.method public setTitleColor(I)V
    .registers 2
    .param p1, "textColor"    # I

    .prologue
    .line 502
    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2
    .param p1, "streamType"    # I

    .prologue
    .line 634
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 455
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 2
    .param p1, "get"    # Z

    .prologue
    .line 569
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 451
    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 514
    return-void
.end method
