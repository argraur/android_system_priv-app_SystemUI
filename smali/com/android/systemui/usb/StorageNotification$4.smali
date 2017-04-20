.class Lcom/android/systemui/usb/StorageNotification$4;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 127
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    invoke-direct {v0, v1}, Lcom/android/systemui/usb/StorageNotification$MoveInfo;-><init>(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)V

    .line 128
    .local v0, "move":Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    iput p1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 129
    iput-object p2, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->extras:Landroid/os/Bundle;

    .line 130
    if-eqz p2, :cond_27

    .line 131
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 135
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 10
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->-get0(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .line 141
    .local v0, "move":Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    if-nez v0, :cond_29

    .line 142
    const-string/jumbo v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring unknown move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 146
    :cond_29
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 147
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1, v0, p2}, Lcom/android/systemui/usb/StorageNotification;->-wrap2(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    .line 139
    :goto_34
    return-void

    .line 149
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/systemui/usb/StorageNotification;->-wrap3(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    goto :goto_34
.end method
