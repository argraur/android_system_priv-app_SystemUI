.class Landroid/support/v17/leanback/widget/PersistentFocusWrapper;
.super Landroid/widget/FrameLayout;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    }
.end annotation


# instance fields
.field private mPersistFocusVertical:Z

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    .line 52
    return-void
.end method

.method private shouldPersistFocusFromDirection(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 86
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x21

    if-eq p1, v2, :cond_e

    const/16 v2, 0x82

    if-ne p1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    .line 87
    :cond_f
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mPersistFocusVertical:Z

    if-nez v2, :cond_1b

    const/16 v2, 0x11

    if-eq p1, v2, :cond_e

    const/16 v2, 0x42

    if-eq p1, v2, :cond_e

    :cond_1b
    move v0, v1

    goto :goto_e
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 95
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 91
    :goto_f
    return-void

    .line 94
    :cond_10
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->shouldPersistFocusFromDirection(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method getGrandChildCount()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .local v0, "wrapper":Landroid/view/ViewGroup;
    if-nez v0, :cond_a

    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    goto :goto_9
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 169
    instance-of v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    if-nez v1, :cond_8

    .line 170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 171
    return-void

    :cond_8
    move-object v0, p1

    .line 173
    check-cast v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    .line 174
    .local v0, "savedState":Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    check-cast p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iget v1, p1, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 176
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 162
    new-instance v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 163
    .local v0, "savedState":Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    iput v1, v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    .line 164
    return-object v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 105
    move-object v0, p2

    .line 106
    .local v0, "view":Landroid/view/View;
    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_13

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_4

    .line 109
    :cond_13
    if-nez v0, :cond_19

    const/4 v1, -0x1

    .end local p1    # "child":Landroid/view/View;
    :goto_16
    iput v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    .line 103
    return-void

    .line 109
    .restart local p1    # "child":Landroid/view/View;
    :cond_19
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_16
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    .local v0, "wrapper":Landroid/view/ViewGroup;
    if-eqz v0, :cond_23

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    if-ltz v1, :cond_23

    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->getGrandChildCount()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 118
    iget v1, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 120
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method
