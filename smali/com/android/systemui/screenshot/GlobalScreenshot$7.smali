.class Lcom/android/systemui/screenshot/GlobalScreenshot$7;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "x"    # F

    .prologue
    .line 735
    const v0, 0x3e9aca6b

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_9
    const v0, 0x3f1aca6b

    sub-float v0, p1, v0

    const v1, 0x3eca6b2a

    div-float/2addr v0, v1

    return v0
.end method
