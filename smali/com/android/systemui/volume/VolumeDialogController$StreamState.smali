.class public final Lcom/android/systemui/volume/VolumeDialogController$StreamState;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamState"
.end annotation


# instance fields
.field public dynamic:Z

.field public level:I

.field public levelMax:I

.field public levelMin:I

.field public muteSupported:Z

.field public muted:Z

.field public name:Ljava/lang/String;

.field public routedToBluetooth:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .registers 3

    .prologue
    .line 911
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .line 912
    .local v0, "rt":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->dynamic:Z

    .line 913
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 914
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 915
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    iput v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 916
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 917
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    .line 918
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 919
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 920
    return-object v0
.end method
