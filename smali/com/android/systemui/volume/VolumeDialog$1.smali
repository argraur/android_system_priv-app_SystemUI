.class Lcom/android/systemui/volume/VolumeDialog$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


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
    .line 950
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .registers 4

    .prologue
    .line 978
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get3(Lcom/android/systemui/volume/VolumeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 979
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 980
    .local v0, "density":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get5(Lcom/android/systemui/volume/VolumeDialog;)I

    move-result v2

    if-eq v0, v2, :cond_34

    .line 981
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get6(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->dismiss()V

    .line 982
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get20(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->cleanup()V

    .line 983
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-wrap2(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 984
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialog;->-set0(Lcom/android/systemui/volume/VolumeDialog;I)I

    .line 986
    :cond_34
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-wrap13(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 987
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get17(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 988
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->-get20(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 977
    return-void
.end method

.method public onDismissRequested(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 957
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get7(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 972
    return-void
.end method

.method public onScreenOff()V
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 962
    return-void
.end method

.method public onShowRequested(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap7(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 952
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap8(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 1006
    return-void
.end method

.method public onShowSilentHint()V
    .registers 4

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get16(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 999
    :cond_13
    return-void
.end method

.method public onShowVibrateHint()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 993
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get16(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 994
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->-get4(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 992
    :cond_12
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->-wrap3(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 967
    return-void
.end method
