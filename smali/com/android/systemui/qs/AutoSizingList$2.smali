.class Lcom/android/systemui/qs/AutoSizingList$2;
.super Landroid/database/DataSetObserver;
.source "AutoSizingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AutoSizingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/AutoSizingList;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/AutoSizingList;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/AutoSizingList;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v0}, Lcom/android/systemui/qs/AutoSizingList;->-get0(Lcom/android/systemui/qs/AutoSizingList;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoSizingList;->-wrap0(Lcom/android/systemui/qs/AutoSizingList;)I

    move-result v1

    if-le v0, v1, :cond_19

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoSizingList;->-wrap0(Lcom/android/systemui/qs/AutoSizingList;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->-set0(Lcom/android/systemui/qs/AutoSizingList;I)I

    .line 113
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v0}, Lcom/android/systemui/qs/AutoSizingList;->-wrap1(Lcom/android/systemui/qs/AutoSizingList;)V

    .line 109
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList$2;->this$0:Lcom/android/systemui/qs/AutoSizingList;

    invoke-static {v0}, Lcom/android/systemui/qs/AutoSizingList;->-wrap1(Lcom/android/systemui/qs/AutoSizingList;)V

    .line 117
    return-void
.end method
