.class Lcom/android/systemui/qs/QSFooter$Callback;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$Callback;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$Callback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$Callback;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->refreshState()V

    .line 300
    return-void
.end method
