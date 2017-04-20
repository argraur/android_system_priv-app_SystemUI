.class Lcom/android/systemui/statusbar/KeyboardShortcuts$3;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardShortcutsReceived(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap1(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap0(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    .line 367
    .local v0, "appShortcuts":Landroid/view/KeyboardShortcutGroup;
    if-eqz v0, :cond_14

    .line 368
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap4(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    .line 364
    return-void
.end method
