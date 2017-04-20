.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool",
        "<",
        "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mPoolObjects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->mPoolObjects:Ljava/util/Stack;

    .line 69
    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object v0

    .line 78
    :cond_11
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-object v0
.end method

.method public bridge synthetic acquire()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->acquire()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    return-object v0
.end method

.method public release(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)Z
    .registers 3
    .param p1, "instance"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->reset()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->mPoolObjects:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .end local p1    # "instance":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->release(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)Z

    move-result v0

    return v0
.end method
