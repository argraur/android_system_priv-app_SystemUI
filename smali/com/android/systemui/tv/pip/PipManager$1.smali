.class Lcom/android/systemui/tv/pip/PipManager$1;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipManager;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager$1;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$1;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    iget-object v1, p0, Lcom/android/systemui/tv/pip/PipManager$1;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v1}, Lcom/android/systemui/tv/pip/PipManager;->-get8(Lcom/android/systemui/tv/pip/PipManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/pip/PipManager;->resizePinnedStack(I)V

    .line 165
    return-void
.end method
