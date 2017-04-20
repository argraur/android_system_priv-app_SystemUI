.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .registers 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .registers 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .registers 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .registers 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 7
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
