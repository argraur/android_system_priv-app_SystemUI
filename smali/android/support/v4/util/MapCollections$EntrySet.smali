.class final Landroid/support/v4/util/MapCollections$EntrySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
    .registers 2

    .prologue
    .line 162
    .local p1, "this$0":Landroid/support/v4/util/MapCollections;, "Landroid/support/v4/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/util/MapCollections$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v3}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v2

    .line 171
    .local v2, "oldSize":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 174
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_24
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v3}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v3

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x1

    :goto_2d
    return v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colClear()V

    .line 178
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 184
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_6

    .line 185
    return v5

    :cond_6
    move-object v0, p1

    .line 186
    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 188
    .local v2, "index":I
    if-gez v2, :cond_16

    .line 189
    return v5

    .line 191
    :cond_16
    iget-object v3, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3
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
    .line 197
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/MapCollections$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 200
    const/4 v1, 0x0

    return v1

    .line 203
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 248
    invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "result":I
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_2f

    .line 255
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 256
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    .line 257
    .local v3, "value":Ljava/lang/Object;
    if-nez v1, :cond_24

    move v6, v5

    .line 258
    :goto_1c
    if-nez v3, :cond_2a

    move v4, v5

    .line 257
    :goto_1f
    xor-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 254
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 257
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move v6, v4

    goto :goto_1c

    .line 258
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1f

    .line 260
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2f
    return v2
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Landroid/support/v4/util/MapCollections$MapIterator;

    iget-object v1, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-direct {v0, v1}, Landroid/support/v4/util/MapCollections$MapIterator;-><init>(Landroid/support/v4/util/MapCollections;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$EntrySet;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
