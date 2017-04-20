.class public Lcom/android/systemui/classifier/HistoryEvaluator;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    }
.end annotation


# instance fields
.field private final mGestureWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    .line 35
    return-void
.end method

.method private decayValue()V
    .registers 9

    .prologue
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 76
    .local v2, "time":J
    iget-wide v4, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_b

    .line 77
    return-void

    .line 81
    :cond_b
    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    iget-wide v6, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    sub-long v6, v2, v6

    long-to-float v1, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 83
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 85
    iput-wide v2, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    .line 73
    return-void
.end method

.method private decayValue(Ljava/util/ArrayList;F)V
    .registers 8
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/classifier/HistoryEvaluator$Data;>;"
    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_16

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v3, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v3, p2

    iput v3, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 95
    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v2, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->isZero(F)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 96
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_16

    .line 88
    :cond_2e
    return-void
.end method

.method private isZero(F)Z
    .registers 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 101
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_10

    const v1, -0x48d83a54    # -1.0E-5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private weightedAverage(Ljava/util/ArrayList;)F
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;)F"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/classifier/HistoryEvaluator$Data;>;"
    const/4 v7, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "sumValue":F
    const/4 v4, 0x0

    .line 59
    .local v4, "sumWeight":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 60
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_1c

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    .line 62
    .local v0, "data":Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    iget v5, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->evaluation:F

    iget v6, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 63
    iget v5, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    add-float/2addr v4, v5

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 66
    .end local v0    # "data":Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    :cond_1c
    cmpl-float v5, v4, v7

    if-nez v5, :cond_21

    .line 67
    return v7

    .line 70
    :cond_21
    div-float v5, v3, v4

    return v5
.end method


# virtual methods
.method public addGesture(F)V
    .registers 4
    .param p1, "evaluation"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public addStroke(F)V
    .registers 4
    .param p1, "evaluation"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getEvaluation()F
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
