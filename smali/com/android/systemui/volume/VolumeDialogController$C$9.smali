.class Lcom/android/systemui/volume/VolumeDialogController$C$9;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSafetyWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogController$C;
    .param p3, "val$flags"    # I

    .prologue
    .line 687
    .local p2, "val$entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$C$9;->this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController$C$9;->val$entry:Ljava/util/Map$Entry;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogController$C$9;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$C$9;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController$C$9;->val$flags:I

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;->onShowSafetyWarning(I)V

    .line 689
    return-void
.end method
