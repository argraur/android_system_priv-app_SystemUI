.class public Lcom/android/systemui/classifier/SpeedVarianceEvaluator;
.super Ljava/lang/Object;
.source "SpeedVarianceEvaluator.java"


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

    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v1, v2, v4

    if-lez v1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    :cond_f
    float-to-double v2, p0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1a

    add-float/2addr v0, v6

    .line 24
    :cond_1a
    float-to-double v2, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v2, v4

    if-lez v1, :cond_25

    add-float/2addr v0, v6

    .line 25
    :cond_25
    float-to-double v2, p0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_30

    add-float/2addr v0, v6

    .line 26
    :cond_30
    return v0
.end method
