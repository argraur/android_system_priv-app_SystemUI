.class Lcom/android/systemui/doze/DozeLog$SummaryStats;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryStats"
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeLog$SummaryStats;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>()V

    return-void
.end method


# virtual methods
.method public append()V
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 219
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 224
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    if-nez v2, :cond_7

    return-void

    .line 225
    :cond_7
    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v2, ": n="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 229
    const-string/jumbo v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->-get0()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 231
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 230
    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    mul-double v0, v2, v8

    .line 232
    .local v0, "perHr":D
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    .line 233
    const-string/jumbo v2, "/hr)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 223
    return-void
.end method
