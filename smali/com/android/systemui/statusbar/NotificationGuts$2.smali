.class Lcom/android/systemui/statusbar/NotificationGuts$2;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->bindToggles(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    .line 260
    return-void
.end method
