.class Lcom/android/systemui/volume/VolumeDialog$12;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/media/AudioManager;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$12;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 931
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$12;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get14(Lcom/android/systemui/volume/VolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 932
    :try_start_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$12;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->-set5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_15

    monitor-exit v1

    .line 934
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$12;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/VolumeDialog;->-wrap5(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    .line 930
    return-void

    .line 931
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method
