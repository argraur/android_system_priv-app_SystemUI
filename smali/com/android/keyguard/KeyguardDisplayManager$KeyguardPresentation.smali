.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardPresentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;
    }
.end annotation


# instance fields
.field private mClock:Landroid/view/View;

.field private mMarginLeft:I

.field private mMarginTop:I

.field mMoveTextRunnable:Ljava/lang/Runnable;

.field private mUsableHeight:I

.field private mUsableWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 134
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 145
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 160
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 161
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    .line 162
    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    .line 163
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    .line 164
    iget v1, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    .line 166
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_presentation:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->setContentView(I)V

    .line 167
    sget v1, Lcom/android/keyguard/R$id;->clock:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method
