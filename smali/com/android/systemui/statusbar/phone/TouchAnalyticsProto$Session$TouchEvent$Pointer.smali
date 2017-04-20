.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pointer"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private pressure_:F

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedLength_:F

.field private size_:F

.field private x_:F

.field private y_:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 313
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 2

    .prologue
    .line 181
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v0, :cond_11

    .line 182
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v0, :cond_10

    .line 185
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 189
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    return-object v0

    .line 182
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 318
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 319
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    .line 320
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    .line 321
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    .line 322
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    .line 323
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    .line 324
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->cachedSize:I

    .line 327
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .prologue
    .line 359
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 360
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    .line 362
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    const/4 v2, 0x1

    .line 361
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    .line 366
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    const/4 v2, 0x2

    .line 365
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_20
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2e

    .line 370
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    const/4 v2, 0x3

    .line 369
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_2e
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3c

    .line 374
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    const/4 v2, 0x4

    .line 373
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_3c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4a

    .line 378
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    const/4 v2, 0x5

    .line 377
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_4a
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_58

    .line 382
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    const/4 v2, 0x6

    .line 381
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_58
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v1, :cond_64

    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v2, 0x7

    .line 385
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_64
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 397
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_6e

    .line 401
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    return-object p0

    .line 399
    :sswitch_e
    return-object p0

    .line 407
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    .line 408
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 412
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    .line 413
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 417
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    .line 418
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 422
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    .line 423
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 427
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    .line 428
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 432
    :sswitch_50
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    .line 433
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    .line 437
    :sswitch_5d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-nez v1, :cond_68

    .line 438
    new-instance v1, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 440
    :cond_68
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 397
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_e
        0xd -> :sswitch_f
        0x15 -> :sswitch_1c
        0x1d -> :sswitch_29
        0x25 -> :sswitch_36
        0x28 -> :sswitch_43
        0x35 -> :sswitch_50
        0x3a -> :sswitch_5d
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    .line 277
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 278
    return-object p0
.end method

.method public setPressure(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 257
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    .line 258
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 259
    return-object p0
.end method

.method public setSize(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    .line 239
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 240
    return-object p0
.end method

.method public setX(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 200
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    .line 201
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 202
    return-object p0
.end method

.method public setY(F)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    .line 220
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    .line 221
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 334
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 336
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    .line 337
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 339
    :cond_18
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    .line 340
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 342
    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_30

    .line 343
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 345
    :cond_30
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3c

    .line 346
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 348
    :cond_3c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_48

    .line 349
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 351
    :cond_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v0, :cond_52

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 354
    :cond_52
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 332
    return-void
.end method
