.class public Lcom/Clocker/World/misc/TimezoneUtils;
.super Ljava/lang/Object;
.source "TimezoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTo12h(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "h24"

    .prologue
    const-string v7, ":"

    .line 70
    const-string v5, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, time:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 72
    .local v1, hour:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v2, v4, v5

    .line 73
    .local v2, mins:Ljava/lang/String;
    const-string v3, "AM"

    .line 74
    .local v3, suffix:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, h:I
    const/16 v5, 0xc

    if-le v0, v5, :cond_0

    .line 77
    add-int/lit8 v0, v0, -0xc

    .line 78
    const-string v3, "PM"

    .line 80
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getContinent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 20
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, raw:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static getDistance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/Clocker/World/misc/TimezoneUtils;->getTimeDifference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/Clocker/World/misc/TimezoneUtils;->getTzString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 26
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 28
    const-string v1, "%H:%M"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeDifference(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const v9, 0x1dfe200

    const v8, 0x15180

    .line 33
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 34
    .local v3, local:Landroid/text/format/Time;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, foreign:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 36
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 37
    iget v6, v1, Landroid/text/format/Time;->year:I

    mul-int/2addr v6, v9

    iget v7, v1, Landroid/text/format/Time;->yearDay:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v7, v1, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v7, v7, 0xe10

    add-int v2, v6, v7

    .line 38
    .local v2, foreignComplete:I
    iget v6, v3, Landroid/text/format/Time;->year:I

    mul-int/2addr v6, v9

    iget v7, v3, Landroid/text/format/Time;->yearDay:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v7, v3, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v7, v7, 0xe10

    add-int v4, v6, v7

    .line 39
    .local v4, localComplete:I
    sub-int v6, v2, v4

    div-int/lit16 v0, v6, 0xe10

    .line 41
    .local v0, difference:I
    const/16 v6, 0xc

    if-gt v0, v6, :cond_0

    const/16 v6, -0xc

    if-ge v0, v6, :cond_1

    .line 42
    :cond_0
    sub-int v6, v4, v2

    div-int/lit16 v0, v6, 0xe10

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, res:Ljava/lang/String;
    if-ltz v0, :cond_2

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    :cond_2
    return-object v5
.end method

.method public static getTzString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 54
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 55
    .local v2, tz:Ljava/util/TimeZone;
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ENGLISH"

    const-string v5, "UK"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v6, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, dim:I
    const/4 v3, 0x2

    sub-int v3, v0, v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x3

    sub-int v3, v0, v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parseCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 13
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, raw:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    const/16 v2, 0x5f

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
