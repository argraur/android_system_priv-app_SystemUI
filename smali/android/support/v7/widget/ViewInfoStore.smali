.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewInfoStore$InfoRecord;,
        Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    .line 39
    return-void
.end method

.method private popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 8
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 105
    return-object v4

    .line 107
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 108
    .local v2, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v2, :cond_43

    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_43

    .line 109
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 111
    const/4 v3, 0x4

    if-ne p2, v3, :cond_33

    .line 112
    iget-object v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 119
    .local v1, "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_24
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_32

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 121
    invoke-static {v2}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 123
    :cond_32
    return-object v1

    .line 113
    .end local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_33
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3a

    .line 114
    iget-object v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .restart local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_24

    .line 116
    .end local v1    # "info":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must provide flag PRE or POST"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_43
    return-object v4
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 147
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 148
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 149
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_13
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 153
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 146
    return-void
.end method

.method addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 200
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 201
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 202
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 203
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_13
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 199
    return-void
.end method

.method addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "key"    # J
    .param p3, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 133
    return-void
.end method

.method addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 185
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 186
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 190
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 183
    return-void
.end method

.method addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 66
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 67
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 68
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 72
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 65
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 55
    return-void
.end method

.method getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "key"    # J

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 77
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_12

    iget v2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 164
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_12

    iget v2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method onDetach()V
    .registers 1

    .prologue
    .line 275
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 274
    return-void
.end method

.method public onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 278
    return-void
.end method

.method popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .prologue
    const/4 v5, 0x0

    .line 221
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_9
    if-ltz v0, :cond_82

    .line 222
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 223
    .local v2, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 224
    .local v1, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2b

    .line 226
    invoke-interface {p1, v2}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 253
    :cond_25
    :goto_25
    invoke-static {v1}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 227
    :cond_2b
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    .line 229
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_39

    .line 232
    invoke-interface {p1, v2}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_25

    .line 234
    :cond_39
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 236
    :cond_41
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_51

    .line 238
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 239
    :cond_51
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_61

    .line 241
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 242
    :cond_61
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6d

    .line 244
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v5}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 245
    :cond_6d
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7b

    .line 247
    iget-object v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_25

    .line 248
    :cond_7b
    iget v3, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_25

    goto :goto_25

    .line 220
    .end local v1    # "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    .end local v2    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_82
    return-void
.end method

.method removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 213
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 214
    .local v0, "record":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_b

    .line 215
    return-void

    .line 217
    :cond_b
    iget v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 212
    return-void
.end method

.method removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_17

    .line 263
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_25

    .line 264
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 268
    :cond_17
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 269
    .local v1, "info":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    if-eqz v1, :cond_24

    .line 270
    invoke-static {v1}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    .line 261
    :cond_24
    return-void

    .line 262
    .end local v1    # "info":Landroid/support/v7/widget/ViewInfoStore$InfoRecord;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method
