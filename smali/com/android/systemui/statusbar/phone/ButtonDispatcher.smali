.class public Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.super Ljava/lang/Object;
.source "ButtonDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;
    }
.end annotation


# instance fields
.field private mAlpha:Ljava/lang/Integer;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private final mId:I

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResource:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mVertical:Z

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageResource:I

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    .line 45
    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->abortCurrentGesture()V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 117
    :cond_17
    return-void
.end method

.method addView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 61
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    if-eqz v0, :cond_2f

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 64
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_3c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageResource:I

    if-lez v0, :cond_54

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageResource:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setImageResource(I)V

    .line 73
    :cond_48
    :goto_48
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    if-eqz v0, :cond_53

    .line 74
    check-cast p1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    .end local p1    # "view":Landroid/view/View;
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setVertical(Z)V

    .line 53
    :cond_53
    return-void

    .line 69
    .restart local p1    # "view":Landroid/view/View;
    :cond_54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48
.end method

.method clear()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    return-void
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_a
    int-to-float v0, v0

    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    return v0
.end method

.method public getVisibility()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .prologue
    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mAlpha:Ljava/lang/Integer;

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 128
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1e

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 125
    :cond_1e
    return-void
.end method

.method public setCarMode(Z)V
    .registers 6
    .param p1, "carMode"    # Z

    .prologue
    .line 178
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 181
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    if-eqz v3, :cond_1a

    .line 182
    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setCarMode(Z)V

    .line 179
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 177
    :cond_1d
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .registers 3
    .param p1, "currentView"    # Landroid/view/View;

    .prologue
    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 173
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageResource:I

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1e

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 90
    :cond_1e
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 6
    .param p1, "isLongClickable"    # Z

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 152
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 149
    :cond_23
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 6
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 133
    :cond_1b
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 6
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 157
    :cond_1b
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 6
    .param p1, "touchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 141
    :cond_1b
    return-void
.end method

.method public setVertical(Z)V
    .registers 6
    .param p1, "vertical"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVertical:Z

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1f

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 192
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    if-eqz v3, :cond_1c

    .line 193
    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;

    .end local v2    # "view":Landroid/view/View;
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher$ButtonInterface;->setVertical(Z)V

    .line 190
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 187
    :cond_1f
    return-void
.end method

.method public setVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_9

    return-void

    .line 110
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_2c

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->mVisibility:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 108
    :cond_2c
    return-void
.end method
