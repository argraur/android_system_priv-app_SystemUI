.class Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedShowHeaders:Z

.field private cachedSliderTint:Landroid/content/res/ColorStateList;

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic -get18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic -set18(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedSliderTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I

    return p1
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I

    .line 1245
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    .line 1248
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    .line 1229
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>()V

    return-void
.end method
