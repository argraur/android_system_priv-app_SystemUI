.class Lcom/android/systemui/tv/pip/PipManager$4;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


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
    .line 193
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipManager$4;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipManager$4;->this$0:Lcom/android/systemui/tv/pip/PipManager;

    invoke-static {v0, p1}, Lcom/android/systemui/tv/pip/PipManager;->-wrap7(Lcom/android/systemui/tv/pip/PipManager;Ljava/util/List;)V

    .line 195
    return-void
.end method
