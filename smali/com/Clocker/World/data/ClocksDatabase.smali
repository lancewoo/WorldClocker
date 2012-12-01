.class public Lcom/Clocker/World/data/ClocksDatabase;
.super Ljava/lang/Object;
.source "ClocksDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Clocker/World/data/ClocksDatabase$ClocksMetaData;,
        Lcom/Clocker/World/data/ClocksDatabase$DbHelper;
    }
.end annotation


# static fields
.field private static final CLOCKS_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS clocks (_id integer primary key autoincrement, timezone text not null);"

.field private static final DB_NAME:Ljava/lang/String; = "clocksdb"

.field private static final DB_VERSION:I = 0x1

.field public static final READ:I = 0x0

.field public static final WRITE:I = 0x1


# instance fields
.field mContext:Landroid/content/Context;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mDbHelper:Lcom/Clocker/World/data/ClocksDatabase$DbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/Clocker/World/data/ClocksDatabase;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/Clocker/World/data/ClocksDatabase$DbHelper;

    const-string v3, "clocksdb"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/Clocker/World/data/ClocksDatabase$DbHelper;-><init>(Lcom/Clocker/World/data/ClocksDatabase;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDbHelper:Lcom/Clocker/World/data/ClocksDatabase$DbHelper;

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 37
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "rowId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "clocks"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public fetchClocks()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "clocks"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertClock(Ljava/lang/String;)V
    .locals 4
    .parameter "timezone"

    .prologue
    .line 41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "timezone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "clocks"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 44
    return-void
.end method

.method public open(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDbHelper:Lcom/Clocker/World/data/ClocksDatabase$DbHelper;

    invoke-virtual {v0}, Lcom/Clocker/World/data/ClocksDatabase$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDbHelper:Lcom/Clocker/World/data/ClocksDatabase$DbHelper;

    invoke-virtual {v0}, Lcom/Clocker/World/data/ClocksDatabase$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateClock(JLjava/lang/String;)I
    .locals 5
    .parameter "rowId"
    .parameter "timezone"

    .prologue
    .line 47
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "timezone"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/Clocker/World/data/ClocksDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "clocks"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
