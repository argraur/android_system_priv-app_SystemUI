.class public Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;
.super Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
.source "StackViewScrolledEvent.java"


# instance fields
.field public final yMovement:Landroid/util/MutableInt;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;-><init>()V

    .line 31
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->yMovement:Landroid/util/MutableInt;

    .line 30
    return-void
.end method


# virtual methods
.method public updateY(I)V
    .registers 3
    .param p1, "y"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->yMovement:Landroid/util/MutableInt;

    iput p1, v0, Landroid/util/MutableInt;->value:I

    .line 34
    return-void
.end method