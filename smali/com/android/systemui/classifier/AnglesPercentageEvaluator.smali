.class public Lcom/android/systemui/classifier/AnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "AnglesPercentageEvaluator.java"


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

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    :cond_c
    float-to-double v2, p0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v1, v2, v4

    if-gez v1, :cond_17

    add-float/2addr v0, v6

    .line 24
    :cond_17
    float-to-double v2, p0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v2, v4

    if-gez v1, :cond_22

    add-float/2addr v0, v6

    .line 25
    :cond_22
    return v0
.end method
