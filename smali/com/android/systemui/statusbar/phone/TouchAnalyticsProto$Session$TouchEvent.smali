.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;,
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;


# instance fields
.field private actionIndex_:I

.field private action_:I

.field private bitField0_:I

.field public pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedRedacted_:Z

.field private timeOffsetNanos_:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    .line 559
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 2

    .prologue
    .line 462
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_11

    .line 463
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_10

    .line 466
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 470
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    return-object v0

    .line 463
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 564
    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    .line 565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    .line 566
    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    .line 567
    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    .line 568
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 569
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->cachedSize:I

    .line 572
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    .line 606
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    .line 607
    .local v2, "size":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12

    .line 609
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v3, 0x1

    .line 608
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 611
    :cond_12
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_20

    .line 613
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v4, 0x2

    .line 612
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 615
    :cond_20
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2e

    .line 617
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v4, 0x3

    .line 616
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 619
    :cond_2e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-lez v3, :cond_4c

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-ge v1, v3, :cond_4c

    .line 621
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v3, v1

    .line 622
    .local v0, "element":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    if-eqz v0, :cond_49

    .line 624
    const/4 v3, 0x4

    .line 623
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 620
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 628
    .end local v0    # "element":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .end local v1    # "i":I
    :cond_4c
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5a

    .line 630
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v4, 0x5

    .line 629
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 632
    :cond_5a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v3, :cond_66

    .line 634
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v4, 0x6

    .line 633
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    :cond_66
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 10
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 644
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 645
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_9c

    .line 649
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 650
    return-object p0

    .line 647
    :sswitch_f
    return-object p0

    .line 655
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    .line 656
    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    .line 660
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 661
    .local v4, "value":I
    packed-switch v4, :pswitch_data_ba

    goto :goto_1

    .line 669
    :pswitch_25
    iput v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    .line 670
    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    .line 676
    .end local v4    # "value":I
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    .line 677
    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    .line 682
    :sswitch_3b
    const/16 v6, 0x22

    .line 681
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 683
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v6, :cond_68

    move v1, v5

    .line 685
    .local v1, "i":I
    :goto_46
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    .line 686
    .local v2, "newArray":[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    if-eqz v1, :cond_51

    .line 687
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    :cond_51
    :goto_51
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6c

    .line 690
    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v6, v2, v1

    .line 691
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 692
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 683
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :cond_68
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v1, v6

    goto :goto_46

    .line 695
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :cond_6c
    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v6, v2, v1

    .line 696
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 697
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    goto :goto_1

    .line 701
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :sswitch_7b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    .line 702
    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto/16 :goto_1

    .line 706
    :sswitch_89
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-nez v6, :cond_94

    .line 707
    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 709
    :cond_94
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    .line 645
    nop

    :sswitch_data_9c
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_1d
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x28 -> :sswitch_7b
        0x32 -> :sswitch_89
    .end sparse-switch

    .line 661
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
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
    .line 640
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 500
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    .line 501
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    .line 502
    return-object p0
.end method

.method public setActionIndex(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    .line 520
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    .line 521
    return-object p0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 481
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    .line 482
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    .line 483
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    .line 579
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 581
    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    .line 582
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 584
    :cond_18
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_24

    .line 585
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 587
    :cond_24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-lez v2, :cond_40

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-ge v1, v2, :cond_40

    .line 589
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v2, v1

    .line 590
    .local v0, "element":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    if-eqz v0, :cond_3d

    .line 591
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 588
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 595
    .end local v0    # "element":Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .end local v1    # "i":I
    :cond_40
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4c

    .line 596
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 598
    :cond_4c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v2, :cond_56

    .line 599
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 601
    :cond_56
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 577
    return-void
.end method
