.class Lcom/android/systemui/volume/VolumeDialog$3;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
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
    .line 1028
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1031
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get8(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    .line 1032
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get9(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    .line 1033
    .local v0, "newExpand":Z
    :goto_13
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v1, v0, v4}, Lcom/android/systemui/volume/VolumeDialog;->-wrap11(Lcom/android/systemui/volume/VolumeDialog;ZZ)V

    .line 1030
    return-void

    .line 1032
    .end local v0    # "newExpand":Z
    :cond_2c
    const/4 v0, 0x1

    .restart local v0    # "newExpand":Z
    goto :goto_13
.end method
