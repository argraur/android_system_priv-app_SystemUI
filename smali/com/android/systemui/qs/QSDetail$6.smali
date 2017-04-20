.class Lcom/android/systemui/qs/QSDetail$6;
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

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;
    .param p2, "val$settingsIntent"    # Landroid/content/Intent;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetail$6;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$6;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get4(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetail$6;->val$settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
