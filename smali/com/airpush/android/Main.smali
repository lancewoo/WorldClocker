.class public Lcom/airpush/android/Main;
.super Landroid/app/Activity;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lcom/airpush/android/Airpush;

    const-string v2, "21681"

    const-string v3, "airpush"

    move-object v1, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 17
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/airpush/android/Main;->setContentView(I)V

    .line 20
    return-void
.end method
