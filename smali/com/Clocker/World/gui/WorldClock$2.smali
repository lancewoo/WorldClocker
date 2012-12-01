.class Lcom/Clocker/World/gui/WorldClock$2;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/Clocker/World/gui/WorldClock$2;->this$0:Lcom/Clocker/World/gui/WorldClock;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/Clocker/World/gui/WorldClock$2;->this$0:Lcom/Clocker/World/gui/WorldClock;

    #getter for: Lcom/Clocker/World/gui/WorldClock;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/Clocker/World/gui/WorldClock;->access$1(Lcom/Clocker/World/gui/WorldClock;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    const-wide/16 v1, 0x4e20

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Ljava/lang/InterruptedException;
    return-void

    .line 287
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
