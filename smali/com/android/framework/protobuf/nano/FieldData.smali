.class Lcom/android/framework/protobuf/nano/FieldData;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lcom/android/framework/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/nano/Extension",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 53
    return-void
.end method

.method private toByteArray()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    new-array v1, v2, [B

    .line 185
    .local v1, "result":[B
    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 186
    .local v0, "output":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 187
    return-object v1
.end method


# virtual methods
.method public final clone()Lcom/android/framework/protobuf/nano/FieldData;
    .registers 10

    .prologue
    .line 192
    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    .line 194
    .local v0, "clone":Lcom/android/framework/protobuf/nano/FieldData;
    :try_start_5
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    .line 195
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-nez v7, :cond_15

    .line 196
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    .line 204
    :goto_10
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-nez v7, :cond_24

    .line 235
    :cond_14
    :goto_14
    return-object v0

    .line 198
    :cond_15
    iget-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v8, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 236
    :catch_1d
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 206
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_24
    :try_start_24
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v7, :cond_35

    .line 207
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {v7}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_14

    .line 208
    :cond_35
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [B

    if-eqz v7, :cond_46

    .line 209
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_14

    .line 210
    :cond_46
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [[B

    if-eqz v7, :cond_66

    .line 211
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v6, [[B

    .line 212
    .local v6, "valueArray":[[B
    array-length v7, v6

    new-array v2, v7, [[B

    .line 213
    .local v2, "cloneArray":[[B
    iput-object v2, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 214
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_56
    array-length v7, v6

    if-ge v4, v7, :cond_14

    .line 215
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    aput-object v7, v2, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 217
    .end local v2    # "cloneArray":[[B
    .end local v4    # "i":I
    .end local v6    # "valueArray":[[B
    :cond_66
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [Z

    if-eqz v7, :cond_77

    .line 218
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [Z

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_14

    .line 219
    :cond_77
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [I

    if-eqz v7, :cond_88

    .line 220
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [I

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto :goto_14

    .line 221
    :cond_88
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [J

    if-eqz v7, :cond_9a

    .line 222
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [J

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_14

    .line 223
    :cond_9a
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [F

    if-eqz v7, :cond_ac

    .line 224
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [F

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_14

    .line 225
    :cond_ac
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [D

    if-eqz v7, :cond_be

    .line 226
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v7, [D

    invoke-virtual {v7}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    goto/16 :goto_14

    .line 227
    :cond_be
    iget-object v7, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v7, v7, [Lcom/android/framework/protobuf/nano/MessageNano;

    if-eqz v7, :cond_14

    .line 228
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v5, [Lcom/android/framework/protobuf/nano/MessageNano;

    .line 229
    .local v5, "valueArray":[Lcom/android/framework/protobuf/nano/MessageNano;
    array-length v7, v5

    new-array v1, v7, [Lcom/android/framework/protobuf/nano/MessageNano;

    .line 230
    .local v1, "cloneArray":[Lcom/android/framework/protobuf/nano/MessageNano;
    iput-object v1, v0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    .line 231
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_ce
    array-length v7, v5

    if-ge v4, v7, :cond_14

    .line 232
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v7

    aput-object v7, v1, v4
    :try_end_d9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_24 .. :try_end_d9} :catch_1d

    .line 231
    add-int/lit8 v4, v4, 0x1

    goto :goto_ce
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .registers 6

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "size":I
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v3, :cond_e

    .line 101
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/nano/Extension;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 107
    :cond_d
    return v0

    .line 103
    :cond_e
    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "unknownField$iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 104
    .local v1, "unknownField":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 122
    if-ne p1, p0, :cond_5

    .line 123
    const/4 v2, 0x1

    return v2

    .line 125
    :cond_5
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/FieldData;

    if-nez v2, :cond_a

    .line 126
    return v4

    :cond_a
    move-object v1, p1

    .line 129
    check-cast v1, Lcom/android/framework/protobuf/nano/FieldData;

    .line 130
    .local v1, "other":Lcom/android/framework/protobuf/nano/FieldData;
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_ae

    iget-object v2, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_ae

    .line 134
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    if-eq v2, v3, :cond_1c

    .line 135
    return v4

    .line 137
    :cond_1c
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v2, v2, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 139
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 141
    :cond_2f
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_42

    .line 142
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    .line 143
    :cond_42
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_55

    .line 144
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2

    .line 145
    :cond_55
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_68

    .line 146
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    return v2

    .line 147
    :cond_68
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_7b

    .line 148
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    return v2

    .line 149
    :cond_7b
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_8e

    .line 150
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    return v2

    .line 151
    :cond_8e
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_a1

    .line 152
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Z

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    return v2

    .line 154
    :cond_a1
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 157
    :cond_ae
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_bf

    iget-object v2, v1, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_bf

    .line 159
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    iget-object v3, v1, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 163
    :cond_bf
    :try_start_bf
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ca} :catch_cc

    move-result v2

    return v2

    .line 164
    :catch_cc
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v2

    add-int/lit16 v1, v2, 0x20f

    .line 180
    .local v1, "result":I
    return v1

    .line 176
    .end local v1    # "result":I
    :catch_b
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 112
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->cachedExtension:Lcom/android/framework/protobuf/nano/Extension;

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldData;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Lcom/android/framework/protobuf/nano/Extension;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 110
    :cond_b
    return-void

    .line 114
    :cond_c
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldData;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "unknownField$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 115
    .local v0, "unknownField":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_12
.end method
