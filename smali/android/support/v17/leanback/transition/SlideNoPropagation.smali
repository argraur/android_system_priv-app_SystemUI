.class public Landroid/support/v17/leanback/transition/SlideNoPropagation;
.super Landroid/transition/Slide;
.source "SlideNoPropagation.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/transition/Slide;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "slideEdge"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/transition/Slide;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/transition/Slide;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public setSlideEdge(I)V
    .registers 3
    .param p1, "slideEdge"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/transition/SlideNoPropagation;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 41
    return-void
.end method
