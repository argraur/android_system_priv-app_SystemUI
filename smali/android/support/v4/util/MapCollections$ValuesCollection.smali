.class final Landroid/support/v4/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
    .registers 2

    .prologue
    .line 352
    .local p1, "this$0":Landroid/support/v4/util/MapCollections;, "Landroid/support/v4/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "object":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colClear()V

    .line 365
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 379
    const/4 v1, 0x0

    return v1

    .line 382
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Landroid/support/v4/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/MapCollections$ArrayIterator;-><init>(Landroid/support/v4/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 398
    .local v0, "index":I
    if-ltz v0, :cond_10

    .line 399
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 400
    const/4 v1, 0x1

    return v1

    .line 402
    :cond_10
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 408
    .local v0, "N":I
    const/4 v1, 0x0

    .line 409
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_24

    .line 410
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 411
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 412
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 413
    add-int/lit8 v3, v3, -0x1

    .line 414
    add-int/lit8 v0, v0, -0x1

    .line 415
    const/4 v1, 0x1

    .line 409
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 418
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_24
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    .line 424
    .local v0, "N":I
    const/4 v1, 0x0

    .line 425
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_24

    .line 426
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    .line 427
    .local v2, "cur":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 428
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 429
    add-int/lit8 v3, v3, -0x1

    .line 430
    add-int/lit8 v0, v0, -0x1

    .line 431
    const/4 v1, 0x1

    .line 425
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 434
    .end local v2    # "cur":Ljava/lang/Object;
    :cond_24
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
