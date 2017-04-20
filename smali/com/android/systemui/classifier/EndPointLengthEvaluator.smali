.class public Lcom/android/systemui/classifier/EndPointLengthEvaluator;
.super Ljava/lang/Object;
.source "EndPointLengthEvaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .registers 9
    .param p0, "value"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v2, p0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v2, v4

    if-gez v1, :cond_e

    double-to-float v0, v6

    .line 23
    :cond_e
    float-to-double v2, p0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1b

    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 24
    :cond_1b
    float-to-double v2, p0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_28

    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 25
    :cond_28
    float-to-double v2, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double v1, v2, v4

    if-gez v1, :cond_35

    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 26
    :cond_35
    float-to-double v2, p0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_42

    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 27
    :cond_42
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4c

    float-to-double v2, v0

    add-double/2addr v2, v6

    double-to-float v0, v2

    .line 28
    :cond_4c
    return v0
.end method
