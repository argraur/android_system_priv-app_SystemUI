.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showKeyDialogs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionComplete(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-set0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;I)I

    .line 476
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    iget-object v0, v0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v0}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap2(Lcom/android/systemui/tuner/NavBarTuner;)V

    .line 474
    return-void
.end method
