.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    .line 1051
    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 2

    .prologue
    .line 998
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_11

    .line 999
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1001
    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_10

    .line 1002
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    .line 1006
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0

    .line 999
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1056
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1057
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1058
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->cachedSize:I

    .line 1060
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 5

    .prologue
    .line 1077
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1078
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    .line 1080
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v2, 0x1

    .line 1079
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1082
    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    .line 1084
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    .line 1083
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1086
    :cond_20
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1095
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_2e

    .line 1099
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1100
    return-object p0

    .line 1097
    :sswitch_e
    return-object p0

    .line 1105
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1106
    .local v1, "value":I
    packed-switch v1, :pswitch_data_3c

    goto :goto_0

    .line 1136
    :pswitch_17
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1137
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    .line 1143
    .end local v1    # "value":I
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1144
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    .line 1095
    nop

    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_20
    .end sparse-switch

    .line 1106
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
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
    .line 1090
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 1036
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    .line 1037
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1038
    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1017
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    .line 1018
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    .line 1019
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 1067
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1069
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    .line 1070
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1072
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1065
    return-void
.end method
