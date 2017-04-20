.class public Lcom/android/systemui/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public firstActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public stackId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILandroid/content/Intent;IJJ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "stackId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I
    .param p5, "firstActiveTime"    # J
    .param p7, "lastActiveTime"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 75
    iput p2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    .line 76
    iput-object p3, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 77
    iput p4, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 78
    iput-wide p5, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->firstActiveTime:J

    .line 79
    iput-wide p7, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/model/Task$TaskKey;->updateHashCode()V

    .line 73
    return-void
.end method

.method private updateHashCode()V
    .registers 4

    .prologue
    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mHashCode:I

    .line 112
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 94
    instance-of v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    if-nez v2, :cond_6

    .line 95
    return v1

    :cond_6
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 98
    .local v0, "otherKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mHashCode:I

    return v0
.end method

.method public setStackId(I)V
    .registers 2
    .param p1, "stackId"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/recents/model/Task$TaskKey;->updateHashCode()V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    iget-wide v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
