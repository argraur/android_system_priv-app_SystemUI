.class public Lcom/android/systemui/classifier/AnglesVarianceEvaluator;
.super Ljava/lang/Object;
.source "AnglesVarianceEvaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .registers 8
    .param p0, "value"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v2, p0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    :cond_f
    float-to-double v2, p0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1a

    add-float/2addr v0, v6

    .line 24
    :cond_1a
    float-to-double v2, p0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_25

    add-float/2addr v0, v6

    .line 25
    :cond_25
    float-to-double v2, p0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_30

    add-float/2addr v0, v6

    .line 26
    :cond_30
    float-to-double v2, p0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3b

    add-float/2addr v0, v6

    .line 27
    :cond_3b
    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_43

    add-float/2addr v0, v6

    .line 28
    :cond_43
    return v0
.end method
