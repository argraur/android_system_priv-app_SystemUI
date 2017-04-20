.class Lcom/android/systemui/qs/external/CustomTile$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/CustomTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/CustomTile;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$1;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$1;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Landroid/service/quicksettings/IQSTileService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 324
    :goto_9
    return-void

    .line 327
    :catch_a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method
