.class Landroid/support/v17/leanback/widget/PlaybackControlsRowView;
.super Landroid/widget/LinearLayout;
.source "PlaybackControlsRowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;
    }
.end annotation


# instance fields
.field private mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 67
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method
