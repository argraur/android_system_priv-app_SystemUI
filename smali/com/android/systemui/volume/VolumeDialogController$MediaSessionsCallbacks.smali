.class final Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Lcom/android/systemui/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionsCallbacks"
.end annotation


# instance fields
.field private mNextStream:I

.field private final mRemoteStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 825
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    .line 822
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    return-void
.end method

.method private findToken(I)Landroid/media/session/MediaSession$Token;
    .registers 6
    .param p1, "stream"    # I

    .prologue
    .line 891
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 892
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 893
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$Token;

    return-object v2

    .line 896
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSession$Token;Ljava/lang/Integer;>;"
    :cond_2d
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .registers 5
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 874
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 875
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne v1, v0, :cond_27

    .line 876
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap2(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    .line 878
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 872
    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 11
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/media/session/MediaController$PlaybackInfo;

    .prologue
    const/4 v6, 0x0

    .line 829
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 830
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_40

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_40
    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mNextStream:I

    .line 834
    :cond_46
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 835
    .local v2, "stream":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_d7

    const/4 v0, 0x1

    .line 836
    .local v0, "changed":Z
    :goto_61
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap9(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    .line 837
    .local v1, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 838
    iput v6, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 839
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 840
    iget v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    if-eq v3, v4, :cond_81

    .line 841
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 842
    const/4 v0, 0x1

    .line 844
    :cond_81
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 845
    iput-object p2, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 846
    const/4 v0, 0x1

    .line 848
    :cond_8c
    if-eqz v0, :cond_d6

    .line 849
    sget-boolean v3, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v3, :cond_c7

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRemoteUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    const-string/jumbo v5, " of "

    .line 849
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 850
    iget v5, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 849
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_c7
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 828
    :cond_d6
    return-void

    .line 835
    .end local v0    # "changed":Z
    .end local v1    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    :cond_d7
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_61
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .registers 8
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "flags"    # I

    .prologue
    .line 857
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 858
    .local v2, "stream":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3f

    const/4 v1, 0x1

    .line 859
    .local v1, "showUI":Z
    :goto_11
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap2(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v0

    .line 860
    .local v0, "changed":Z
    if-eqz v1, :cond_21

    .line 861
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap0(Lcom/android/systemui/volume/VolumeDialogController;I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 863
    :cond_21
    if-eqz v0, :cond_32

    .line 864
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->-get8(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 866
    :cond_32
    if-eqz v1, :cond_3e

    .line 867
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    .line 856
    :cond_3e
    return-void

    .line 858
    .end local v0    # "changed":Z
    .end local v1    # "showUI":Z
    :cond_3f
    const/4 v1, 0x0

    .restart local v1    # "showUI":Z
    goto :goto_11
.end method

.method public setStreamVolume(II)V
    .registers 7
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->findToken(I)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 883
    .local v0, "t":Landroid/media/session/MediaSession$Token;
    if-nez v0, :cond_22

    .line 884
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume: No token found for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void

    .line 887
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get6(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/MediaSessions;->setVolume(Landroid/media/session/MediaSession$Token;I)V

    .line 881
    return-void
.end method
