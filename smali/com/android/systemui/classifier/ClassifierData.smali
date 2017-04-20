.class public Lcom/android/systemui/classifier/ClassifierData;
.super Ljava/lang/Object;
.source "ClassifierData.java"


# instance fields
.field private mCurrentStrokes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private final mDpi:F

.field private mEndingStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .registers 3
    .param p1, "dpi"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    .line 34
    iput p1, p0, Lcom/android/systemui/classifier/ClassifierData;->mDpi:F

    .line 33
    return-void
.end method


# virtual methods
.method public cleanUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 62
    .local v0, "action":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 64
    .local v2, "id":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1a

    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    .line 66
    :cond_1a
    :goto_1a
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 65
    :cond_22
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_1f

    goto :goto_1a

    .line 59
    .end local v2    # "id":I
    :cond_2c
    return-void
.end method

.method public getEndingStrokes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStroke(I)Lcom/android/systemui/classifier/Stroke;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Stroke;

    return-object v0
.end method

.method public update(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 40
    .local v0, "action":I
    if-nez v0, :cond_10

    .line 41
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 44
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 46
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_33

    .line 47
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/systemui/classifier/Stroke;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v6

    iget v5, p0, Lcom/android/systemui/classifier/ClassifierData;->mDpi:F

    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/classifier/Stroke;-><init>(JF)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    :cond_33
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mCurrentStrokes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/Stroke;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v6

    .line 49
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/classifier/Stroke;->addPoint(FFJ)V

    .line 52
    const/4 v3, 0x1

    if-eq v0, v3, :cond_50

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5c

    .line 54
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/systemui/classifier/ClassifierData;->mEndingStrokes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 53
    :cond_5c
    const/4 v3, 0x6

    if-ne v0, v3, :cond_59

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne v1, v3, :cond_59

    goto :goto_50

    .line 37
    .end local v2    # "id":I
    :cond_66
    return-void
.end method
