.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .prologue
    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
