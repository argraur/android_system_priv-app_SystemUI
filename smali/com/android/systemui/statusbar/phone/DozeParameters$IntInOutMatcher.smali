.class public Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntInOutMatcher"
.end annotation


# instance fields
.field private final mDefaultIsIn:Z

.field private final mIsIn:Landroid/util/SparseBooleanArray;

.field final mSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 15
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 175
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Spec must not be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_14
    const/4 v0, 0x0

    .line 179
    .local v0, "defaultIsIn":Z
    const/4 v1, 0x0

    .line 181
    .local v1, "foundWildcard":Z
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    .line 182
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    .line 184
    const-string/jumbo v8, ","

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    .end local v0    # "defaultIsIn":Z
    :goto_29
    if-ge v8, v10, :cond_fe

    aget-object v4, v9, v8

    .line 185
    .local v4, "itemPrefixed":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_54

    .line 186
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_54
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x21

    if-eq v11, v12, :cond_87

    move v2, v6

    .line 190
    .local v2, "isIn":Z
    :goto_5d
    if-eqz v2, :cond_89

    move-object v3, v4

    .line 192
    .local v3, "item":Ljava/lang/String;
    :goto_60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8e

    .line 193
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2    # "isIn":Z
    .end local v3    # "item":Ljava/lang/String;
    :cond_87
    move v2, v7

    .line 189
    goto :goto_5d

    .line 190
    .restart local v2    # "isIn":Z
    :cond_89
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "item":Ljava/lang/String;
    goto :goto_60

    .line 197
    :cond_8e
    const-string/jumbo v11, "*"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c0

    .line 198
    if-eqz v1, :cond_ba

    .line 199
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `*` must not appear multiple times in `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 200
    const-string/jumbo v8, "`"

    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    :cond_ba
    move v0, v2

    .line 203
    .local v0, "defaultIsIn":Z
    const/4 v1, 0x1

    .line 184
    .end local v0    # "defaultIsIn":Z
    :goto_bc
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_29

    .line 205
    :cond_c0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 206
    .local v5, "key":I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v11

    if-ltz v11, :cond_f8

    .line 207
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal spec, `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    const-string/jumbo v8, "` must not appear multiple times in `"

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    const-string/jumbo v8, "`"

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :cond_f8
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_bc

    .line 214
    .end local v2    # "isIn":Z
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "itemPrefixed":Ljava/lang/String;
    .end local v5    # "key":I
    :cond_fe
    if-nez v1, :cond_109

    .line 215
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal spec, must specify either * or !*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 218
    :cond_109
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    .line 173
    return-void
.end method


# virtual methods
.method public isIn(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method
