.class Lcom/android/systemui/qs/external/TileServices$4;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileServices;
    .param p2, "val$componentName"    # Landroid/content/ComponentName;
    .param p3, "val$statusIcon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices$4;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServices$4;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v1}, Lcom/android/systemui/qs/external/TileServices;->-get0(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v0

    .line 256
    .local v0, "iconController":Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$4;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices$4;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$4;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setExternalIcon(Ljava/lang/String;)V

    .line 254
    return-void
.end method
