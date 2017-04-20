.class Lcom/android/systemui/volume/VolumeDialog$10;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->updateExpandButtonH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->-set1(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 617
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-wrap10(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 615
    return-void
.end method
