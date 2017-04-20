.class public Lcom/android/systemui/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(FFI)F
    .registers 9
    .param p0, "xDiff"    # F
    .param p1, "yDiff"    # F
    .param p2, "type"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    const/high16 v0, 0x40b00000    # 5.5f

    .line 22
    .local v0, "falsingEvaluation":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_16

    const/4 v1, 0x1

    .line 23
    .local v1, "vertical":Z
    :goto_11
    packed-switch p2, :pswitch_data_42

    .line 52
    :cond_14
    :pswitch_14
    const/4 v2, 0x0

    return v2

    .line 22
    .end local v1    # "vertical":Z
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "vertical":Z
    goto :goto_11

    .line 26
    :pswitch_18
    if-eqz v1, :cond_1f

    float-to-double v2, p1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_14

    .line 27
    :cond_1f
    return v0

    .line 31
    :pswitch_20
    if-eqz v1, :cond_14

    .line 32
    return v0

    .line 36
    :pswitch_23
    if-eqz v1, :cond_2a

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_14

    .line 37
    :cond_2a
    return v0

    .line 41
    :pswitch_2b
    float-to-double v2, p0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_14

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    .line 42
    return v0

    .line 46
    :pswitch_36
    float-to-double v2, p0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    .line 47
    return v0

    .line 23
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_18
        :pswitch_20
        :pswitch_18
        :pswitch_14
        :pswitch_23
        :pswitch_2b
        :pswitch_36
    .end packed-switch
.end method
