.class Lcom/android/systemui/stackdivider/Divider$3;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->notifyDockedStackExistsChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$exists:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p2, "val$exists"    # Z

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$3;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$3;->val$exists:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->notifyDockedStackExistsChanged(Z)V

    .line 131
    return-void
.end method
