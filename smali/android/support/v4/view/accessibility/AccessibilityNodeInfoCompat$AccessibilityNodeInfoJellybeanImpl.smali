.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1812
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementGranularities(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1870
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->getMovementGranularities(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1850
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1840
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 1855
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setAccesibilityFocused(Ljava/lang/Object;Z)V

    .line 1854
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "granularities"    # I

    .prologue
    .line 1865
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setMovementGranularities(Ljava/lang/Object;I)V

    .line 1864
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "visibleToUser"    # Z

    .prologue
    .line 1845
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setVisibleToUser(Ljava/lang/Object;Z)V

    .line 1844
    return-void
.end method
