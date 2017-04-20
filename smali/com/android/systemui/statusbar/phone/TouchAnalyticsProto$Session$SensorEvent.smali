.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private timestamp_:J

.field private type_:I

.field public values:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 817
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    .line 816
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 2

    .prologue
    .line 741
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_11

    .line 742
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_10

    .line 745
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 749
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    return-object v0

    .line 742
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 822
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 823
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 824
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 825
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->cachedSize:I

    .line 827
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    .line 852
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v1

    .line 853
    .local v1, "size":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_13

    .line 855
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 854
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 857
    :cond_13
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_21

    .line 859
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v4, 0x2

    .line 858
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 861
    :cond_21
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    if-lez v2, :cond_36

    .line 862
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 863
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 864
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 866
    .end local v0    # "dataSize":I
    :cond_36
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_43

    .line 868
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 867
    invoke-static {v5, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 870
    :cond_43
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 12
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 878
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 879
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_a2

    .line 883
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 884
    return-object p0

    .line 881
    :sswitch_f
    return-object p0

    .line 889
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 890
    .local v6, "value":I
    packed-switch v6, :pswitch_data_bc

    :pswitch_17
    goto :goto_1

    .line 896
    :pswitch_18
    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 897
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_1

    .line 903
    .end local v6    # "value":I
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 904
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_1

    .line 909
    :sswitch_2e
    const/16 v8, 0x1d

    .line 908
    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 910
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v8, :cond_55

    move v1, v7

    .line 911
    .local v1, "i":I
    :goto_39
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 912
    .local v4, "newArray":[F
    if-eqz v1, :cond_44

    .line 913
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 915
    :cond_44
    :goto_44
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_59

    .line 916
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 917
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 910
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_55
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v8

    goto :goto_39

    .line 920
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_59
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 921
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    goto :goto_1

    .line 925
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_62
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 926
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 927
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 928
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v8, :cond_88

    move v1, v7

    .line 929
    .restart local v1    # "i":I
    :goto_71
    add-int v8, v1, v0

    new-array v4, v8, [F

    .line 930
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_7c

    .line 931
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 933
    :cond_7c
    :goto_7c
    array-length v8, v4

    if-ge v1, v8, :cond_8c

    .line 934
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v8

    aput v8, v4, v1

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 928
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_88
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v8

    goto :goto_71

    .line 936
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_8c
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    .line 937
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    .line 941
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_93
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 942
    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto/16 :goto_1

    .line 879
    nop

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_21
        0x1a -> :sswitch_62
        0x1d -> :sswitch_2e
        0x20 -> :sswitch_93
    .end sparse-switch

    .line 890
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_18
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
    .line 874
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 779
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    .line 780
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 781
    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 801
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    .line 802
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 803
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 760
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    .line 761
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    .line 762
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 834
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 836
    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_18

    .line 837
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 839
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-lez v1, :cond_32

    .line 840
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 841
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 844
    .end local v0    # "i":I
    :cond_32
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3e

    .line 845
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 847
    :cond_3e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 832
    return-void
.end method
