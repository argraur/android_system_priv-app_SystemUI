.class public Lcom/android/systemui/statusbar/policy/DeadZone;
.super Landroid/view/View;
.source "DeadZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DeadZone$1;
    }
.end annotation


# instance fields
.field private final mDebugFlash:Ljava/lang/Runnable;

.field private mDecay:I

.field private mDisplayRotation:I

.field private mFlashFrac:F

.field private mHold:I

.field private mLastPokeTime:J

.field private mShouldFlash:Z

.field private mSizeMax:I

.field private mSizeMin:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/DeadZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 60
    new-instance v4, Lcom/android/systemui/statusbar/policy/DeadZone$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/DeadZone$1;-><init>(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    .line 74
    sget-object v4, Lcom/android/systemui/R$styleable;->DeadZone:[I

    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    .line 78
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    .line 80
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    .line 83
    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 84
    .local v1, "index":I
    if-ne v1, v2, :cond_48

    :goto_37
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/DeadZone;->setFlashOnTouchCapture(Z)V

    .line 71
    return-void

    :cond_48
    move v2, v3

    .line 84
    goto :goto_37
.end method

.method private getSize(J)F
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 98
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    if-nez v2, :cond_6

    .line 99
    const/4 v2, 0x0

    return v2

    .line 100
    :cond_6
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    sub-long v0, p1, v2

    .line 101
    .local v0, "dt":J
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 102
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v2, v2

    return v2

    .line 103
    :cond_18
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 104
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    return v2

    .line 105
    :cond_23
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMax:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mSizeMin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mHold:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDecay:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/DeadZone;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    return v2
.end method

.method static lerp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .prologue
    .line 94
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "can"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    .line 180
    :cond_c
    return-void

    .line 183
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v2

    float-to-int v1, v2

    .line 184
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v2, :cond_47

    .line 185
    iget v2, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3f

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 194
    :goto_2f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 195
    .local v0, "frac":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/16 v3, 0xdd

    const/16 v4, 0xee

    const/16 v5, 0xaa

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 178
    return-void

    .line 188
    .end local v0    # "frac":F
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2f

    .line 191
    :cond_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1, v5, v5, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 123
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 124
    return v6

    .line 127
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 128
    .local v0, "action":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_14

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 158
    :cond_13
    return v6

    .line 130
    :cond_14
    if-nez v0, :cond_13

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/DeadZone;->getSize(J)F

    move-result v3

    float-to-int v2, v3

    .line 138
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mVertical:Z

    if-eqz v3, :cond_89

    .line 139
    iget v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    if-ne v3, v7, :cond_7c

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7a

    const/4 v1, 0x1

    .line 147
    .local v1, "consumeEvent":Z
    :goto_36
    if-eqz v1, :cond_13

    .line 149
    const-string/jumbo v3, "DeadZone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "consuming errant click: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v3, :cond_78

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDebugFlash:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/DeadZone;->post(Ljava/lang/Runnable;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 155
    :cond_78
    const/4 v3, 0x1

    return v3

    .line 140
    .end local v1    # "consumeEvent":Z
    :cond_7a
    const/4 v1, 0x0

    .restart local v1    # "consumeEvent":Z
    goto :goto_36

    .line 142
    .end local v1    # "consumeEvent":Z
    :cond_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_87

    const/4 v1, 0x1

    .restart local v1    # "consumeEvent":Z
    goto :goto_36

    .end local v1    # "consumeEvent":Z
    :cond_87
    const/4 v1, 0x0

    .restart local v1    # "consumeEvent":Z
    goto :goto_36

    .line 145
    .end local v1    # "consumeEvent":Z
    :cond_89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_94

    const/4 v1, 0x1

    .restart local v1    # "consumeEvent":Z
    goto :goto_36

    .end local v1    # "consumeEvent":Z
    :cond_94
    const/4 v1, 0x0

    .restart local v1    # "consumeEvent":Z
    goto :goto_36
.end method

.method public poke(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mLastPokeTime:J

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 161
    :cond_d
    return-void
.end method

.method public setDisplayRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mDisplayRotation:I

    .line 202
    return-void
.end method

.method public setFlashOnTouchCapture(Z)V
    .registers 3
    .param p1, "dbg"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mShouldFlash:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone;->mFlashFrac:F

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeadZone;->postInvalidate()V

    .line 108
    return-void
.end method
