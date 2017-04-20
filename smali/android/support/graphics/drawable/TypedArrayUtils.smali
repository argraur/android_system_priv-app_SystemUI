.class Landroid/support/graphics/drawable/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # Z

    .prologue
    .line 39
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 40
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 41
    return p4

    .line 43
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I

    .prologue
    .line 59
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 60
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 61
    return p4

    .line 63
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    return v1
.end method

.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # F

    .prologue
    .line 29
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 30
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 31
    return p4

    .line 33
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    return v1
.end method

.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "defaultValue"    # I

    .prologue
    .line 49
    invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 50
    .local v0, "hasAttr":Z
    if-nez v0, :cond_7

    .line 51
    return p4

    .line 53
    :cond_7
    invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    return v1
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
