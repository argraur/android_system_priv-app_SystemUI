.class public Lcom/android/systemui/statusbar/phone/UserAvatarView;
.super Landroid/view/View;
.source "UserAvatarView.java"


# instance fields
.field private final mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    new-instance v4, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {v4}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 44
    sget-object v4, Lcom/android/systemui/R$styleable;->UserAvatarView:[I

    .line 43
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 46
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v0, :cond_52

    .line 47
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 48
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_5c

    .line 46
    :goto_1f
    :pswitch_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 50
    :pswitch_22
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarPadding(F)V

    goto :goto_1f

    .line 53
    :pswitch_2a
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameWidth(F)V

    goto :goto_1f

    .line 56
    :pswitch_32
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFramePadding(F)V

    goto :goto_1f

    .line 59
    :pswitch_3a
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1f

    .line 62
    :pswitch_42
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeDiameter(F)V

    goto :goto_1f

    .line 65
    :pswitch_4a
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeMargin(F)V

    goto :goto_1f

    .line 69
    .end local v2    # "attr":I
    :cond_52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 48
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_22
        :pswitch_2a
        :pswitch_32
        :pswitch_1f
        :pswitch_42
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public setAvatarPadding(F)V
    .registers 3
    .param p1, "avatarPadding"    # F

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setPadding(F)V

    .line 105
    return-void
.end method

.method public setAvatarWithBadge(Landroid/graphics/Bitmap;I)V
    .registers 5
    .param p1, "avatar"    # Landroid/graphics/Bitmap;
    .param p2, "userId"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 122
    return-void
.end method

.method public setBadgeDiameter(F)V
    .registers 4
    .param p1, "diameter"    # F

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeRadius(F)V

    .line 109
    return-void
.end method

.method public setBadgeMargin(F)V
    .registers 3
    .param p1, "margin"    # F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeMargin(F)V

    .line 113
    return-void
.end method

.method public setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 136
    instance-of v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-eqz v0, :cond_d

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Recursively adding UserIconDrawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 135
    return-void
.end method

.method public setFrameColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameColor(Landroid/content/res/ColorStateList;)V

    .line 93
    return-void
.end method

.method public setFramePadding(F)V
    .registers 3
    .param p1, "framePadding"    # F

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFramePadding(F)V

    .line 101
    return-void
.end method

.method public setFrameWidth(F)V
    .registers 3
    .param p1, "frameWidth"    # F

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameWidth(F)V

    .line 97
    return-void
.end method
