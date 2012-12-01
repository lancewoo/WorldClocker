.class Lcom/Clocker/World/gui/WorldClock$3;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/gui/WorldClock;->updateList()V
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
    iput-object p1, p0, Lcom/Clocker/World/gui/WorldClock$3;->this$0:Lcom/Clocker/World/gui/WorldClock;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v7, 0x0

    .line 160
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock$3;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/Clocker/World/gui/WorldClock$3;->this$0:Lcom/Clocker/World/gui/WorldClock;

    const v6, 0x7f050034

    invoke-virtual {v5, v6}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 162
    .local v2, standardFonts:Z
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v7

    .line 188
    .end local p1
    :goto_0
    return v4

    .line 165
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/high16 v4, 0x41a0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    move v4, v7

    .line 166
    goto :goto_0

    .line 168
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const/high16 v4, 0x4190

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    move v4, v7

    .line 169
    goto :goto_0

    .line 174
    .restart local p1
    :cond_0
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock$3;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-virtual {v4}, Lcom/Clocker/World/gui/WorldClock;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "jmacscrl.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 175
    .local v3, textTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock$3;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-virtual {v4}, Lcom/Clocker/World/gui/WorldClock;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "bravenewera.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 177
    .local v1, clockTypeface:Landroid/graphics/Typeface;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_3
    move v4, v7

    .line 188
    goto :goto_0

    .line 179
    :pswitch_4
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->refreshDrawableState()V

    move v4, v7

    .line 181
    goto :goto_0

    .line 183
    .restart local p1
    :pswitch_5
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->refreshDrawableState()V

    move v4, v7

    .line 185
    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x7f060000
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
