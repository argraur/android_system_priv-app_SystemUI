.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation


# instance fields
.field private bitField0_:I

.field private height_:F

.field private width_:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    .line 96
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    .line 102
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    .line 103
    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->cachedSize:I

    .line 105
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 123
    .local v0, "size":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    .line 125
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    const/4 v2, 0x1

    .line 124
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    const/4 v2, 0x2

    .line 128
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_20
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
    .registers 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 140
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_2a

    .line 144
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    return-object p0

    .line 142
    :sswitch_e
    return-object p0

    .line 150
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    .line 151
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 155
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    .line 156
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 140
    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_e
        0xd -> :sswitch_f
        0x15 -> :sswitch_1c
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
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    move-result-object v0

    return-object v0
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
    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->width_:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 114
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    .line 115
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;->height_:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 117
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 110
    return-void
.end method
