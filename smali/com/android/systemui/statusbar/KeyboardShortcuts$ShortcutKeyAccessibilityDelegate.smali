.class final Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShortcutKeyAccessibilityDelegate"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;
    .param p2, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 734
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;->mContentDescription:Ljava/lang/String;

    .line 733
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 739
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;->mContentDescription:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 738
    :cond_10
    return-void
.end method
