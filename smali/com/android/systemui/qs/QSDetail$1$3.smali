.class Lcom/android/systemui/qs/QSDetail$1$3;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail$1;->onScanStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSDetail$1;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail$1;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/qs/QSDetail$1;
    .param p2, "val$state"    # Z

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1$3;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSDetail$1$3;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$1$3;->this$1:Lcom/android/systemui/qs/QSDetail$1;

    iget-object v0, v0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSDetail$1$3;->val$state:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-wrap1(Lcom/android/systemui/qs/QSDetail;Z)V

    .line 300
    return-void
.end method
