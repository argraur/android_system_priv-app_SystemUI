.class public Lcom/android/systemui/classifier/EndPointRatioClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/classifier/EndPointRatioClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 24
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 6
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .prologue
    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    .local v0, "ratio":F
    :goto_b
    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result v1

    return v1

    .line 39
    .end local v0    # "ratio":F
    :cond_10
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v2

    div-float v0, v1, v2

    .restart local v0    # "ratio":F
    goto :goto_b
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const-string/jumbo v0, "END_RTIO"

    return-object v0
.end method
