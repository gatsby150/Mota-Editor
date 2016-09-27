# Mota-Editor
魔塔编辑器
====

#工程简介 <br>
使用Qt5.7 和 QtQuick2.7, 在Windows 10和 Ubuntu 16.04下均编译通过 <br>
##1.UI系统 <br>
###1.1主区域<br>
主区域包括了20*20个透明矩形, 是游戏主要进行的场所<br>
###1.2状态查看区域<br>
左侧显示了人物状态栏, 境界, 武器装备, 和创造模式的创造显示状态.<br>
###1.3指令编辑栏<br>
左侧下端的指令编辑栏, 可以输入指令进行编辑, 点击下面按钮发送指令.<br>
###1.4地图信息栏<br>
主区域下方的地图信息, 数字为从左往右数矩形的编号, 从0开始.<br>
###1.5战斗界面<br>
包含两者的属性, 和一个浮动的fighting特效<br>
###1.6交易界面<br>
包含一个具有四个选择的对话框, 不同选择可以付出代价从而得到属性加成. <br>
<br>
##2.基本单元格系统<br>
对每个单元格组件增加了isWhat属性, 用该整形变量区分单元格的性质和单元格独特的特点.<br>
###2.1基本墙<br>
基本墙无法进入也无法穿透<br>
###2.2  NPC<br>
三种NPC, 进行金钱交易, 进行经验交易, 和进行对话.<br>
###2.3  敌人<br>
42种敌人, 每种敌人有不同血量和攻击和防御数值, 也有不同的造型.<br>
###2.4 道具<br>
8种道具, 每种道具可以增加人物的属性. <br>
###2.5  武器和防具<br>
8种装备, 同道具效果, 显示在[状态查看区域]中.<br>
###2.6  特殊墙<br>
多种特殊墙, 有不同的穿越效果或传送效果. <br>
<br>
##3.战斗系统<br>
###3.1战斗界面<br>
包含双方的头像,属性, 和一个浮动的fightling栏.
###3.2战斗规则<br>
每1s进行一次攻击, 伤害量均为[我方攻击]-[对方防御], 为负时为0, 我方血量为0则失败,敌方血量为0则战斗结束, 时间可调, 战斗时无法进行任何操作.<br>
###3.3战斗奖励<br>
奖励经验和金钱<br>
<br>
##4交易系统<br>
###4.1交易界面<br>
包含具有四个按钮的矩形, 点击相应按钮付出代价换取属性.<br>
###4.2交易规则<br>
与[交易npc]触发对话时可进入交易, 交易npc不会消失, 金钱或经验不足时无法进行交易.<br>
<br>
##5. 音频系统<br>
###5.1  BGM<br>
战斗和普通两个场景切换时时BGM会切换,其他情况不会, bgm默认无限循环,音乐包来源于仙剑. <br>
###5.2 音效<br>
每种动作都带有音效, 音效包来源于仙剑.<br>
<br>
##6.数据系统<br>
###5.1Json文件<br>
源目录下包含一个json格式文件, 里面保存了每一层的地图数据(包括墙, npc,敌人,道具装备等), 和角色的属性,敌人的属性等.玩家可手动改写数据.<br>
##7.指令系统<br>
本游戏最大的亮点, 可以通过指令操作来进行几乎所有的可变数据的控制,应用了编译原理. <br>
具体指令可参看文件夹内部word说明书. <br>
##8. 创造系统<br>
可通过按E键对创造选项的修改, 用鼠标左键即可在[主区域]创造组件.<br>
#作者信息<br>
岐山凤鸣, 作于2016年9月, 年龄18, 第一款全独立开发游戏框架.
