.class public Lcom/Clocker/World/data/ClocksDatabase$ClocksMetaData;
.super Ljava/lang/Object;
.source "ClocksDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Clocker/World/data/ClocksDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClocksMetaData"
.end annotation


# static fields
.field public static final CLOCKS_TABLE:Ljava/lang/String; = "clocks"

.field public static final CLOCK_TIMEZONE_KEY:Ljava/lang/String; = "timezone"

.field public static final ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
