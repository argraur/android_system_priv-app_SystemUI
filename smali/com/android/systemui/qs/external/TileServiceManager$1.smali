.class Lcom/android/systemui/qs/external/TileServiceManager$1;
.super Ljava/lang/Object;
.source "TileServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileServiceManager;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get1(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get0(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    :cond_10
    :goto_10
    return-void

    .line 226
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$1;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-wrap0(Lcom/android/systemui/qs/external/TileServiceManager;)V

    goto :goto_10
.end method
