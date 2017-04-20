.class Lcom/android/systemui/classifier/AccelerationClassifier$Data;
.super Ljava/lang/Object;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AccelerationClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field maxSpeedRatio:F

.field previousPoint:Lcom/android/systemui/classifier/Point;

.field previousSpeed:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/Point;)V
    .registers 3
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 74
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 77
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 76
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .registers 11
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .prologue
    const/4 v8, 0x0

    .line 81
    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    .line 82
    .local v0, "distance":F
    iget-wide v4, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    iget-wide v6, v3, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-float v1, v4

    .line 83
    .local v1, "duration":F
    div-float v2, v0, v1

    .line 85
    .local v2, "speed":F
    const v3, 0x4b989680    # 2.0E7f

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_22

    const v3, 0x4a989680    # 5000000.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_27

    .line 87
    :cond_22
    iput v8, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 88
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 89
    return-void

    .line 91
    :cond_27
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_39

    .line 92
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iget v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    div-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 95
    :cond_39
    iput v2, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 96
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 80
    return-void
.end method
