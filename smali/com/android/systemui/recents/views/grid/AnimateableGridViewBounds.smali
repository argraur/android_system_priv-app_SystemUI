.class Lcom/android/systemui/recents/views/grid/AnimateableGridViewBounds;
.super Lcom/android/systemui/recents/views/AnimateableViewBounds;
.source "AnimateableGridViewBounds.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;
    .param p2, "cornerRadius"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected updateClipBounds()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method
