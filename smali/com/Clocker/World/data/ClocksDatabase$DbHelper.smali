.class Lcom/Clocker/World/data/ClocksDatabase$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClocksDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Clocker/World/data/ClocksDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Clocker/World/data/ClocksDatabase;


# direct methods
.method public constructor <init>(Lcom/Clocker/World/data/ClocksDatabase;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/Clocker/World/data/ClocksDatabase$DbHelper;->this$0:Lcom/Clocker/World/data/ClocksDatabase;

    .line 74
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "_db"

    .prologue
    .line 79
    const-string v0, "CREATE TABLE IF NOT EXISTS clocks (_id integer primary key autoincrement, timezone text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "_db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 85
    return-void
.end method
