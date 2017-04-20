.class public Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
.super Ljava/lang/Object;
.source "ReferenceCountedTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;,
        Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;
    }
.end annotation


# instance fields
.field mCount:I

.field mDecrementRunnable:Ljava/lang/Runnable;

.field mErrorRunnable:Ljava/lang/Runnable;

.field mFirstIncRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIncrementRunnable:Ljava/lang/Runnable;

.field mLastDecRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "firstIncRunnable"    # Ljava/lang/Runnable;
    .param p2, "lastDecRunnable"    # Ljava/lang/Runnable;
    .param p3, "errorRunanable"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    .line 55
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_26
    if-eqz p2, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2d
    iput-object p3, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method


# virtual methods
.method public addLastDecrementRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public decrement()V
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 84
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v0, :cond_e

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    .line 82
    :cond_d
    :goto_d
    return-void

    .line 86
    :cond_e
    iget v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-gez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 90
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid ref count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-object v0
.end method

.method public flushLastDecrementRunnables()V
    .registers 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 100
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .local v1, "numRunnables":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_1f

    .line 102
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 105
    .end local v0    # "i":I
    .end local v1    # "numRunnables":I
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 98
    return-void
.end method

.method public increment()V
    .registers 4

    .prologue
    .line 62
    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 68
    :cond_c
    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    .line 61
    return-void

    .line 63
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 64
    .local v1, "numRunnables":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_c

    .line 65
    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method
