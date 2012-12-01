.class public Lcom/Clocker/World/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    .line 11
    new-instance v0, Lcom/airpush/android/Airpush;

    const-string v2, "24151"

    const-string v3, "1313655632378015528"

    const/4 v4, 0x0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 12
    return-void
.end method
