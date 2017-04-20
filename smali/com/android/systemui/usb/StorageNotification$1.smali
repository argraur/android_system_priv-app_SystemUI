.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/os/storage/StorageEventListener;
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
    .line 70
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/usb/StorageNotification;->-wrap0(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;)V

    .line 100
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->-wrap1(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V

    .line 95
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->-get1(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 91
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 90
    const v2, 0x53505256

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 88
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 5
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1}, Lcom/android/systemui/usb/StorageNotification;->-get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 82
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 83
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v1, v0}, Lcom/android/systemui/usb/StorageNotification;->-wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    .line 77
    :cond_1b
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/usb/StorageNotification;->-wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    .line 72
    return-void
.end method
