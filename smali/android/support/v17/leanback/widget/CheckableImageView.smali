.class Landroid/support/v17/leanback/widget/CheckableImageView;
.super Landroid/widget/ImageView;
.source "CheckableImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v17/leanback/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 44
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 45
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CheckableImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 46
    sget-object v1, Landroid/support/v17/leanback/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/CheckableImageView;->mergeDrawableStates([I[I)[I

    .line 48
    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 64
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->mChecked:Z

    .line 65
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CheckableImageView;->refreshDrawableState()V

    .line 62
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/CheckableImageView;->mChecked:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/CheckableImageView;->setChecked(Z)V

    .line 52
    return-void

    .line 53
    :cond_9
    const/4 v0, 0x1

    goto :goto_5
.end method
