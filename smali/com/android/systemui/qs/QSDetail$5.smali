.class Lcom/android/systemui/qs/QSDetail$5;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;

.field final synthetic val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;
    .param p2, "val$adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get5(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x0

    .line 169
    .local v0, "checked":Z
    :goto_d
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetail;->-get5(Lcom/android/systemui/qs/QSDetail;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$5;->val$adapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->setToggleState(Z)V

    .line 167
    return-void

    .line 168
    .end local v0    # "checked":Z
    :cond_1c
    const/4 v0, 0x1

    .restart local v0    # "checked":Z
    goto :goto_d
.end method
