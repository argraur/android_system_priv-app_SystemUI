.class public Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"


# instance fields
.field private mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6
    .param p1, "slots"    # [Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    .line 29
    array-length v0, p1

    .line 30
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_25

    .line 31
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 28
    :cond_25
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    .local v0, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  icon slots: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_45

    .line 83
    const-string/jumbo v2, "    %2d: (%s) %s\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 79
    :cond_45
    return-void
.end method

.method public getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public getSlot(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSlotIndex(Ljava/lang/String;)I
    .registers 7
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 37
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1a

    .line 39
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 40
    return v1

    .line 38
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 44
    :cond_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 46
    return v4
.end method

.method public getViewIndex(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_11

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_11
    return v0
.end method

.method public removeIcon(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
