.class Lcom/Clocker/World/gui/WorldClock$1;
.super Landroid/os/Handler;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Clocker/World/gui/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Clocker/World/gui/WorldClock;


# direct methods
.method constructor <init>(Lcom/Clocker/World/gui/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/gui/WorldClock$1;->this$0:Lcom/Clocker/World/gui/WorldClock;

    .line 273
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/Clocker/World/gui/WorldClock$1;->this$0:Lcom/Clocker/World/gui/WorldClock;

    #calls: Lcom/Clocker/World/gui/WorldClock;->updateList()V
    invoke-static {v0}, Lcom/Clocker/World/gui/WorldClock;->access$0(Lcom/Clocker/World/gui/WorldClock;)V

    .line 277
    return-void
.end method
