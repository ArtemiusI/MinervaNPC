BEGIN C0MMinJ
BEGIN C0Modr

// Blade of the Gathering Storm

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalkGatheringStorm","GLOBAL",1)~ THEN C0MMinJ MINERVA-BLADETALK
@39 /* Nice blade. I've come across some weapons of Eastern design like this one before, but this one's the prettiest I've seen. */
DO ~IncrementGlobal("C0MMinTalkGatheringStorm","GLOBAL",1)~
= @40 /* Mind if I give it a closer look-over? */
END
++ @41 /* Feel free. */ + MINERVA-BLADETALK-1
++ @42 /* Be careful with it. I'm sure the essence of lightning infused into it isn't just for show. */ + MINERVA-BLADETALK-2
++ @43 /* I don't think that's safe. We can try it out in battle later. */ + MINERVA-BLADETALK-X

CHAIN C0MMinJ MINERVA-BLADETALK-X
@44 /* Boo. You're boring. */
EXIT

CHAIN C0MMinJ MINERVA-BLADETALK-1
@45 /* Hmm, nice balance... pretty good grip... not too weighty, either. I wonder how well it flies...? Hi-yah! */
= @46 /* Wow, it definitely handles well. Now that's my type of weapon... w—w—WHOA! */
= @47 /* Did... did you just see that? It came back to my hand... I just caught a lightning bolt! That was amazing! */
END
++ @48 /* I saw that. Quite impressive. */ + MINERVA-BLADETALK-3
++ @49 /* Good thing you caught it. */ + MINERVA-BLADETALK-4
++ @50 /* Alright, stop playing with that. It's not a toy. */ + MINERVA-BLADETALK-X

CHAIN C0MMinJ MINERVA-BLADETALK-2
@51 /* Yep, I know. Don't worry, I haven't accidentally misused an artifact since... uh, let me say, there hasn't been a lethal misfire in some time. */
EXTERN C0MMinJ MINERVA-BLADETALK-1

CHAIN C0MMinJ MINERVA-BLADETALK-3
@52 /* Ohh, I just have to try this thing out in action. This'll be too much fun! */
EXIT

CHAIN C0MMinJ MINERVA-BLADETALK-4
@53 /* Of course I caught it! I never miss... not unless I mean to. */
EXTERN C0MMinJ MINERVA-BLADETALK-3

// Optional Talk: Lucky Knucky

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalkFishboneCraft","GLOBAL",1)~ THEN C0MMinJ MINERVA-FISHBONE-CRAFT
@54 /* Say, <PLAYER1>, that's a nice piece of knucklehead trout we've got with us. */
= @55 /* It's a lot more valuable than it looks, you know. The people of the Ten Towns are well known for carving elegant scrimshaw out of these bones. */
DO ~IncrementGlobal("C0MMinTalkFishboneCraft","GLOBAL",1)~
= @56 /* I learned a bit of carving during my stay in Easthaven. I'm only an amateur, but why don't you let me do something with these? It might make a nice lucky charm for our travels! */
END
++ @57 /* Sure, go ahead. I'm eager to see what you can make. */ + MINERVA-FISHBONE-CRAFT-1
++ @58 /* No, I'm going to sell them. They must be valuable. */ + MINERVA-FISHBONE-CRAFT-2

CHAIN C0MMinJ MINERVA-FISHBONE-CRAFT-1
@59 /* Great! I'll just hold onto them for now. When I'm done, you'll be the first to see my masterpiece! */
DO ~SetGlobalTimer("C0MMinTalkFishboneCraftTimer","GLOBAL",ONE_DAY) TakePartyItem("fish") DestroyItem("fish")~ EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-CRAFT-2
@60 /* I guess you could do that too. I really wanted to try my hand at making something impressive, though! */
DO ~SetGlobal("C0MMinTalkFishboneCraft","GLOBAL",-1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalkFishboneCraft","GLOBAL",2)
GlobalTimerExpired("C0MMinTalkFishboneCraftTimer","GLOBAL")~ THEN C0MMinJ MINERVA-FISHBONE-CRAFT2
@61 /* Ta-da! Isn't it pretty? A 'lucky knucky', so to speak. Keep it close, and it'll bring good fortune! */
DO ~IncrementGlobal("C0MMinTalkFishboneCraft","GLOBAL",1) GiveItemCreate("c0mfish",Player1,1,0,0)~
= @62 /* Here, you take it! Being the leader, I'm sure any luck it brings you will spread around. Haha! */
EXIT

// Optional Talk: After slaying goblins

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalkFishbone","AR1000",1)~ THEN C0MMinJ MINERVA-FISHBONE
@63 /* Well, that battle wasn't anything out of the ordinary. Those knucklehead bones, though... those'll make for some nice ivory. */
= @64 /* That aside... you're pretty good in a fight, <PLAYER1>. Looks like I was right to tag along with you! */
DO ~IncrementGlobal("C0MMinTalkFishbone","AR1000",1)~
END
++ @65 /* Same for you. Your knife-throwing skills are exceptional. */ + MINERVA-FISHBONE-1
++ @66 /* We'll have plenty more fights like that to come. */ + MINERVA-FISHBONE-2
++ @67 /* I suppose. I expected more from you, though. */ + MINERVA-FISHBONE-3
++ @68 /* No time for talk right now. We should bring these bones back. */ + MINERVA-FISHBONE-END

CHAIN C0MMinJ MINERVA-FISHBONE-END
@69 /* Yes, you're right. Let's go. */
EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-1
@70 /* Aww, thanks. Hand-eye coordination's always been my forte. It comes in handy for more than aiming, too. A lot of the artificer's work demands near-surgical levels of precision. */
EXTERN C0MMinJ MINERVA-FISHBONE-4

CHAIN C0MMinJ MINERVA-FISHBONE-2
@71 /* Uh-huh. I'm sure of that. If they're as easy as that fight was, though, we'll have no trouble... which means, of course things are only going to get more difficult. That's classic adventuring for you! */
EXTERN C0MMinJ MINERVA-FISHBONE-4

CHAIN C0MMinJ MINERVA-FISHBONE-3
@72 /* Oho, is that a challenge now? I'll make you eat your words soon enough, <PLAYER1>! */
EXTERN C0MMinJ MINERVA-FISHBONE-4

CHAIN C0MMinJ MINERVA-FISHBONE-4
@73 /* I've got to say, though, it's great to have someone who's got my back for a change. I've got no problem sniping someone from twenty feet away, but it's always a pain when they get close. */
= @74 /* Plus, having someone to talk with is always a bonus. Let's make this adventure an interesting one for us both! */
END
+ ~Global("C0MMinHadBlastKnives","GLOBAL",1)
!HasItem("C0MDagg1","C0MMin")
!HasItem("C0MDagg2","C0MMin")
!HasItem("C0MDagg3","C0MMin")~ + @75 /* By the way... what are those bronze knives you were using? I don't think I've ever seen anything like them before. */ + MINERVA-FISHBONE-KNIVES
+ ~Global("C0MMinHadBlastKnives","GLOBAL",1)
OR(3)
HasItem("C0MDagg1","C0MMin")
HasItem("C0MDagg2","C0MMin")
HasItem("C0MDagg3","C0MMin")~ + @76 /* By the way... what are those bronze knives you have? I don't think I've ever seen anything like them before. */ + MINERVA-FISHBONE-KNIVES
+ ~Global("C0MMinHadBlastKnives","GLOBAL",1)~ + @77 /* I aim to please. */ EXIT
+ ~Global("C0MMinHadBlastKnives","GLOBAL",1)~ + @78 /* No promises. */ EXIT 
IF ~!Global("C0MMinHadBlastKnives","GLOBAL",1)
!HasItem("C0MDagg1","C0MMin")
!HasItem("C0MDagg2","C0MMin")
!HasItem("C0MDagg3","C0MMin")~ EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES
@79 /* Oh, those are what I call my 'secret weapon'. They're specially designed to house a specially-made explosive oil. */
END
+ ~OR(2)
CheckStatGT(Player1,14,INT)
CheckStatGT(Player1,29,LORE)~ + @80 /* I hear the Lantanese are expert alchemists. I assume the oil you use is different from the explosive oils I'm familiar with, too. */ + MINERVA-FISHBONE-KNIVES-1
+ ~!CheckStatGT(Player1,14,INT)
!CheckStatGT(Player1,29,LORE)~ + @81 /* A Lantanese trade secret, I assume? */ + MINERVA-FISHBONE-KNIVES-2
++ @82 /* I see. Well, now I know. Let's go. */ EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES-1
@83 /* I suppose so. Although it's less of a 'Lantanese trade secret' and more of a personal recipe I put together from adapting various alchemical formulae. */
EXTERN C0MMinJ MINERVA-FISHBONE-KNIVES-3

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES-2
@84 /* Well... less of a 'Lantanese trade secret' and more of a personal recipe I put together from adapting various alchemical formulae. */
EXTERN C0MMinJ MINERVA-FISHBONE-KNIVES-3

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES-3
@85 /* Technically? I'm not supposed to be using my alchemical knowledge this way. The Gondar church frowns upon making explosive weaponry and generally restricts it for demolition uses only. So I just make enough to seal some in the hollowed spaces in the hilt and blade of these knives. Then I just light the fuses and throw. */
END
++ @86 /* That'll certainly be useful against any dangerous foes we come across. */ + MINERVA-FISHBONE-KNIVES-4
++ @87 /* If it's dangerous and restricted, how can you make and use it so freely? */ + MINERVA-FISHBONE-KNIVES-5
++ @88 /* I think I've heard enough. We'd better get back to town. */ EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES-4
@89 /* My thoughts exactly. Might come in handy one day if we find ourselves fighting a dragon or something, hmm? Ha ha, that'd be quite a fight. */
EXIT

CHAIN C0MMinJ MINERVA-FISHBONE-KNIVES-5
@90 /* Well... technically I shouldn't, so I'd rather you didn't go around and spread my secrets. That said, though, I do regulate carefully. As long as I'm not making too much and selling it in barrels, no one gets hurt. I mean, no one who isn't supposed to. */
= @91 /* Besides, knowledge isn't exactly useful if you're not allowed to make use of it, right? It'd be a waste if I didn't put everything I've learned to use somehow. */
EXIT

// Optional Talk: After clearing Cave

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalkContract","AR1201",1)~ THEN C0MMinJ MINERVA-FISHBONE
@92 /* Ick... too bad about the caravan. At least we wiped out the cause and saved what's left of the supplies... hopefully someone'll be here to take care of this. */
DO ~IncrementGlobal("C0MMinTalkContract","AR1201",1)~
= @93 /* I think Gaspar'll be interested in seeing that contract, by the way. He's going to have a hard time if he doesn't learn what happened. */
EXIT

// Optional Talk: Finding Erevain's Sword

CHAIN IF WEIGHT #-1 ~Global("C0MMinErevainSword","AR4001",1)~ THEN C0MMinJ MINERVA-EREVAIN-SWORD
@94 /* Oh no... that sword belonged to Erevain. I guess this really is him. I could barely recognize him with all the wounds. */
DO ~IncrementGlobal("C0MMinErevainSword","AR4001",1)~
END
+ ~Global("Erevain_Met","GLOBAL",1)~ + @95 /* How in the gods' name did he end up here? */ + MINERVA-EREVAIN-SWORD-1
+ ~!Global("Erevain_Met","GLOBAL",1)~ + @96 /* I take it you knew him? */ + MINERVA-EREVAIN-SWORD-2
+ ~Global("Erevain_Met","GLOBAL",1)~ + @97 /* He seemed like a decent person, from the brief time I met him. Truly a tragedy. */ + MINERVA-EREVAIN-SWORD-3
+ ~Global("Erevain_Met","GLOBAL",1)~ + @98 /* So much for the wonders of adventure. */ + MINERVA-EREVAIN-SWORD-3
+ ~!Global("Erevain_Met","GLOBAL",1)~ + @99 /* Looks like the monsters here did a number on him. */ + MINERVA-EREVAIN-SWORD-4
+ ~Global("Erevain_Met","GLOBAL",1)~ + @100 /* I didn't know him well enough to have any particular feelings. We've got more important things to dwell on. */ EXIT
+ ~!Global("Erevain_Met","GLOBAL",1)~ + @101 /* Just another corpse in our way. We've got more important things to dwell on. */ EXIT

CHAIN C0MMinJ MINERVA-EREVAIN-SWORD-1
@102 /* I—I don't know. Maybe he heard what was happening over here and decided to come and try to help. He seemed like the type of person who'd do that. */
EXTERN C0MMinJ MINERVA-EREVAIN-SWORD-3

CHAIN C0MMinJ MINERVA-EREVAIN-SWORD-2
@103 /* We met... briefly. He was staying in the room next to me back in the inn at Easthaven. I knew his name, but didn't really get a chance to know him. */
EXTERN C0MMinJ MINERVA-EREVAIN-SWORD-4

CHAIN C0MMinJ MINERVA-EREVAIN-SWORD-3
@104 /* *sigh* If only he came with us instead instead of choosing to go out on his own. Why do elves have to be so stubborn sometimes? */
= IF ~Race(Player1,ELF)~ THEN @105 /* Erm... not you, <PLAYER1>, of course. I'm glad you're not like that. I'd hate to imagine you dying in a place like this, all alone. */
EXTERN C0MMinJ MINERVA-EREVAIN-SWORD-5

CHAIN C0MMinJ MINERVA-EREVAIN-SWORD-4
@106 /* Did he really come here to try and do something on his own? Imagine if he ran into us first instead. He'd probably still be alive. */
EXTERN C0MMinJ MINERVA-EREVAIN-SWORD-5

CHAIN C0MMinJ MINERVA-EREVAIN-SWORD-5
@107 /* I've always believed adventures were only worth it if you had a friend to share them with. Not just for the conversation, but more importantly... so you can protect each other. */
= @108 /* Otherwise, to end up dying like this... it's rather pitiable, don't you think? */
EXIT

// Optional Talk: False Eldathyns

CHAIN IF WEIGHT #-1 ~Global("C0MMinFalseEldath","AR4004",1)~ THEN C0MMinJ MINERVA-FAKE-ELDATH
@109 /* Hmm... I don't know. Something feels off here. */
DO ~IncrementGlobal("C0MMinFalseEldath","AR4004",1)~
END
+ ~CheckStatGT(Player1,15,INT)~ + @110 /* I agree. This place seems too convenient. */ + MINERVA-FAKE-ELDATH-1
+ ~!CheckStatGT(Player1,15,INT)~ + @111 /* What feels off? */ + MINERVA-FAKE-ELDATH-2
++ @112 /* You're overthinking things. Let's be grateful for the opportunity to have some peace. */ EXIT

CHAIN C0MMinJ MINERVA-FAKE-ELDATH-1
@113 /* Yeah. My thoughts exactly. */
EXTERN C0MMinJ MINERVA-FAKE-ELDATH-2

CHAIN C0MMinJ MINERVA-FAKE-ELDATH-2
@114 /* Besides the fact that a place like this even exists under everything we ran into on our way here, there's something about the way this temple is kept that seems terribly wrong. */
== C0MMinJ IF ~GlobalGT("C0MMinTempusTemple","GLOBAL",0)~ THEN @115 /* Remember what I said before about all temples having the same feeling of piety? Well... I'm not feeling that here. Not towards Eldath, anyway. */
== C0MMinJ @116 /* Eldath's the goddess of peace, pools, springs and waterfalls. Are you seeing any of those here? I can't imagine loyal Eldathyn choosing a place like this to revere their goddess's ideals. */
== C0MMinJ @117 /* I think we should ask Albion a few more questions. If he has something to hide, he'll let it slip sooner or later. Let's be ready for a fight, just in case. */
EXIT

// Optional Talk: Quartus

CHAIN IF WEIGHT #-1 ~Global("C0MMinQuartus","GLOBAL",1)~ THEN C0MMinJ MINERVA-QUARTUS
@118 /* Yes... yes, I think I've done it! How's the body, Quartus? */
DO ~IncrementGlobal("C0MMinQuartus","GLOBAL",1)~
== C0MODR @119 /* *whirrs and clicks* */
== C0MMinJ @120 /* Okay, that's great! You'll be able to help out now, right? */
== C0MODR @121 /* *nods* */
END
+ ~OR(2)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,40,LORE)~ + @122 /* A modron? */ + MINERVA-QUARTUS-1
+ ~!CheckStatGT(Player1,15,INT)
!CheckStatGT(Player1,40,LORE)~ + @123 /* What is this thing? */ + MINERVA-QUARTUS-1
++ @124 /* If that thing's helpful to us, then make use of it. I don't need to know anything. */ EXIT

CHAIN C0MMinJ MINERVA-QUARTUS-1
@125 /* Say hi to Quartus. That's just the name I use for him, modrons usually don't have individual names. I found the poor fellow abandoned in an old mages' tower, probably summoned from his plane by whoever used to live there. I don't know what happened, but he had probably gone rogue and was in a pretty poor state at the time. He couldn't even get back to his own plane, so I fixed him up as much as I could and he followed me ever since. */
== C0MMinJ @126 /* His old body kinda... fell apart, though, a while before we met, and there wasn't much I could do about it. I tried a few replacements, but this is one very picky spirit. It took me up until now to replicate the same creation process from Mechanus using the few things I could understand from Quartus... after a looooot of trial and error. */
== C0MODR @127 /* *whirring* *tap* */
== C0MMinJ @128 /* Anyways, now that he's got his new body. He's willing to help us out. To be honest, he's not that great in a fight since he refuses to use anything other than that wrench, but... I'm not sure where he learned it from, but he can use a little bit of magic. It might've been done by whoever summoned him. Maybe. I can only barely understand most of the things he says. */
EXIT

// Optional Talk: Dorn's Deep

CHAIN IF WEIGHT #-1 ~Global("C0MMinDornsDeep","AR6002",1)~ THEN C0MMinJ MINERVA-DORNDEEP
@129 /* What happened here? The place looks like it's completely overrun. There's not a dwarf in sight! */
DO ~IncrementGlobal("C0MMinDornsDeep","AR6002",1)~
END
++ @130 /* Maybe Larrel had something going about the dwarves driving themselves to ruin. */ + MINERVA-DORNDEEP-1
++ @131 /* They may have been driven further underground. */ + MINERVA-DORNDEEP-2
+ ~!Global("C0MMinRomanceActive","GLOBAL",1)
!Global("C0MMinRomanceActive","GLOBAL",2)
Race(Player1,DWARF)~ + @132 /* I can't believe it. Did my kinsmen really do this to themselves? */ + MINERVA-DORNDEEP-3
+ ~OR(2)
Global("C0MMinRomanceActive","GLOBAL",1)
Global("C0MMinRomanceActive","GLOBAL",2)
Race(Player1,DWARF)~ + @132 /* I can't believe it. Did my kinsmen really do this to themselves? */ + MINERVA-DORNDEEP-4
+ ~!Race(Player1,DWARF)~ + @133 /* And this is why living underground is stupid. */ + MINERVA-DORNDEEP-5
++ @134 /* Be quiet, and stay alert. It's too dangerous to talk right now. */ EXIT

CHAIN C0MMinJ MINERVA-DORNDEEP-1
@135 /* I don't know... dwarves are proud and stubborn, but betraying the elves? It's possible, I suppose... everyone's susceptible to making terrible decisions. */
EXTERN C0MMinJ MINERVA-DORNDEEP-5

CHAIN C0MMinJ MINERVA-DORNDEEP-2
@136 /* If that's true, there won't be many of them left. Dwarves are stubborn people. They'll fight until the very last to protect a place as important as this. */
EXTERN C0MMinJ MINERVA-DORNDEEP-5

CHAIN C0MMinJ MINERVA-DORNDEEP-3
@137 /* It's alright, <PLAYER1>... there's always a chance that the truth is different from what we were told. And even if it is true... it doesn't mean your people are all to blame. */
EXTERN C0MMinJ MINERVA-DORNDEEP-5

CHAIN C0MMinJ MINERVA-DORNDEEP-4
@138 /* (Minerva lays a reassuring hand on your shoulder.) */
EXTERN C0MMinJ MINERVA-DORNDEEP-3

CHAIN C0MMinJ MINERVA-DORNDEEP-5
@139 /* I was hoping that time would be kinder to this place compared to the Severed Hand. But at least the elves stayed dedicated to preserving their memory. I could catch a glimpse of how majestic it must once have been, and I was in awe the whole time. */
= @140 /* Dorn's Deep as it is now... well, I look at what's left and I only feel hollow inside. Even if the dwarves brought this upon themselves—and I still don't want to believe it—it's still tragic. */
END
+ ~Race(Player1,DWARF)~ + @141 /* I wish I could've seen these halls during their time of glory, rather than like this. */ + MINERVA-DORNDEEP-6
++ @142 /* You're right. This place feels completely lifeless. */ + MINERVA-DORNDEEP-6
+ ~!Race(Player1,ELF)~ + @143 /* If the dwarves really betrayed the elves, then they had it coming. */ + MINERVA-DORNDEEP-6
+ ~Race(Player1,ELF)~ + @144 /* If the dwarves really betrayed my kin, then they had it coming. */ + MINERVA-DORNDEEP-6
++ @145 /* That's enough. We can talk more about this later. */ EXIT

CHAIN C0MMinJ MINERVA-DORNDEEP-6
@146 /* *sigh* I used to criticize my family and friends over being too narrow-minded and obsessed only with their own knowledge, but now I have to wonder if it's better to preserve what's yours, and avoid losing everything. */
= @147 /* Oh, look at how long I've been talking for, and I'm still going... This isn't really the time, is it? I'll stop. */
EXIT

// Optional Talk: Ice Salamanders

CHAIN IF WEIGHT #-1 ~Global("C0MMinIceSalamander","AR7001",1)~ THEN C0MMinJ MINERVA-SALAMANDER
@148 /* Wow. Isn't that a whale? I can't remember the last one I've seen one of those during my travels. And it's just... frozen there, possibly forever. */
DO ~IncrementGlobal("C0MMinIceSalamander","AR7001",1)~
END
+ ~OR(2)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
!Class(LastTalkedToBy,SHAMAN)~ + @149 /* It's a travesty. A creature like this deserves better than to be preserved like a trophy. */ + MINERVA-SALAMANDER-1
++ @150 /* This is the most twisted museum I've ever seen in my life. */ + MINERVA-SALAMANDER-1
++ @151 /* Is that really a whale? I've never seen one of those before. */ + MINERVA-SALAMANDER-2
++ @152 /* Look at how enormous it is! I'd be terrified if it were moving. */ + MINERVA-SALAMANDER-3
++ @153 /* Not really all that impressive, in my opinion. */ + MINERVA-SALAMANDER-4
++ @154 /* I'm not interested in discussing marine life right now. */ EXIT

CHAIN C0MMinJ MINERVA-SALAMANDER-1
@155 /* I can agree with that. Still, I've never had a chance to take such a close look at one of these before... */
EXTERN C0MMinJ MINERVA-SALAMANDER-5

CHAIN C0MMinJ MINERVA-SALAMANDER-2
@156 /* Yep, it's a whale alright. I'm not surprised if it's your first time seeing one. */
EXTERN C0MMinJ MINERVA-SALAMANDER-5

CHAIN C0MMinJ MINERVA-SALAMANDER-3
@157 /* Oh, I can agree with that. With their size, they can just open their mouths and eat whatever floats in. Terrifying stuff. *shudder* */
EXTERN C0MMinJ MINERVA-SALAMANDER-5

CHAIN C0MMinJ MINERVA-SALAMANDER-4
@158 /* Really? I wonder what I could find that might impress you, then. Elephants? Krakens? Maybe a griffon? */
EXTERN C0MMinJ MINERVA-SALAMANDER-5

CHAIN C0MMinJ MINERVA-SALAMANDER-5
@159 /* It's surreal to realize that creatures like this actually exist somewhere far away from where you live. Imagine if I'd stayed in Lantan. Do you think I'd ever have seen a whale in my life? */
= @160 /* Actually, I think that could go for most of the things we've seen in this journey. Magical trees, elven ruins, now a frozen aquatic museum... and there's even more out there! */
= @161 /* Still... it's pretty terrible for all these creatures to just be suspended like this. For all we know, they could still be alive. I wish I could see them moving. */
EXIT

// Optional Talk: Dwarf Puzzle

CHAIN IF WEIGHT #-1 ~Global("C0MMinDwarfPuzzle","GLOBAL",1)~ THEN C0MMinJ MINERVA-DWARF-PUZZLE
@162 /* Huh. Curious. I'd be careful stepping on anything, <PLAYER1>... there's a lightning-y smell in the air. Look, my nose is twitching. See that? */
DO ~IncrementGlobal("C0MMinDwarfPuzzle","GLOBAL",1)~
END
++ @163 /* This appears to be some sort of puzzle. Any ideas? */ + MINERVA-DWARF-PUZZLE-1
++ @164 /* I'll... take your word for it. */ EXIT

CHAIN C0MMinJ MINERVA-DWARF-PUZZLE-1
@165 /* Well, some of these symbols are the same as the ones on that table in the other room... */
END
+ ~OR(2)
CheckStatGT(Player1,30,LORE)
Race(Player1,DWARF)~ + @166 /* That table had the symbols of Moradin, Clangeddin and Berronar Truesilver. Maybe we're supposed to match them with these ones? */ + MINERVA-DWARF-PUZZLE-2
+ ~!CheckStatGT(Player1,30,LORE)
!Race(Player1,DWARF)~ + @167 /* That's probably a clue of some sort. */ + MINERVA-DWARF-PUZZLE-3

CHAIN C0MMinJ MINERVA-DWARF-PUZZLE-2
@168 /* Yep, I was just about to say the same thing. Just make sure not to step on the wrong symbol. I have a feeling the lightning-y smell isn't just the atmosphere... */
EXIT

CHAIN C0MMinJ MINERVA-DWARF-PUZZLE-3
@169 /* Hmm... I've visited a few dwarven holds in the past. The runes on that table were definitely the symbols of Moradin, Clangeddin and Berronar Truesilver. I think we're supposed to match them with the symbols on the floor here. */
= @170 /* Just make sure not to step on the wrong symbol. I have a feeling the lightning-y smell isn't just the atmosphere... */
EXIT

// Optional Talk: Golem Building Book

CHAIN IF WEIGHT #-1 ~Global("C0MMinGolemBook","GLOBAL",1)~ THEN C0MMinJ MINERVA-GOLEMS
@171 /* Huh, what's this now? A golem manual? */
DO ~IncrementGlobal("C0MMinGolemBook","GLOBAL",1)~
= @172 /* *flip* Wow, this is some interesting stuff. Why anyone'd leave something like this lying around is a mystery to me though. Someone could really wreak havoc with the command phrases written down here. */
= @173 /* They might be useful for future reference though. I'll just commit some of the more useful stuff to memory, just in case. */
EXIT

// Optional Talk: Squirrels

CHAIN IF WEIGHT #-1 ~Global("C0MMinSquirrels","GLOBAL",1)~ THEN C0MMinJ MINERVA-SQUIRRELS
@174 /* Aww, look at the poor little squirrels. The box is too small for them, I think. */
DO ~IncrementGlobal("C0MMinSquirrels","GLOBAL",1)~
= @175 /* It'd be irresponsible to let them out here, though. There's got to be a safer place for them somewhere... */
EXIT

// First Talk: Leaving Easthaven

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk1","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK1
@176 /* Finally, we're all set and ready to leave! Our first adventure together awaits us, <PLAYER1>. Is that not exciting? */
DO ~IncrementGlobal("C0MMinTalk1","GLOBAL",1)~
END
++ @177 /* Absolutely! I can't wait to see what awaits us. */ + MINERVA-TALK1-1
++ @178 /* I'm glad to see that you're so enthusiastic. */ + MINERVA-TALK1-2
++ @179 /* Calm down a little. We're not travelling for fun and games. */ + MINERVA-TALK1-3
++ @180 /* I don't care about how the journey goes, as long as I get paid. */ + MINERVA-TALK1-4
++ @181 /* This isn't really the time for you to share your excitement. */ EXIT

CHAIN C0MMinJ MINERVA-TALK1-1
@182 /* That's the spirit! As long as we take care of each other, I'm sure we'll have plenty of tales to tell soon enough. */
EXTERN C0MMinJ MINERVA-TALK1-5

CHAIN C0MMinJ MINERVA-TALK1-2
@183 /* Of course! Why travel if you're not going in with all smiles and anticipation? */
EXTERN C0MMinJ MINERVA-TALK1-5

CHAIN C0MMinJ MINERVA-TALK1-3
@184 /* Well, of course there is a time for solemnity, but come on now. The adventure has hardly started! Would you not rather begin with as much optimism as you can muster? */
EXTERN C0MMinJ MINERVA-TALK1-5

CHAIN C0MMinJ MINERVA-TALK1-4
@185 /* If that's what you're interested in, then think of all the treasures that may be found! Lost, mystical artifacts, each with a story to tell. Doesn't that, at least, fill you with some measure of joy? */
EXTERN C0MMinJ MINERVA-TALK1-5

CHAIN C0MMinJ MINERVA-TALK1-5
@186 /* ...Ha ha, I'm sorry. Maybe my enthusiasm is a little too much this early on. We've only just met, after all. */
= @187 /* I'm just glad I had this chance to find like-minded companions for this journey. I love adventuring, but I hate doing it alone. */
END
++ @188 /* I agree. It's always preferable to have company. */ + MINERVA-TALK1-6
++ @189 /* Did you travel all the way to Easthaven alone? */ + MINERVA-TALK1-7
++ @190 /* I like companionship, but I could do with a bit less chatter. */ + MINERVA-TALK1-8

CHAIN C0MMinJ MINERVA-TALK1-6
@191 /* That's exactly what I think, too. It's not as interesting without someone to fight alongside, or share bread, or just to talk to. */
END
++ @189 /* Did you travel all the way to Easthaven alone? */ + MINERVA-TALK1-7
++ @190 /* I like companionship, but I could do with a bit less chatter. */ + MINERVA-TALK1-8

CHAIN C0MMinJ MINERVA-TALK1-7
@192 /* Well, not at first. I made a bit of coin escorting a caravan to Caer-Dineval, after which I set out on my own after I failed to find anyone else willing to make the journey to Easthaven. */
= @193 /* Actually, if I hadn't seen you coming into the town, I probably would have set out by myself again. As fun as it was in Easthaven, fishing and goblin-hunting isn't really a new experience for me. */
END
++ @194 /* You mentioned you were from Lantan, right? That's a long way from the North. What brought you here? */ + MINERVA-TALK1-9
++ @195 /* That's enough talking for now. Leave the rest for another time. */ + MINERVA-TALK1-8

CHAIN C0MMinJ MINERVA-TALK1-8
@196 /* Oh, have it your way. We'll have plenty of opportunities to talk during the journey, after all. And if you're not interested, there'll be plenty of other company that might be. */
EXIT

CHAIN C0MMinJ MINERVA-TALK1-9
@197 /* There's the question I was expecting sooner or later. Yes, I journeyed here from Lantan. Not directly, of course, I've had a few tale-worthy adventures down further south, but I'd rather focus on this story-to-be at the moment. */
= @198 /* My family, the Glimmershines, have a nice, comfortable position as inventors and teachers in our homeland, and I did involve myself in the family trade for some time, but it was all so formulaic and uninspiring after a while. I found there was more potential to be found in a practical application of my skills, in the larger world beyond our islands. */
= @199 /* So, when the opportunity came, I left my cozy teaching position at the Sambaran Academy for some experiential study, and travelled all the way from the Sword Coast to here. And now here I am. */
END
++ @200 /* I can approve of learning through experience. */ + MINERVA-TALK1-10
++ @201 /* You're an academic? I wouldn't have expected that from the looks of you. */ + MINERVA-TALK1-11
++ @202 /* I think I know enough about you now. Let's get moving. */ EXIT

CHAIN C0MMinJ MINERVA-TALK1-10
@203 /* Yep. Although, I still look back fondly on my studies now and again, even though my academic life was briefer than most. Some of the skills I've learned are still useful to this day. */
EXTERN C0MMinJ MINERVA-TALK1-12

CHAIN C0MMinJ MINERVA-TALK1-11
@204 /* Surprising, isn't it? To be honest, I'm not that much different in a classroom, aside from maybe the choice of outfit. */
EXTERN C0MMinJ MINERVA-TALK1-12

CHAIN C0MMinJ MINERVA-TALK1-12
@205 /* Oh, but I think we've talked for quite a while already. We should finish whatever we need to do then get a nice, long rest in a warm lodging, so we'll be ready for the journey ahead. */
EXIT

// Second Talk: Post-Avalanche

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk2","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK2
@206 /* Wow. Look at all of that snow... it's all starting to sink in after the fact that it happened, huh? */
DO ~IncrementGlobal("C0MMinTalk2","GLOBAL",1)~
END
++ @207 /* That it is. */ + MINERVA-TALK2-1
++ @208 /* Poor Hrothgar. */ + MINERVA-TALK2-2
++ @209 /* We survived. That's all that matters. */ + MINERVA-TALK2-3
++ @210 /* Talking right now is a waste of time. */ + MINERVA-TALK2-END

CHAIN C0MMinJ MINERVA-TALK2-1
@211 /* I'd talked with almost everyone in the expedition. I even promised to treat a few of them to a meal once we finished the journey. Ha ha... guess that's not possible anymore. */
= @212 /* To be honest, I wasn't expecting our journey to begin like this at all. The whole thing from the ambush to the avalanche... I don't think it was just a coincidence. */
END
+ ~OR(2)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)~ + @213 /* I agree. It all seemed too well planned. */ + MINERVA-TALK2-4
+ ~!CheckStatGT(Player1,15,INT)
!CheckStatGT(Player1,15,WIS)~ + @214 /* I'm not sure. Now that you mention it, though... */ + MINERVA-TALK2-4
++ @215 /* If this was a plan to get us killed, someone's going to pay for it. */ + MINERVA-TALK2-4
++ @216 /* You look shaken. Will you be alright? */ + MINERVA-TALK2-5
++ @217 /* That's enough. We've still got a ways to go before we reach Kuldahar. */ + MINERVA-TALK2-END

CHAIN C0MMinJ MINERVA-TALK2-2
@218 /* Hrothgar, Accalia, Hildreth... all dead. */
EXTERN C0MMinJ MINERVA-TALK2-1

CHAIN C0MMinJ MINERVA-TALK2-3
@219 /* But—no, of course I'm glad we're still alive. But... */
EXTERN C0MMinJ MINERVA-TALK2-1

CHAIN C0MMinJ MINERVA-TALK2-4
@220 /* It's just a guess, though. Maybe we were all just very, very unfortunate. */
EXTERN C0MMinJ MINERVA-TALK2-6

CHAIN C0MMinJ MINERVA-TALK2-5
@221 /* I think I will be. I'm just a little shaken at the moment. */
EXTERN C0MMinJ MINERVA-TALK2-6

CHAIN C0MMinJ MINERVA-TALK2-6
@222 /* I guess this probably isn't the first near-death experience for either of us. But with so many people with us dead, it's a little dampening on the adventuring experience? */
= @223 /* But, then again... I'm glad that I'm alive, and I'm not the only one. Since we're the only ones alive, I guess we're meant to stay together, right? */
END
+ ~Global("C0MMinMatch","GLOBAL",1)~ + @224 /* I'm glad you're alive. It would've saddened me to lose you. */ DO ~IncrementGlobal("C0MMinFlirt","GLOBAL",1)~ + MINERVA-TALK2-FLIRT
++ @225 /* We'll be counting on each other from now on. */ + MINERVA-TALK2-7
++ @226 /* I suppose, at least for the moment. */ + MINERVA-TALK2-7
++ @227 /* You wouldn't have been my first choice, but I could do for worse. */ + MINERVA-TALK2-8

CHAIN C0MMinJ MINERVA-TALK2-FLIRT
@228 /* Ha ha. Oh, stop it. We've only known each other for a little while. */
= @229 /* That said, though... it's nice to know I've made that much of an impression on you already. I'm glad you're alive too. */
EXTERN C0MMinJ MINERVA-TALK2-9

CHAIN C0MMinJ MINERVA-TALK2-7
@230 /* Yep. And as long as we're sticking together, I've got your back. */
EXTERN C0MMinJ MINERVA-TALK2-9

CHAIN C0MMinJ MINERVA-TALK2-8
@231 /* Pfft. We just got out of a life-or-death situation and that's what you've got to say? Well, since we're the only ones left, I guess I'll forgive you. */
EXTERN C0MMinJ MINERVA-TALK2-9

CHAIN C0MMinJ MINERVA-TALK2-9
@232 /* Come on, let's make our way east. Kuldahar shouldn't be far, and I hear it's lovely there. */
END
IF ~!GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXIT
IF ~GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXTERN C0MMinJ MINERVA-TALK2-FLIRT-2

CHAIN C0MMinJ MINERVA-TALK2-FLIRT-2
@233 /* I'd like for us both to go and see it together. */
EXIT

CHAIN C0MMinJ MINERVA-TALK2-END
@234 /* Right... sure. I'll be with you in a moment. */
EXIT

// Third Talk: Entering Kuldahar

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk3","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK3
@235 /* Oh, goodness... Kuldahar is beautiful! I never would've believed you if you told me beforehand that a place like this existed in the middle of the icy tundra we've been walking through. */
DO ~IncrementGlobal("C0MMinTalk3","GLOBAL",1)~
END
+ ~Class(Player1,DRUID_ALL)
!Class(LastTalkedToBy,SHAMAN)~ + @236 /* The Tree is truly a great gift bestowed by Nature. */ + MINERVA-TALK3-1
++ @237 /* It was worth the trip. */ + MINERVA-TALK3-1
++ @238 /* I can't believe how warm it is here. */ + MINERVA-TALK3-1
++ @239 /* Large trees and greenery. Nothing exciting. */ + MINERVA-TALK3-2
++ @240 /* We're not here for sightseeing. */ EXIT

CHAIN C0MMinJ MINERVA-TALK3-1
@241 /* Yes... */
END
IF ~!GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXTERN C0MMinJ MINERVA-TALK3-3
IF ~GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXTERN C0MMinJ MINERVA-TALK3-FLIRT

CHAIN C0MMinJ MINERVA-TALK3-2
@242 /* Oh, come on. Where's your sense of wonder, <PLAYER1>? */
END
IF ~!GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXTERN C0MMinJ MINERVA-TALK3-3
IF ~GlobalGT("C0MMinFlirt","GLOBAL",0)~ EXTERN C0MMinJ MINERVA-TALK3-FLIRT

CHAIN C0MMinJ MINERVA-TALK3-FLIRT
@243 /* (Minerva sidles close to your side and gives you a pleased smile.) */
EXTERN C0MMinJ MINERVA-TALK3-3

CHAIN C0MMinJ MINERVA-TALK3-3
@244 /* It'd be the perfect place to spend a nice, romantic evening with somebody. It's pretty, it's warm, it's quiet... */
= @245 /* Though I get the feeling that if you stayed too long, you'd never want to leave. And why would you? */
END
+ ~Global("C0MMinMatch","GLOBAL",1)~ + @246 /* A romantic evening, huh? Why don't we find a place right now? */ DO ~IncrementGlobal("C0MMinFlirt","GLOBAL",1)~ + MINERVA-TALK3-FLIRT-2
++ @247 /* You're right. It's so peaceful, I'd love to stay. */ + MINERVA-TALK3-4
++ @248 /* Do you think you'd stay after your adventures are over? */ + MINERVA-TALK3-5
++ @249 /* I'd prefer a large mansion with silken sheets and an endless supply of wine. */ + MINERVA-TALK3-6
++ @250 /* That's enough. We can look around the place at our leisure later. */ EXIT

CHAIN C0MMinJ MINERVA-TALK3-FLIRT-2
@251 /* Wh—what? Ha ha ha... No, no, I didn't mean it like that! I mean, I wouldn't mind, but is now really the right time? */
EXTERN C0MMinJ MINERVA-TALK3-7

CHAIN C0MMinJ MINERVA-TALK3-4
@252 /* I'm not the type to ever stay in one place for too long, but I'm envious of the people who have a chance to live here. */
EXTERN C0MMinJ MINERVA-TALK3-7

CHAIN C0MMinJ MINERVA-TALK3-5
@253 /* Nah. I mean, maybe, if I got tired of travelling the world one day... but chances are low for that to ever happen. */
EXTERN C0MMinJ MINERVA-TALK3-7

CHAIN C0MMinJ MINERVA-TALK3-6
@254 /* I guess that'd be comfortable. I'd personally find it a little much, though. I wouldn't need that sort of thing in my life. */
EXTERN C0MMinJ MINERVA-TALK3-7

CHAIN C0MMinJ MINERVA-TALK3-7
@255 /* If I just decided to stop and settle down here... build a small house, meet some friends, make a living out of building small contraptions to make peoples' lives easier... */
= @256 /* Ha ha. It sounds great, but it's wouldn't be so different from the life I left behind in Lantan. Sooner or later, I'll wander off looking for another adventure. But it'd would be nice while it lasted. */
= @257 /* Okay, that's enough daydreaming for now. Let's see just how much Kuldahar has to show! */
EXIT

// Fourth Talk: Entering a Tomb

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk4","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK4
@258 /* Ha ha... I was wondering when we'd find ourselves in a tomb or crypt or what have you. It's not a real adventure until you find yourself fighting for your life against the restless dead. */
DO ~IncrementGlobal("C0MMinTalk4","GLOBAL",1)~
END
++ @259 /* I could do with less disrupting the dead, honestly. */ + MINERVA-TALK4-1
++ @260 /* Let's see. Goblins, orcs, undead... I expect the dragon will be coming sooner of later. */ + MINERVA-TALK4-2
++ @261 /* The only thing I care about is what valuables these dead have buried with them. */ + MINERVA-TALK4-3
++ @262 /* Crypts filled with undead are not my idea of the best place for a chat, Minerva. */ EXIT

CHAIN C0MMinJ MINERVA-TALK4-1
@263 /* Oh, agreed. A hundred percent. I think we could all do with a lot less walking dead in our lives. */
EXTERN C0MMinJ MINERVA-TALK4-4

CHAIN C0MMinJ MINERVA-TALK4-2
@264 /* Ha ha. Well, if a dragon does show up, I'll just toss a knife between its eyes and hope for the best. Or maybe aiming for the heart might work better? I might even bring it down in one hit. */
EXTERN C0MMinJ MINERVA-TALK4-4

CHAIN C0MMinJ MINERVA-TALK4-3
@265 /* Do you really want to enrage these souls even more? Though I must admit, I'm curious. Maybe a peek wouldn't hurt... they're already trying to kill us as it is anyway. */
EXTERN C0MMinJ MINERVA-TALK4-4

CHAIN C0MMinJ MINERVA-TALK4-4
@266 /* I'm a little relieved, actually. After what happened on the road here, I was expecting things to go all sorts of awry, but this is starting to feel like a classic adventure again. */
= @267 /* I'll have you know though, <PLAYER1>, I don't usually walk into crypts filled with undead. Not without trustworthy company, anyway. */
END
++ @268 /* I suppose that means you trust me? */ + MINERVA-TALK4-5
++ @269 /* Don't worry. I'll keep you safe. */ + MINERVA-TALK4-6
++ @270 /* If it comes down to one of us surviving, I'm saving myself. Just so you know. */ + MINERVA-TALK4-7
++ @271 /* That's enough talk. */ EXIT

CHAIN C0MMinJ MINERVA-TALK4-5
@272 /* I do, actually, if that makes you feel better. */
EXTERN C0MMinJ MINERVA-TALK4-8

CHAIN C0MMinJ MINERVA-TALK4-6
@273 /* Thanks! Hearing you say that makes me feel much more confident. */
EXTERN C0MMinJ MINERVA-TALK4-8

CHAIN C0MMinJ MINERVA-TALK4-7
@274 /* Eep. I'm... hoping it won't come to that. */
EXTERN C0MMinJ MINERVA-TALK4-8

CHAIN C0MMinJ MINERVA-TALK4-8
@275 /* I trust you to cover my back, and you can trust me to make sure we don't trip a wire somewhere and die to darts or spears flying out of the ground. I'm sure we'll make it through the day. */
EXIT

// Fifth Talk: Inner Sanctum

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk5","GLOBAL",2)~ THEN C0MMinJ MINERVA-TALK5
@276 /* This just keeps getting freakier and freakier, doesn't it? */
DO ~IncrementGlobal("C0MMinTalk5","GLOBAL",1)~
END
++ @277 /* Tell me about it. */ + MINERVA-TALK5-1
++ @278 /* I had this sinking feeling the Gem wouldn't be so easy to find. */ + MINERVA-TALK5-1
++ @279 /* Something tells me we haven't reached the freakiness threshold yet. */ + MINERVA-TALK5-2
++ @280 /* Not right now, Minerva. */ EXIT

CHAIN C0MMinJ MINERVA-TALK5-1
@281 /* Well, when are things ever as easy as you want them to be? After a while, you kinda just have to expect things to go wrong. */
EXTERN C0MMinJ MINERVA-TALK5-3

CHAIN C0MMinJ MINERVA-TALK5-2
@282 /* Haha. You're probably right. Then again, isn't that how most epic adventures are? */
EXTERN C0MMinJ MINERVA-TALK5-3

CHAIN C0MMinJ MINERVA-TALK5-3
@283 /* Hey, don't worry though! It's always when things go awry like this that the adventure really starts to get exciting. That I know from experience. */
END
+ ~PartyHasItem("POISON")~ + @284 /* You're right. By the way, do you have any idea what's in this vial? */ + MINERVA-TALK-5-4
+ ~PartyHasItem("POISON")~ + @285 /* Putting that aside for now... care to share your 'experience' regarding this mystery liquid we found? */ + MINERVA-TALK-5-4
+ ~!PartyHasItem("POISON")~ + @286 /* I sure hope you're right. */ EXIT
+ ~!PartyHasItem("POISON")~ + @287 /* We'll need more of that optimism where we're headed. */ EXIT

CHAIN C0MMinJ MINERVA-TALK-5-4
@288 /* Mmm. Don't take my word for it, but I think it's some sort of snake venom. I'm not sure what it could mean, although come to think of it, it's kind of strange... snake venom isn't the sort of thing most people carry around, since its potency doesn't last very long, so... hmm... */
= @289 /* Well, let's take it back to Arundel. I'm sure he'll be able to figure something out. */
EXIT

// Sixth Talk: Dragon's Eye Exterior

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk6","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK6
@290 /* We've been travelling together for a while now, <PLAYER1>, and I just realized... we don't really know all that much about each other yet, do we? */
DO ~IncrementGlobal("C0MMinTalk6","GLOBAL",1)~
END
++ @291 /* No, but I'd like it if we did. */ + MINERVA-TALK6-1
++ @292 /* Well... why don't you tell me something about yourself right now? */ + MINERVA-TALK6-2
++ @293 /* There's nothing about you I'd care to know. */ + MINERVA-TALK6-X
++ @294 /* I'd like to know more about you, but this isn't really the right place to talk. */ + MINERVA-TALK6-0

CHAIN C0MMinJ MINERVA-TALK6-1
@295 /* Ooh, you've said it. I'll tell you everything you should know, then! */
EXTERN C0MMinJ MINERVA-TALK6-2

CHAIN C0MMinJ MINERVA-TALK6-2
@296 /* Well, where should I start... I'm from Lantan, as you already know. Though truth is, I wasn't actually born there. I suppose you couldn't have guessed that, could you? */
= @297 /* My father's a scholar who does a lot of travelling to other nations, and my mother was a Waterdhavian seamstress. I was born in Waterdeep, in fact, but my parents brought me to Lantan at a very young age, so I barely remember the place. */
= @298 /* I started studying at the College of Artifice at the age of twenty, graduated at twenty-five, then spent the next thirty years or so working for various guilds around the nation. Boring stuff, really. I didn't dedicate myself to adventuring until... oh, it must be ten years by now. I boarded a ship to the Dalelands and basically never looked back. */
END
++ @299 /* And how old are you now, exactly? */ + MINERVA-TALK6-3
++ @300 /* You must've been away from your home for a long time, then. */ + MINERVA-TALK6-4
++ @301 /* That's enough talk for now. We can trade stories with each other later. */ + MINERVA-TALK6-0
++ @302 /* I didn't ask you for your life story. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-3
@303 /* Eighty-five. Don't really look it though, do I? I think I've been taking pretty good care of myself. */
END
+ ~!Race(Player1,GNOME)~ + @304 /* You don't look that old, even for a gnome. */ + MINERVA-TALK6-3a
+ ~Race(Player1,GNOME)~ + @305 /* You don't look that old, even for one of our kind. */ + MINERVA-TALK6-3a
++ @306 /* Really. You certainly don't act much like your age. */ + MINERVA-TALK6-3b
++ @307 /* I didn't ask. Stop talking. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-3a
@308 /* Haha. I get my looks from my mother. She aged really well. If she were standing next to me, you might even confuse us for sisters. */
EXTERN C0MMinJ MINERVA-TALK6-3c

CHAIN C0MMinJ MINERVA-TALK6-3b
@309 /* Thanks! I try not to, so I'll take that as a compliment. */
EXTERN C0MMinJ MINERVA-TALK6-3c

CHAIN C0MMinJ MINERVA-TALK6-3c
@310 /* I think my penchant for adventuring's got a lot to do with it. I stay active, train myself, keep in shape... I have to do all that if I intend to live long enough to see the world. */
= IF ~Global("C0MMinMatch","GLOBAL",1)~ THEN @311 /* Looking good's just a nice side benefit. Haha. */
END
++ @312 /* Have you ever considered settling down? */ + MINERVA-TALK6-5
++ @300 /* You must've been away from your home for a long time, then. */ + MINERVA-TALK6-4
++ @313 /* You can tell me more about yourself later. */ + MINERVA-TALK6-0
++ @302 /* I didn't ask you for your life story. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-4
@314 /* I go home to Lantan now and again. Not so much lately, though. Might be five years by now. Or was it more than that? Mmm, not sure. */
END
++ @315 /* But don't you miss your family? */ + MINERVA-TALK6-4a
++ @316 /* Too caught up in adventuring? */ + MINERVA-TALK6-4b
++ @317 /* Whatever. Just be quiet. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-4a
@318 /* I think about my papa and mama sometimes. And my two brothers. And my little sister. But they all understand. Plus, I know they'll always be there. I can always go back and see them when I want to. */
= @319 /* Right now, though? I just want to live life to the fullest. And the best way I can see myself doing that is by being as daring as possible. */
END
++ @312 /* Have you ever considered settling down? */ + MINERVA-TALK6-5
++ @320 /* And how old are you, anyway? You certainly look young. */ + MINERVA-TALK6-3
++ @313 /* You can tell me more about yourself later. */ + MINERVA-TALK6-0
++ @302 /* I didn't ask you for your life story. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-4b
@321 /* Basically. */
EXTERN C0MMinJ MINERVA-TALK6-4a

CHAIN C0MMinJ MINERVA-TALK6-5
@322 /* I've tried. Almost managed it, too! Lasted a good few years, too. */
END
++ @323 /* You did? */ + MINERVA-TALK6-6
++ @324 /* That's surprising. */ + MINERVA-TALK6-6
++ @325 /* Maybe I'll ask you the details some other time. */ + MINERVA-TALK6-0

CHAIN C0MMinJ MINERVA-TALK6-6
@326 /* You could never tell just from looking at me, could you? But it's true! I almost managed it, too. Even got married. */
END
+ ~Global("C0MMinMatch","GLOBAL",1)~ + @327 /* Oh. I... wasn't expecting that. */ + MINERVA-TALK6-7
++ @328 /* You're married? */ + MINERVA-TALK6-7

CHAIN C0MMinJ MINERVA-TALK6-7
@329 /* Well... I *was* married. It's all in the past now. */
END
++ @330 /* I'd like to know about it. */ + MINERVA-TALK6-8

CHAIN C0MMinJ MINERVA-TALK6-8
@331 /* Sure. It's not a particularly interesting life story, though. */
= @332 /* I was around sixty at the time. I was still young, but I already felt the wanterlust at that time. My parents weren't so happy with what they saw as a lack of purpose, and got me a teaching position at the Sambaran academy so I would stop chasing adventures for my whole life. */
= @333 /* It was alright for a while. I was talented, and I was happy to inspire young Lantanese students into skilled artificers. But I was never satisfied with it. My parents thought I was just lonely, and encouraged me to find somebody to spend my life with. */
= @334 /* *sigh* So I found one. His name was Arthur Dinelstrand, an inventor from Anchoril. I met him during one of my visits to the Sambaran research institute where he was working as an alchemist, working all sorts of dangerous and exciting experiments... that explosive oil I used for my knives? The original formula was made by him. */
= @335 /* He was kind, hardworking, intelligent—and he adored me. I think I liked him as well... enough to let him court me, at least. I thought he'd be a good person to spend my life with, even if I wasn't so excited over the idea... so I agreed immediately when he asked to marry me. We were married for over twenty years, and even had a child, a boy we named Kairos. */
= @336 /* It was a hard thing to admit that liking Arthur didn't mean I loved him. And even though I cared for Kairos, and I wasn't unhappy with my life, I still wanted nothing more than to board a ship and go back to the world beyond Lantan. */
DO ~SetGlobal("C0MMinKnowsFamily","GLOBAL",1)~
= @337 /* You can probably guess how it ended. Arthur and I couldn't compromise on the lives we wanted to live. His heart belonged to Lantan, and mine was... out there. We accepted that, ended our marriage, and both went back to the lives where we belonged. */
END
++ @338 /* It was irresponsible of you to do that. */ + MINERVA-TALK6-9
++ @339 /* I can't imagine your parents were all too happy. */ + MINERVA-TALK6-10
++ @340 /* How are your ex-husband and son now? */ + MINERVA-TALK6-11
++ @341 /* I've heard enough. We should move on. */ + MINERVA-TALK6-0

CHAIN C0MMinJ MINERVA-TALK6-9
@342 /* Maybe. I've definitely felt that way more than once. But I think the more irresponsible thing to do would have been to keep forcing that life. Maybe the most irresponsible action was trying to fit into it at all. */
EXTERN C0MMinJ MINERVA-TALK6-12

CHAIN C0MMinJ MINERVA-TALK6-10
@343 /* Yep, it was hard for them to accept it at first. I was their favorite daughter, the prodigy. And I wanted to travel instead of using my talent for Lantan. But they're good people. They didn't blame me in the end. */
EXTERN C0MMinJ MINERVA-TALK6-12

CHAIN C0MMinJ MINERVA-TALK6-11
@344 /* I'm not sure. I haven't read a letter from them since I came to the North. I'm sure Arthur's still hard at work at the institute, if he's not already a Grand Artificer by now... and Kairos is probably studying at the academy... given how respected Arthur and I were, I'm sure they reserved a spot for him since his birth. */
EXTERN C0MMinJ MINERVA-TALK6-12

CHAIN C0MMinJ MINERVA-TALK6-12
@345 /* That's the life I used to have. Not as exciting as crypt crawling and artifact hunting, is it? */
END
++ @346 /* I'm glad I know more about you now, at least. */ + MINERVA-TALK6-13
++ @347 /* Others would give anything for the life you had. */ + MINERVA-TALK6-14
++ @348 /* I understand. Some of us aren't meant to settle down. */ + MINERVA-TALK6-15
++ @349 /* That was barely worth listening to. */ + MINERVA-TALK6-X

CHAIN C0MMinJ MINERVA-TALK6-13
@350 /* Oh, I'm glad that at least I didn't bore you. */
END
IF ~Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-ROM
IF ~!Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-16

CHAIN C0MMinJ MINERVA-TALK6-14
@351 /* You're probably right. I do feel guilty about being so quick to give up a life that some people can't even have. It's why I don't like thinking about it. */
END
IF ~Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-ROM
IF ~!Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-16

CHAIN C0MMinJ MINERVA-TALK6-15
@352 /* I wouldn't mind settling down one day... but for now, I still have so much more to see, and so much more to learn. */
END
IF ~Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-ROM
IF ~!Global("C0MMinMatch","GLOBAL",1)~ THEN EXTERN C0MMinJ MINERVA-TALK6-16

CHAIN C0MMinJ MINERVA-TALK6-16
@353 /* Anyways, I think we've had long enough of a break now. Shouldn't we be going in that cave, to find the treasure we've been looking for? */
EXIT

CHAIN C0MMinJ MINERVA-TALK6-ROM
@354 /* But... does it bother you, <PLAYER1>? That I've not only been married, had a child, but also willingly left it all behind? */
END
++ @355 /* Why would you ask that? */ + MINERVA-TALK6-ROM-1
++ @356 /* It doesn't. Your past is what it is, and I'm more interested in the current you. */ + MINERVA-TALK6-ROM-2
+ ~GlobalGT("C0MMinFlirt","GLOBAL",0)~ + @357 /* If I had known, I wouldn't have done all that flirting. */ + MINERVA-TALK6-ROM-3
++ @358 /* I'm glad you told me, but I won't feel comfortable being more than friends with you now that I know. */ + MINERVA-TALK6-ROM-3

CHAIN C0MMinJ MINERVA-TALK6-ROM-1
@359 /* Just in case... I wouldn't want you to be led on, only to find that our lives aren't compatible, or I might leave you one day for myself... */
== C0MMINJ IF ~GlobalGT("C0MMinFlirt","GLOBAL",0)~ THEN @360 /* I know we've been teasing each other throughout our adventure so far, and I've liked it... but that's something I'm used to. I'm not going to demand anything more. I like you, <PLAYER1>, and I don't want to end up hurting you. */
== C0MMINJ @361 /* But... if you're okay with that, or if we're more alike than I think... then maybe... I could think about starting anew. Maybe... */
END
++ @362 /* I would like that, Minerva. */ + MINERVA-TALK6-ROM-2
++ @363 /* You have a point. I'm not sure we're fit for each other. */ + MINERVA-TALK6-ROM-3

CHAIN C0MMinJ MINERVA-TALK6-ROM-2
@364 /* Haha... now you've really surprised me, <PLAYER1>. I thought you'd give up on me for sure, but I guess there's always the chance for a pleasant surprise... */
== C0MMINJ IF ~OR(3)
Race(Player1,HALFLING)
Race(Player1,GNOME)
Race(Player1,DWARF)~ THEN @365 /* (Without warning, she leans forward and gives you a teasing peck on the cheek.) */
== C0MMINJ IF ~!Race(Player1,HALFLING)
!Race(Player1,GNOME)
!Race(Player1,DWARF)~ THEN @366 /* (She motions you to lean down, as though she is trying to whisper something, only to give you a teasing peck on the cheek.) */
== C0MMINJ @367 /* ...Like that. Exactly like that. Haha! */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",1)~ EXTERN C0MMinJ MINERVA-TALK6-16

CHAIN C0MMinJ MINERVA-TALK6-ROM-3
@368 /* Yep. I understand, <PLAYER1>. No hard feelings. */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)~ EXTERN C0MMinJ MINERVA-TALK6-16

CHAIN C0MMinJ MINERVA-TALK6-X
@369 /* Ouch. Right to the point, huh? Well, I don't need to be a genius to know where my voice isn't wanted. */
END
IF ~Global("C0MMinRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3) SetGlobal("C0MMinShutUp","GLOBAL",1)~ EXIT
IF ~!Global("C0MMinRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0MMinShutUp","GLOBAL",1)~ EXIT

CHAIN C0MMinJ MINERVA-TALK6-0
@370 /* Right. I get your point. Maybe later then? */
EXIT

// Seventh Talk: Dragon's Eye - Level 3

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk7","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK7
@371 /* Lizard men after lizard men and undead after undead... at this rate, I'm going to run out of knives before we run out of enemies to fight. */
DO ~IncrementGlobal("C0MMinTalk7","GLOBAL",1)~
END
++ @372 /* You're right. This is getting tiresome. */ + MINERVA-TALK7-1
++ @373 /* If you run out, just leave the rest to me. */ + MINERVA-TALK7-2
++ @374 /* Ever considered fighting up close once in a while? */ + MINERVA-TALK7-3
++ @375 /* Not right now, Minerva. Just keep an eye out for the next ambush. */ + MINERVA-TALK7-0

CHAIN C0MMinJ MINERVA-TALK7-0
@376 /* True, true. I guess I should save a few blades, just in case something truly dangerous shows up, shouldn't I? */
EXIT

CHAIN C0MMinJ MINERVA-TALK7-1
@377 /* I'd resort to blowing things up, but that... didn't work so well the last time I tried it. */
EXTERN C0MMinJ MINERVA-TALK7-4

CHAIN C0MMinJ MINERVA-TALK7-2
@378 /* Oh, don't worry. When I run out I usually just take out my encyclopedia and smack the monsters on the kneecaps with it. About the only thing I use it for nowadays. */
EXTERN C0MMinJ MINERVA-TALK7-4

CHAIN C0MMinJ MINERVA-TALK7-3
@379 /* Sure, I enjoy a good scrap once in a while. Stabbing kneecaps gets old real fast though. */
EXTERN C0MMinJ MINERVA-TALK7-4

CHAIN C0MMinJ MINERVA-TALK7-4
@380 /* Anyways, what do you think's waiting for us at the end of the tunnel? A treasure trove guarded by dragons? An evil lich guarding magical secrets? Maybe... demons? */
END
++ @381 /* I hope it's a dragon. That would make this adventure for me. */ + MINERVA-TALK7-5
++ @382 /* Treasure sounds good. Rather not have to fight for it though. */ + MINERVA-TALK7-6
++ @383 /* Probably a lich. That'd explain all the skeletons. */ + MINERVA-TALK7-7
++ @384 /* Knowing our luck, it's probably less likely to be 'demons' and more an 'infernal invasion'. */ + MINERVA-TALK7-8
++ @385 /* Dragons, liches, demons... let them come. The more the merrier. */ + MINERVA-TALK7-9
++ @386 /* I want to find a bathhouse. That's not very likely, though. */ + MINERVA-TALK7-10
++ @387 /* It's a waste of time to speculate. We'll find out soon enough. */ + MINERVA-TALK7-0

CHAIN C0MMinJ MINERVA-TALK7-5
@388 /* If it is a dragon, do you think it'd be the type to talk before it breathes fire at us? Maybe it'll enjoy riddles? */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-6
@389 /* Treasure's nice. Never could carry it all with me with my short legs, though. I've been working on a design to carry things for me though. Maybe with spider legs... hmm. */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-7
@390 /* Yeesh. Liches always give me the creeps. All bones and curses... although there was this one I met in an Illefarn crypt who didn't want to suck my soul out of my body for a change. Had some interesting stories to tell too. */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-8
@391 /* That'd be a new one for me. I'm not sure I've prepared enough knives for a demon army. Maybe some explosive weapons wouldn't be such a bad idea after all. */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-9
@392 /* Imagine the stories they'd tell one day. "<PLAYER1> and Minerva, destroyers of the Legions of... Something." I wonder what they'd call a legion of lizardmen, undead and other beasties? */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-10
@393 /* That *would* be nice... a shame to clean off all this dirt, though. I think it adds authenticity to the journey. *sniffs* Though it does smell. */
EXTERN C0MMinJ MINERVA-TALK7-11

CHAIN C0MMinJ MINERVA-TALK7-11
@394 /* Well, in any case, I'll be with you no matter what's at the end of this tunnel. You can count on that. */
= IF ~Global("C0MMinRomanceActive","GLOBAL",1)~ THEN @395 /* I wouldn't want you of all people to die, you know? */
EXIT

// Eighth Talk: After killing Yxunomei

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk8","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK8
@396 /* So this is the Heartstone Gem! I've been wondering what it looked like... it's pretty. And there's a warmth to it that... it's hard to explain. It's nicer than sitting by a fireplace while it's snowing outdoors. */
DO ~IncrementGlobal("C0MMinTalk8","GLOBAL",1)~
END
++ @397 /* You aren't even going to comment on the marilith we just defeated? */ + MINERVA-TALK8-1
++ @398 /* The name is appropriate. It beats just like a heart does. */ + MINERVA-TALK8-2
++ @399 /* It's a pretty gem. I don't see what's so special about it. */ + MINERVA-TALK8-3
++ @400 /* Leave whatever you have to say for later. I'm exhausted after that fight. */ + MINERVA-TALK8-0

CHAIN C0MMinJ MINERVA-TALK8-0
@401 /* Okay, fine. Dibs on holding onto the Heartstone Gem until we bring it to Arundel, though. It's surprisingly warm and cuddly for a magical stone. */
EXIT

CHAIN C0MMinJ MINERVA-TALK8-1
@402 /* What? Oh, right. That wasn't so bad. The eerie stuff she said spooked me out, but I'm sure it'll make more sense to us when we learn more in the future. The Heartstone, though... it's like it's alive, just like a heart. */
EXTERN C0MMinJ MINERVA-TALK8-4

CHAIN C0MMinJ MINERVA-TALK8-2
@403 /* Yep, like a heart. No wonder it's a druidic artifact. It's almost like it's alive... or maybe it is. */
EXTERN C0MMinJ MINERVA-TALK8-4

CHAIN C0MMinJ MINERVA-TALK8-3
@404 /* It's definitely more than just a pretty gem. It's like... it's alive. Just like a heart. */
EXTERN C0MMinJ MINERVA-TALK8-4

CHAIN C0MMinJ MINERVA-TALK8-4
@405 /* No, not a heart... more like, an eye... an eye that can see anything, everything... in every direction, all at once. */
END
++ @406 /* How can you tell that much just from holding it? */ + MINERVA-TALK8-5
++ @407 /* That's disturbing. Now I feel like it's watching me, too. */ + MINERVA-TALK8-6
++ @408 /* Enough. Put it somewhere safe. It's not to be played with. */ + MINERVA-TALK8-0

CHAIN C0MMinJ MINERVA-TALK8-5
@409 /* Call it an artificer's instinct. Like when I sniff out dangers and secrets wherever I venture to. It becomes as natural as breathing. */
EXTERN C0MMinJ MINERVA-TALK8-7

CHAIN C0MMinJ MINERVA-TALK8-6
@410 /* Oh, I'm sure it doesn't mean any harm, even if it was watching. Isn't that right, Heartstone Gem? Mmm, maybe I need to think of a friendlier name to call it... */
EXTERN C0MMinJ MINERVA-TALK8-7

CHAIN C0MMinJ MINERVA-TALK8-7
@411 /* Hmm, it's too bad I can't use its magic, though. There's so much I'd like to know! Like where I should go for my next adventure, or where I can find a platinum dragon, or... */
= @412 /* I could even take a look at my home, if I wanted to. Wouldn't that be nice? */
END
++ @413 /* Miss home after all, do you? */ + MINERVA-TALK8-8
++ @414 /* Wouldn't that ruin the mystery of adventuring? */ + MINERVA-TALK8-9
++ @415 /* I don't care. Just don't drop the thing. */ + MINERVA-TALK8-0

CHAIN C0MMinJ MINERVA-TALK8-8
@416 /* Sure. I wish I could go back, but I'd feel like I'm not making the best use of my time. If only I could be in two places at once! */
EXTERN C0MMinJ MINERVA-TALK8-10

CHAIN C0MMinJ MINERVA-TALK8-9
@417 /* Hmm... true. Maybe it's for the best I can't use the Gem, then. I wouldn't be able to stop myself! */
EXTERN C0MMinJ MINERVA-TALK8-10

CHAIN C0MMinJ MINERVA-TALK8-10
@418 /* Well, let's take it back to Arundel so he can work its magic. I'm excited to see exactly how it works! */
EXIT

// Ninth Talk: Leaving Dragon's Eye

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk9","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK9
@419 /* Phew... finally out of those tunnels. I feel like I haven't seen the sky for days, even though it hasn't nearly been that long... I think. */
DO ~IncrementGlobal("C0MMinTalk9","GLOBAL",1)~
END
++ @420 /* Maybe it has been that long. It was quite a lengthy venture, after all. */ + MINERVA-TALK9-1
++ @421 /* I've never been more glad to see the sky in my life. */ + MINERVA-TALK9-2
++ @422 /* We're alive, and that's all that counts. */ + MINERVA-TALK9-3
++ @423 /* Less talk, more walk. We're not done until we've brought the Gem back to Kuldahar. */ + MINERVA-TALK9-0

CHAIN C0MMinJ MINERVA-TALK9-0
@424 /* *sigh* You know what? I'm not even going to argue with you this time. I want to go back, too. There'd better be some hot tea ready for us at the inn once we get back! */
EXIT

CHAIN C0MMinJ MINERVA-TALK9-1
@425 /* Hmm... hey, does my skin look any lighter? I think it has been, with all that time spent underground. */
EXTERN C0MMinJ MINERVA-TALK9-4

CHAIN C0MMinJ MINERVA-TALK9-2
@426 /* Right! Same here. Oh, thank you, beautiful sky, for not forsaking us after all this time! *breathes* Ahh... fresh air's never tasted so good. */
EXTERN C0MMinJ MINERVA-TALK9-4

CHAIN C0MMinJ MINERVA-TALK9-3
@427 /* Yep! And with all of our fingers and toes still attached to boot! */
EXTERN C0MMinJ MINERVA-TALK9-4

CHAIN C0MMinJ MINERVA-TALK9-4
@428 /* Anyways, you think there'll be welcoming celebration waiting for us when we make it back to Kuldahar? Or maybe some other kind of surprise? */
END
++ @429 /* Careful, you'll jinx it. Next thing you know there'll be monsters waiting for us. */ + MINERVA-TALK9-5
++ @430 /* I hope there's cake. There'd better be cake. */ + MINERVA-TALK9-6
++ @431 /* Probably not. They're probably taking bets on our odds of survival. */ + MINERVA-TALK9-7
++ @432 /* No celebrating for me, thanks. I'd rather just fall into bed for a while, at least until our next quest. */ + MINERVA-TALK9-8

CHAIN C0MMinJ MINERVA-TALK9-5
@433 /* Haha, that can't be true. We just killed all the monsters, remember? */
EXTERN C0MMinJ MINERVA-TALK9-9

CHAIN C0MMinJ MINERVA-TALK9-6
@434 /* Ooh, cake. That's a good idea. We should get cake! */
EXTERN C0MMinJ MINERVA-TALK9-9

CHAIN C0MMinJ MINERVA-TALK9-7
@435 /* Haha. Who'd ever want to bet against us? */
EXTERN C0MMinJ MINERVA-TALK9-9

CHAIN C0MMinJ MINERVA-TALK9-8
@436 /* Oh... now that you mention it, that would be nice. *sniff* And a bath, too. I'm covered in all sorts of grimy muck. Eww. */
EXTERN C0MMinJ MINERVA-TALK9-9

CHAIN C0MMinJ MINERVA-TALK9-9
@437 /* Well, guess we'll see for ourselves. Race you back to Kuldahar, <PLAYER1>! */
= @438 /* ...On second thought, we're a preeeetty long distance away for running the whole route, aren't we? I guess we'll just have to settle for a leisurely walk down the scenic path instead. Come on! */
EXIT

// Tenth Talk: Severed Hand - 2nd Level

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk10","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK10
@439 /* What a beautiful place... even in ruin. It must have been breathtaking when during its time. */
DO ~IncrementGlobal("C0MMinTalk10","GLOBAL",1)~
END
+ ~Race(Player1,ELF)~ + @440 /* I can't believe this is what's left of my people's lands. */ + MINERVA-TALK10-ELF
+ ~!Race(Player1,ELF)~ + @441 /* It's tragic to see it in such disarray. */ + MINERVA-TALK10-1
++ @442 /* What happened here? Everything's in such a state of unrest. */ + MINERVA-TALK10-2
++ @443 /* Some glorious elven fortress this turned out to be! How pathetic. */ + MINERVA-TALK10-3
++ @444 /* Hopefully Larrel's still here. */ + MINERVA-TALK10-4
++ @445 /* There's no time for musing. We need to find Larrel. */ + MINERVA-TALK10-0

CHAIN C0MMinJ MINERVA-TALK10-ELF
@446 /* I'm sorry, <PLAYER1>. This must be especially hard on you. */
EXTERN C0MMinJ MINERVA-TALK10-1

CHAIN C0MMinJ MINERVA-TALK10-0
@447 /* Right. Hopefully he'll explain what happened here... assuming he's still around... */
EXIT

CHAIN C0MMinJ MINERVA-TALK10-1
@448 /* It's one thing for a place and its people to have died out, but this... something far worse happened here. */
EXTERN C0MMinJ MINERVA-TALK10-5

CHAIN C0MMinJ MINERVA-TALK10-2
@449 /* I know. It's strange... it's not that this place was abandoned. It's like... something happened to all the people here... all at once, just... suddenly. */
EXTERN C0MMinJ MINERVA-TALK10-5

CHAIN C0MMinJ MINERVA-TALK10-3
@450 /* Don't be so awful, <PLAYER1>. Whatever caused this place to become the way it is must've been... worse than anything I can imagine. */
EXTERN C0MMinJ MINERVA-TALK10-5

CHAIN C0MMinJ MINERVA-TALK10-4
@451 /* I'm sure he is. Arundel said so, didn't he? I'm sure he was confident about his last... his last bit of guidance. */
EXTERN C0MMinJ MINERVA-TALK10-5

CHAIN C0MMinJ MINERVA-TALK10-5
@452 /* Can you hear that, <PLAYER1>? It's almost like the air itself is... crying. And screaming... there's hundreds of years of suffering in that voice. */
END
+ ~Race(Player1,ELF)~ + @453 /* I hear the voice of elves... some are speaking as though all is well, others... confused, lost, trapped. This place is cursed. */ + MINERVA-TALK10-ELF2
+ ~!Race(Player1,ELF)~ + @454 /* I do hear it. It's like... the voice of spirits, trapped, as though by a curse. */ + MINERVA-TALK10-6
++ @455 /* I hear nothing. Are you sure you're not imagining things? */ + MINERVA-TALK10-7
++ @456 /* That's enough. We can hear the truth from Larrel when we find him. */ + MINERVA-TALK10-0

CHAIN C0MMinJ MINERVA-TALK10-ELF2
@457 /* You're right... I didn't even notice all of that. */
EXTERN C0MMinJ MINERVA-TALK10-8

CHAIN C0MMinJ MINERVA-TALK10-6
@458 /* That's what I thought as well. */
EXTERN C0MMinJ MINERVA-TALK10-8

CHAIN C0MMinJ MINERVA-TALK10-7
@459 /* No, definitely not. I'm sure I can hear it. */
EXTERN C0MMinJ MINERVA-TALK10-8

CHAIN C0MMinJ MINERVA-TALK10-8
@460 /* I had a feeling when we came in, but I wasn't so sure of it until now... but it's like... the Hand itself is 'alive'. Not... like us, but in the same way as the Great Oak—powerful, aware, almost like a god. */
= @461 /* The fact that the Severed Hand is still in such good condition... relatively speaking, anyway, for how ancient it is, makes it almost seem as if... it's not affected by time. */
END
++ @462 /* You think the Hand is not only alive, but immortal? */ + MINERVA-TALK10-9
++ @463 /* If that's true, how did it come to be like this? */ + MINERVA-TALK10-10
++ @464 /* What nonsense. */ + MINERVA-TALK10-11
++ @465 /* Enough speculation. We're here to see Larrel. */ + MINERVA-TALK10-0

CHAIN C0MMinJ MINERVA-TALK10-9
@466 /* It's just a hunch. But if I'm right... what happened to 'sever' it, so to speak? What could be so powerful? */
EXTERN C0MMinJ MINERVA-TALK10-12

CHAIN C0MMinJ MINERVA-TALK10-10
@467 /* That's what scares me. */
EXTERN C0MMinJ MINERVA-TALK10-12

CHAIN C0MMinJ MINERVA-TALK10-11
@468 /* *shrug* Maybe it is nonsense... but I'm worried. A place with so much power doesn't just... slowly rot away like this. */
EXTERN C0MMinJ MINERVA-TALK10-12

CHAIN C0MMinJ MINERVA-TALK10-12
@469 /* I have a feeling that our quest to see Larrel isn't going to be easy, <PLAYER1>. In fact, it'll be the exact opposite of easy. */
EXIT

// Eleventh Talk: After Larrel

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk11","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK11
@470 /* I've come across a lot of people in my life, but never someone like Larrel. To be honest, I'm not sure whether to pity or envy him. */
DO ~IncrementGlobal("C0MMinTalk11","GLOBAL",1)~
= @471 /* Can you imagine it, <PLAYER1>? Living as a good person for however long, and one mistake. One mistake... and your punishment is to exist like that for eternity. Not only him, either, but the people he's responsible for. */
END
++ @472 /* It's pitiable. For sure. But why would you envy him? */ + MINERVA-TALK11-1
++ @473 /* Bold of you to assume he was a good person. I saw nothing more than foolish pride. */ + MINERVA-TALK11-2
++ @474 /* He deserved every bit of his fate. */ + MINERVA-TALK11-3
++ @475 /* I don't care to speak of Larrel. We're done with him. */ + MINERVA-TALK11-0

CHAIN C0MMinJ MINERVA-TALK11-0
@476 /* Oh... okay. Never mind, then. */
EXIT

CHAIN C0MMinJ MINERVA-TALK11-1
@477 /* I don't know. Maybe it's just how strongly I felt his words... the ones he spoke while in his maddened state. "Free my people. Astrolabe, whirls, twirls." */
EXTERN C0MMinJ MINERVA-TALK11-4

CHAIN C0MMinJ MINERVA-TALK11-2
@478 /* Maybe. But I believe he was a good person. One that made a mistake, because he was desperate, but still... */
EXTERN C0MMinJ MINERVA-TALK11-4

CHAIN C0MMinJ MINERVA-TALK11-3
@479 /* Maybe he did. I think even he would agree with you, honestly. */
EXTERN C0MMinJ MINERVA-TALK11-4

CHAIN C0MMinJ MINERVA-TALK11-4
@480 /* Even as we found him, he could barely think, but he still held onto what mattered the most—his people, his astrolabe, his purpose. He never went truly mad, and held on—long enough for us to help him. */
= @481 /* I wonder why Labelas punished him the way he did. To watch over his failure, not to fix it. It doesn't seem right... unless it was because he couldn't. */
= @482 /* I don't know whether or not we were meant to find him from the beginning, but I'm glad we had a chance to help him, and his people. */
END
+ ~Race(Player1,ELF)~ + @483 /* His people were my people. It was only right. */ + MINERVA-TALK11-5
+ ~!Race(Player1,ELF)~ + @484 /* It was the right thing to do. */ + MINERVA-TALK11-5
++ @485 /* We sought to perform one heroic task and ended up solving another. Just another day for an adventurer. */ + MINERVA-TALK11-5
++ @486 /* If it weren't so we could use the Heartstone Gem, I wouldn't have bothered. */ + MINERVA-TALK11-6
++ @487 /* I don't want to talk about Larrel or the elves right now. */ + MINERVA-TALK11-0

CHAIN C0MMinJ MINERVA-TALK11-5
@488 /* Thank the stars above for adventurers, right? Haha. */
EXIT

CHAIN C0MMinJ MINERVA-TALK11-6
@489 /* *shrug* I didn't mind it, personally. It was a good journey. */
EXIT

// Twelfth Talk: Svirf Village

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk12","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK12
@490 /* What a sweet-looking place. Even though it's underground, it's... pretty. */
DO ~IncrementGlobal("C0MMinTalk12","GLOBAL",1)~
END
++ @491 /* Feeling at home? */ + MINERVA-TALK12-1
++ @492 /* I like it here, too. */ + MINERVA-TALK12-2
++ @493 /* I'm not a fan of the underground, I'm afraid. */ + MINERVA-TALK12-3
++ @494 /* Don't get distracted. We're not here for leisure. */ + MINERVA-TALK12-0

CHAIN C0MMinJ MINERVA-TALK12-0
@495 /* I know that. Can't I enjoy a moment anyway? */
EXIT

CHAIN C0MMinJ MINERVA-TALK12-1
@496 /* A little bit. You wouldn't see any colorful lanterns or glowing moss in my hometown, though. Mostly just cute flowers. */
EXTERN C0MMinJ MINERVA-TALK12-2

CHAIN C0MMinJ MINERVA-TALK12-2
@497 /* Mostly I'm just glad the svirfneblin can have a place like this, as safe and comfortable as they can manage to be, even somewhere as dangerous as here. */
= @498 /* I admire my underground-dwelling cousins. I wish more of them could get the chance to be free, explore the world, find friends in other lands... but as they are, living such difficult lives, they haven't resorted to cruelty or selfishness like other Underdark races. */
END
++ @499 /* They're a strong people. */ + MINERVA-TALK12-4
++ @500 /* Their lack of cruelty is a weakness. It's why they're forced to live like this. */ + MINERVA-TALK12-5
++ @501 /* Come on, Minerva. We've still got work to do. */ + MINERVA-TALK13-0

CHAIN C0MMinJ MINERVA-TALK12-3
@502 /* It is a little suffocating, isn't it? I'm too used to the blue sky. But I could see myself getting used to it! */
EXTERN C0MMinJ MINERVA-TALK12-2

CHAIN C0MMinJ MINERVA-TALK12-4
@503 /* I think my people could stand to learn a lot from the svirfneblin. It's too bad they exist so far apart from each other. */
EXTERN C0MMinJ MINERVA-TALK12-6

CHAIN C0MMinJ MINERVA-TALK12-5
@504 /* Nah, I don't think so. I think if they were as vicious and mean as the rest, they wouldn't have survived for so long. */
EXTERN C0MMinJ MINERVA-TALK12-6

CHAIN C0MMinJ MINERVA-TALK12-6
@505 /* I'd love to stay for longer, but I know we're busy. I'll take just long enough to commit this place to memory... okay! I'm good to go. */
EXIT

// Thirteenth Talk: Return to Easthaven

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk13","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK13
@506 /* We're back in Easthaven... well, it is Easthaven, right? It's not even close to how I remember it. */
DO ~IncrementGlobal("C0MMinTalk13","GLOBAL",1)~
END
++ @507 /* Poquelin... or whoever he really is. This was his work. */ + MINERVA-TALK13-1
++ @508 /* How horrible. That fiend has a lot to answer for. */ + MINERVA-TALK13-2
++ @509 /* We'll fix things. */ + MINERVA-TALK13-3
++ @510 /* Hardly a great loss. */ + MINERVA-TALK13-4
++ @511 /* We don't have time to mourn, Minerva. */ + MINERVA-TALK13-0

CHAIN C0MMinJ MINERVA-TALK13-0
@512 /* You're right. We're going to find that fake priest of Ilmater and make him pay. */
EXIT

CHAIN C0MMinJ MINERVA-TALK13-1
@513 /* He'll pay for this. */
EXTERN C0MMinJ MINERVA-TALK13-5

CHAIN C0MMinJ MINERVA-TALK13-2
@514 /* Yes. He does. And we're the ones who'll make him answer. */
EXTERN C0MMinJ MINERVA-TALK13-5

CHAIN C0MMinJ MINERVA-TALK13-3
@515 /* Can something like this ever be fixed? Even if you rebuild everything exactly the way it was before, even then... no, no. I shouldn't say that. It's the best anyone can do. */
EXTERN C0MMinJ MINERVA-TALK13-5

CHAIN C0MMinJ MINERVA-TALK13-4
@516 /* I'm going to pretend you didn't say that, <PLAYER1>. */
EXTERN C0MMinJ MINERVA-TALK13-5

CHAIN C0MMinJ MINERVA-TALK13-5
@517 /* If there's one reason I'll never leave this life behind, never for good... it's to make sure things like this never happen. And if they do happen, I'm going to be there to fix it. */
= @518 /* It's fun and exciting to adventure, sure... but when I see people get hurt, that's when I know I really am needed. Far more than being locked up in a workshop. */
END
++ @519 /* I agree. The world needs people like us. */ + MINERVA-TALK13-6
++ @520 /* This is probably the most serious you've been this whole journey. */ + MINERVA-TALK13-7
++ @521 /* That's what they call hero syndrome. */ + MINERVA-TALK13-8
++ @522 /* I just hope I still get paid once this is done. */ + MINERVA-TALK13-9
++ @523 /* That's enough. We can talk later. */ + MINERVA-TALK13-0

CHAIN C0MMinJ MINERVA-TALK13-6
@524 /* You're right, it does. Luckily, here we are to save the day. */
EXTERN C0MMinJ MINERVA-TALK13-10

CHAIN C0MMinJ MINERVA-TALK13-7
@525 /* You mean to say I haven't been acting serious this whole time? Haha. Maybe you still have a lot to learn about me. */
EXTERN C0MMinJ MINERVA-TALK13-10

CHAIN C0MMinJ MINERVA-TALK13-8
@526 /* Whatever you want to call it... it doesn't change the fact that we should do the right thing. Because we can. */
EXTERN C0MMinJ MINERVA-TALK13-10

CHAIN C0MMinJ MINERVA-TALK13-9
@527 /* Oh, someone'll be paying alright. But it'll be that priest, and it'll be with his blood. */
EXTERN C0MMinJ MINERVA-TALK13-10

CHAIN C0MMinJ MINERVA-TALK13-10
@528 /* Let's go, <PLAYER1>. There's hero work to be done. */
EXIT

// Fourteenth Talk: Before Battle

CHAIN IF WEIGHT #-1 ~Global("C0MMinTalk14","GLOBAL",1)~ THEN C0MMinJ MINERVA-TALK13
@529 /* You know, <PLAYER1>... I think I will take a break from adventuring after this is over. */
DO ~IncrementGlobal("C0MMinTalk14","GLOBAL",1)~
END
+ ~Global("C0MMinRomanceActive","GLOBAL",2)~ + @530 /* Shall we go somewhere nice together? Just the two of us, I mean. */ + MINERVA-TALK14-ROM
++ @531 /* I never would've expected you to say that. */ + MINERVA-TALK14-1
++ @532 /* What are you going to do instead? */ + MINERVA-TALK14-2
++ @533 /* Me too. I could use a long break from travelling. */ + MINERVA-TALK14-3
++ @534 /* You're very optimistic to assume we'll get out of this alive. */ + MINERVA-TALK14-4
++ @535 /* Now is hardly the time to be talking about this. */ + MINERVA-TALK14-0

CHAIN C0MMinJ MINERVA-TALK14-0
@536 /* Sure, sure. I'll tell you what I was thinking once we've won the battle. Drinks are on me. */
EXTERN C0MMinJ MINERVA-TALK14-9

CHAIN C0MMinJ MINERVA-TALK14-ROM
@537 /* Oh, definitely. I don't think you even needed to ask. There was something else I wanted to do, though. */
EXTERN C0MMinJ MINERVA-TALK14-2

CHAIN C0MMinJ MINERVA-TALK14-1
@538 /* Me neither. I'm not saying I'll retire, mind you! But I just had an idea while we were climbing up this tower. */
EXTERN C0MMinJ MINERVA-TALK14-2

CHAIN C0MMinJ MINERVA-TALK14-2
@539 /* I think I'm going to write a book about everything that's happened in our adventure. That's going to take a bit of time. How <PLAYER1> and Minerva met atop a fisherman's rooftop in the quiet town of Easthaven... */
== C0MMinJ @540 /* ...defeating a marilith and recovering the Heartstone Gem, venturing through the Severed Hand and restoring Larrel's astrolabe, delving to the ancient halls of Dorn's Deep... */
== C0MMinJ IF ~Global("HOW_COMPLETED","GLOBAL",1)~ THEN @541 /* ...riding the wind to Lonelywood and defeating an immortal white wyrm... */
== C0MMinJ IF ~Global("Master_Quest","GLOBAL",7)~ THEN @542 /* ...venturing to Castle Maluradek and conquering the trials of the spectral Luremaster... */
== C0MMinJ @543 /* ...and now, climbing the steps of a crystal tower to save the Ten Towns from a demonic invasion. That'd make for a excellent story, don't you think? */
END
+ ~Class(Player1,BARD_ALL)~ + @544 /* I'd love to co-write such an epic tale. */ + MINERVA-TALK14-BARD
++ @545 /* It certainly would. */ + MINERVA-TALK14-5
++ @546 /* I couldn't have done it without you. */ + MINERVA-TALK14-6
++ @547 /* Just leave my name out of it. */ + MINERVA-TALK14-7
++ @548 /* Whatever. */ + MINERVA-TALK14-8

CHAIN C0MMinJ MINERVA-TALK14-3
@549 /* Oh, no, I wasn't thinking that. I'm perfectly willing to go on another adventure if I had the time. It's just that... */
EXTERN C0MMinJ MINERVA-TALK14-2

CHAIN C0MMinJ MINERVA-TALK14-4
@550 /* Well, what's the point of planning under the assumption that I'm going to die? If it happens, it happens. If I live, though... */
EXTERN C0MMinJ MINERVA-TALK14-2

CHAIN C0MMinJ MINERVA-TALK14-BARD
@551 /* Of course! That'll make the writing process even more fun. And then we could go on another journey together. I was thinking of going eastwards to Kara-Tur... */
EXTERN C0MMinJ MINERVA-TALK14-5

CHAIN C0MMinJ MINERVA-TALK14-5
@552 /* I wonder what I'll name it? "The Heroes of Icewind Dale" seems so bland. "Trials of the Ten Towns"? Nah, too impersonal. Hmm... I suppose I'll need time to figure that one out too. */
EXTERN C0MMinJ MINERVA-TALK14-8

CHAIN C0MMinJ MINERVA-TALK14-6
@553 /* Sure you could have. You're the hero of the story, after all! I mean, it wouldn't have been as easy or as fun, but... */
EXTERN C0MMinJ MINERVA-TALK14-5

CHAIN C0MMinJ MINERVA-TALK14-7
@554 /* If you want, but I highly recommend coming up with an alias for me soon. Or else, I'll make up my own, and you won't like it! Haha. */
EXTERN C0MMinJ MINERVA-TALK14-5

CHAIN C0MMinJ MINERVA-TALK14-8
@555 /* Well, why am I worrying about that right now anyway? This story isn't over yet! Shall we see how it ends, <PLAYER1>? */
END
+ ~Global("C0MMinRomanceActive","GLOBAL",2)~ + @556 /* Yes. Let's end this now... together. */ + MINERVA-TALK14-ROM2
+ ~!Global("C0MMinRomanceActive","GLOBAL",2)~ + @557 /* Yes. Let's end this now. */ + MINERVA-TALK14-9
++ @558 /* I was about to get to that. */ + MINERVA-TALK14-9
++ @559 /* Enough talk. */ + MINERVA-TALK14-9

CHAIN C0MMinJ MINERVA-TALK14-ROM2
@560 /* Yep! You and me, <PLAYER1>. We could take on anything together! */
EXTERN C0MMinJ MINERVA-TALK14-9

CHAIN C0MMinJ MINERVA-TALK14-9
@561 /* Onward, to victory! */
EXIT

// Romance Talk 1

CHAIN IF WEIGHT #-1 ~Global("C0MMinRomanceTalk1","GLOBAL",1)~ THEN C0MMinJ MINERVA-ROM-TALK1
@562 /* *yaaaawn* My goodness, I don't think I've ever been so tired... it's been a rough few days, hasn't it? */
DO ~IncrementGlobal("C0MMinRomanceTalk1","GLOBAL",1)~
= @563 /* Hey, <PLAYER1>, mind if I set up my bedroll next to you tonight? It'd be nice to have someone to talk to before I doze off. */
END
++ @564 /* Sure, go ahead. */ + MINERVA-ROM-TALK1-1
++ @565 /* Just don't keep me awake for too long. */ + MINERVA-ROM-TALK1-2
++ @566 /* I'm not interested in talking, Minerva. Just go to bed. */ + MINERVA-ROM-TALK1-X

CHAIN C0MMinJ MINERVA-ROM-TALK1-X
@567 /* Right, right... sleep well and all that... sorry I bothered you... */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(2)
EndCutSceneMode()
RestParty()
FadeFromColor([20.0],0)~ EXIT

CHAIN C0MMinJ MINERVA-ROM-TALK1-1
@568 /* *sigh* Aahh, this is nice... */
= @569 /* I think my limbs have already gone to sleep, <PLAYER1>. Can't move a muscle anymore. What about you? */
END
++ @570 /* Same here. I'm exhausted. */ + MINERVA-ROM-TALK1-3
++ @571 /* I'm not feeling that tired yet. */ + MINERVA-ROM-TALK1-4
++ @572 /* That's enough. Stop talking and let me sleep. */ + MINERVA-ROM-TALK1-X

CHAIN C0MMinJ MINERVA-ROM-TALK1-2
@573 /* Of course, don't worry! You ever get tired of listening, just turn over and go to sleep and I'll stop talking. Probably. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-1

CHAIN C0MMinJ MINERVA-ROM-TALK1-3
@574 /* When I'm this tired, even a woolen blanket feels like silk. Reminds me of the days when I was still studying at the Sambaran academy... I'd pull all-nighters and fall asleep at my table. Good times... */
= @575 /* Of course, that's not really all that much compared to the sort of things we're dealing with now. How are you feeling, <PLAYER1>? It must be especially rough on you, being the leader and all. */
END
++ @576 /* Not so much when I have you around. */ + MINERVA-ROM-TALK1-5
++ @577 /* It is hard. But I think I'll manage. */ + MINERVA-ROM-TALK1-6
++ @578 /* It's rough when an annoying gnome keeps me awake with chatter. I'm going to sleep. */ + MINERVA-ROM-TALK1-X

CHAIN C0MMinJ MINERVA-ROM-TALK1-4
@579 /* Really? Wow, you must be made of steel or something. Can I get your workout routine sometime? Haha. Just kidding. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-3

CHAIN C0MMinJ MINERVA-ROM-TALK1-5
@580 /* Aww, that's nice. But I'm just doing my part, you know. I feel kind of bad sometimes, leaving most of the important decisions to you. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-6

CHAIN C0MMinJ MINERVA-ROM-TALK1-6
@581 /* You know I'm here to help if you need anything, right? If there's something I can do, don't ever be shy to ask! I wouldn't say no to you. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-7

CHAIN C0MMinJ MINERVA-ROM-TALK1-7
@582 /* Still... adventuring can be hard, but peaceful moments like these never change. It's nice that we can still have them from time to time. */
= @583 /* The sky's a lot clearer here in the North compared to Lantan, too. All those stars and the moon above... it's pretty. */
= @584 /* Ooh, is that a shooting star? Well, a comet, but calling it 'shooting star' is better for luck. That's a good sign! */
END
++ @585 /* I hope that means we'll be successful. */ + MINERVA-ROM-TALK1-8
++ @586 /* Do you want to make a wish? */ + MINERVA-ROM-TALK1-9
++ @587 /* Just a stupid star. I'm tired, so leave me alone. */ + MINERVA-ROM-TALK1-X

CHAIN C0MMinJ MINERVA-ROM-TALK1-8
@588 /* Yep, I'm sure that's what it means... but we'd better make a wish to be sure! */
EXTERN C0MMinJ MINERVA-ROM-TALK1-10

CHAIN C0MMinJ MINERVA-ROM-TALK1-9
@589 /* Ooh, now that's a great idea. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-10

CHAIN C0MMinJ MINERVA-ROM-TALK1-10
@590 /* What're you wishing for, <PLAYER1>? I believe wishes are more likely to come true if you share them with people you trust! */
END
++ @591 /* I wish we can find the evil we seek and protect the Ten Towns. */ + MINERVA-ROM-TALK1-11
++ @592 /* I wish that the two of us will stay together. */ + MINERVA-ROM-TALK1-12
++ @593 /* I wish that I will live a long and happy life. */ + MINERVA-ROM-TALK1-11
++ @594 /* I wish that the people I love will remain safe. */ + MINERVA-ROM-TALK1-11
++ @595 /* I wish for gold, power and glory. Immortality wouldn't be bad, either. */ + MINERVA-ROM-TALK1-11
++ @596 /* I don't need wishes. I'll get what I want with my own hands. */ + MINERVA-ROM-TALK1-13
++ @597 /* This is stupid and childish. I'm not bothering with it. */ + MINERVA-ROM-TALK1-X

CHAIN C0MMinJ MINERVA-ROM-TALK1-11
@598 /* Nice! I'm sure something out there heard your wish, <PLAYER1>. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-14

CHAIN C0MMinJ MINERVA-ROM-TALK1-12
@599 /* Really? That's what you're wishing for? Haha... that's funny. */
END
++ @600 /* What's so funny about it? */ + MINERVA-ROM-TALK1-12-A

CHAIN C0MMinJ MINERVA-ROM-TALK1-12-A
@601 /* Well... I just never would've imagined that both of us would wish for the same thing. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-16

CHAIN C0MMinJ MINERVA-ROM-TALK1-13
@602 /* That's very practical. I'm a bit of a dreamer, though. Soooo... */
EXTERN C0MMinJ MINERVA-ROM-TALK1-14

CHAIN C0MMinJ MINERVA-ROM-TALK1-14
@603 /* Me? I'm going to make a wish for the near future. I'm certain it'll come true. */
END
++ @604 /* What did you wish for? */ + MINERVA-ROM-TALK1-15
++ @605 /* "For the near future"? What do you mean? */ + MINERVA-ROM-TALK1-15
++ @606 /* I'm sure it will. */ + MINERVA-ROM-TALK1-16

CHAIN C0MMinJ MINERVA-ROM-TALK1-15
@607 /* Well... don't laugh, okay? I just wished that the two of us will stay together, and have even more fun adventures after this one. Together. */
EXTERN C0MMinJ MINERVA-ROM-TALK1-16

CHAIN C0MMinJ MINERVA-ROM-TALK1-16
@608 /* Okay, that was nice and fuzzy, but we should get some sleep! Wishes are well and good, but we still have to do our part in getting them, right? */
= @609 /* Let's both do our best, <PLAYER1>. I'm sure the two of us together can accomplish any... thing... *yaawn* */
= @610 /* Zzz... */
END
++ @611 /* Good night, Minerva. */ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(2)
EndCutSceneMode()
RestParty()
FadeFromColor([20.0],0)~ EXIT

// Romance Talk 2

CHAIN IF WEIGHT #-1 ~Global("C0MMinRomanceTalk2","GLOBAL",1)~ THEN C0MMinJ MINERVA-ROM-TALK2
@612 /* Brrr... it's freezing here. I don't know if it's because we just got away from that nice, warm underground forge, but I think this is the chilliest it's been. */
DO ~IncrementGlobal("C0MMinRomanceTalk2","GLOBAL",1)~
= @613 /* Mind if I snuggle up against you for a bit while we're walking, <PLAYER1>? At least until I stop shivering. */
END
++ @614 /* Of course you can. */ + MINERVA-ROM-TALK2-1
++ @615 /* I'd rather have some personal space right now. */ + MINERVA-ROM-TALK2-2
++ @616 /* Leave me alone. */ + MINERVA-ROM-TALK2-X

CHAIN C0MMinJ MINERVA-ROM-TALK2-X
@617 /* Wow, I didn't think you'd be that mean... okay, I'll just take care of myself from now on. */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0MMinJ MINERVA-ROM-TALK2-1
@618 /* Thanks! Oh, now this is so much better. Your hands are nice and warm, you know that? */
EXTERN C0MMinJ MINERVA-ROM-TALK2-3

CHAIN C0MMinJ MINERVA-ROM-TALK2-2
@619 /* Aww. Well, I hope you don't mind chatting for a while, at least. That'll keep my mind off the cold. */
EXTERN C0MMinJ MINERVA-ROM-TALK2-3

CHAIN C0MMinJ MINERVA-ROM-TALK2-3
@620 /* You know? I don't think I knew what I was missing out on when I was travelling without someone like you with me. Having you around is... really, *really* nice. */
= @621 /* Not just for helping out, or watching my back... even just having someone to talk to, and be close to when it gets cold... kind of a luxury, I know. But I wouldn't like to go without it. */
END
++ @622 /* I'll be here for you whenever you need me, Mini. */ + MINERVA-ROM-TALK2-4
++ @623 /* Were you just looking for an excuse to try and cuddle up against me? */ + MINERVA-ROM-TALK2-5
++ @624 /* Ugh, you're being sentimental. We're on an adventure, not a romantic trip. */ + MINERVA-ROM-TALK2-X

CHAIN C0MMinJ MINERVA-ROM-TALK2-4
@625 /* Whenever, huh? Even after this adventure's over? Oh, that'd be great. I've been hoping we won't have to go our separate ways. I'd miss you terribly. */
EXTERN C0MMinJ MINERVA-ROM-TALK2-6

CHAIN C0MMinJ MINERVA-ROM-TALK2-5
@626 /* No...? Maybe? Are you saying I *don't* need an excuse to cuddle? You should've told me that sooner! */
EXTERN C0MMinJ MINERVA-ROM-TALK2-6

CHAIN C0MMinJ MINERVA-ROM-TALK2-6
@627 /* *sigh* This adventure wouldn't have been half as fun without you. */
EXIT

// Romance Talk 3

CHAIN IF WEIGHT #-1 ~Global("C0MMinRomanceTalk3","GLOBAL",1)~ THEN C0MMinJ MINERVA-ROM-TALK3
@628 /* Hey, <PLAYER1>? */
DO ~IncrementGlobal("C0MMinRomanceTalk3","GLOBAL",1)~
END
++ @629 /* Yes, Minerva? */ + MINERVA-ROM-TALK3-1
++ @630 /* What is it, Mini? */ + MINERVA-ROM-TALK3-1
++ @631 /* Can you wait until later? */ + MINERVA-ROM-TALK3-2
++ @632 /* I don't have time to waste on listening to you. */ + MINERVA-ROM-TALK3-X

CHAIN C0MMinJ MINERVA-ROM-TALK3-X
@633 /* Right. That's fine. That's juuust fine. */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0MMinJ MINERVA-ROM-TALK3-1
@634 /* Thanks for bringing me along. It's been a great adventure. */
END
++ @635 /* The best. */ + MINERVA-ROM-TALK3-3
++ @636 /* It wouldn't have been half as fun without you. */ + MINERVA-ROM-TALK3-4
++ @637 /* Is that all you had to say? Stop wasting my time. */ + MINERVA-ROM-TALK3-X

CHAIN C0MMinJ MINERVA-ROM-TALK3-2
@638 /* I'll be quick, I promise. */
EXTERN C0MMinJ MINERVA-ROM-TALK3-1

CHAIN C0MMinJ MINERVA-ROM-TALK3-3
@639 /* It's funny how these things are just... decided by chance. The fact we met, that is. */
= @640 /* Imagine if we hadn't, or if you hadn't agreed to let me join. What wonderful memories I would've missed! */
END
++ @641 /* I'd never have missed your beautiful singing voice. */ + MINERVA-ROM-TALK3-5
++ @642 /* That'd never have happened. You caught my eye from the moment I saw you. */ + MINERVA-ROM-TALK3-6
++ @643 /* It is quite lucky. I definitely think I'm lucky, at least. */ + MINERVA-ROM-TALK3-7
++ @644 /* That's enough. The adventure's not over yet. */ + MINERVA-ROM-TALK3-8

CHAIN C0MMinJ MINERVA-ROM-TALK3-4
@645 /* Haha. We really are made for each other, aren't we? */
EXTERN C0MMinJ MINERVA-ROM-TALK3-3

CHAIN C0MMinJ MINERVA-ROM-TALK3-5
@646 /* Haha. Maybe I should practice more, if you like it that much? */
EXTERN C0MMinJ MINERVA-ROM-TALK3-8

CHAIN C0MMinJ MINERVA-ROM-TALK3-6
@647 /* Aww. I'm glad I chose the rooftop on that day then, so that you didn't miss me! */
EXTERN C0MMinJ MINERVA-ROM-TALK3-8

CHAIN C0MMinJ MINERVA-ROM-TALK3-7
@648 /* That makes two of us! */
EXTERN C0MMinJ MINERVA-ROM-TALK3-8

CHAIN C0MMinJ MINERVA-ROM-TALK3-8
@649 /* I'm sure we'll have plenty more adventures together, but this one will always hold a special place in my heart. The one where the two of us met... */
== C0MMinJ IF ~OR(3)
Race(Player1,HALFLING)
Race(Player1,GNOME)
Race(Player1,DWARF)~ THEN @650 /* (She leans forward and kisses you gently on the lips.) */
== C0MMinJ IF ~!Race(Player1,HALFLING)
!Race(Player1,GNOME)
!Race(Player1,DWARF)~ THEN @651 /* (She gestures for you to lean down, before giving you a gentle kiss on the lips.) */
== C0MMinJ @652 /* Mmm... I should've done that sooner. But that's something else to make this journey special, right? */
DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",2)~ EXIT

// HoW Talk 1: Lonelywood

CHAIN IF WEIGHT #-1 ~Global("C0MMinHoWTalk1","GLOBAL",1)~ THEN C0MMinJ MINERVA-HOW-TALK1
@653 /* So this is Lonelywood? Wow... it's so pretty! If I had to pick a place in the North to live the rest of my days, I'd choose here without a hesitation. */
DO ~IncrementGlobal("C0MMinHoWTalk1","GLOBAL",1)~
END
++ @654 /* Agreed. It's nice and warm here. Relative to the rest of the Dales, anyway. */ + MINERVA-HOW-TALK1-1
++ @655 /* Really? I thought settling down was the last thing you'd ever do. */ + MINERVA-HOW-TALK1-2
++ @656 /* It's too bad. I was starting to get used to the frigidness of the North. */ + MINERVA-HOW-TALK1-3
++ @657 /* I'm really not interested in sightseeing, Minerva. Shut it. */ + MINERVA-HOW-TALK1-0

CHAIN C0MMinJ MINERVA-HOW-TALK1-0
@658 /* Boooo. You remember we're not going to get to stay here, right? Don't you want a moment to let this place seem into your memory? No? Hmpf, you're no fun. */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK1-1
@659 /* Exactly. There's just enough snow here to be pretty, but at the same time, I don't have to feel like my toes are freezing off. Ooh, my poor toes! They've suffered the bite of the cold for too long. */
EXTERN C0MMinJ MINERVA-HOW-TALK1-4

CHAIN C0MMinJ MINERVA-HOW-TALK1-2
@660 /* I'm just talking possibilities here, you know? When I'm old and tired, or if I finally manage to see everything in the world... this would be a nice place to live out my days. */
EXTERN C0MMinJ MINERVA-HOW-TALK1-4

CHAIN C0MMinJ MINERVA-HOW-TALK1-3
@661 /* Ooh, I didn't consider that. When we go back to where we were, it's going to feel even colder than ever, isn't it? Now I wish I could stay here... brr... */
EXTERN C0MMinJ MINERVA-HOW-TALK1-4

CHAIN C0MMinJ MINERVA-HOW-TALK1-4
@662 /* Well, anyways, why're we just standing around? I want to check out the sights! Oh, and the food. We've got to try the local food before we leave! Mmm... */
EXIT

// HoW Talk 2: Burial Isle

CHAIN IF WEIGHT #-1 ~Global("C0MMinHoWTalk2","GLOBAL",1)~ THEN C0MMinJ MINERVA-HOW-TALK2
@663 /* Look at this. You bury your dead here, and sooner or later they get right back up again. You'd think people would learn to take better care of the ancestors they respect so much. */
DO ~IncrementGlobal("C0MMinHoWTalk2","GLOBAL",1)~
END
++ @664 /* How do the Lantanese handle their dead? If you don't mind me asking. */ + MINERVA-HOW-TALK2-1
++ @665 /* Now is DEFINITELY not the time for small talk, Minerva. Wait until we're off this island. */ + MINERVA-HOW-TALK2-0

CHAIN C0MMinJ MINERVA-HOW-TALK2-0
@666 /* What? Oh, sorry, was I being too loud? I was just talking to myself. */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK2-1
@667 /* We don't really 'handle' our dead one way back home. Mostly the clans treat their dead the way they want to. The Lantanese don't care much for what happens to our bodies when we die. It's all flesh and bones, after all. */
= @668 /* The only thing that matters to us is the knowledge we leave behind. That's our legacy. It's the dream of every Lantanese researcher to have a theorem or formula named after them and quoted for centuries after they're gone. */
END
++ @669 /* Is that what you want as well? */ + MINERVA-HOW-TALK2-2

CHAIN C0MMinJ MINERVA-HOW-TALK2-2
@670 /* Me? Haha! I've got a couple to my name already. If you ever come across a copy of "Material Theory of the Lantanna", check page one-hundred and fifty-two. That's my name on there. I think. */
= @671 /* Not that it's that big of a deal. I'd rather write a book on everything I've learned around the world and be remembered of that, instead. */
= @672 /* Although... I don't need a grand mausoleum built for me when I pass away, but I'd still prefer something better than to be left in a cold, nasty island like this. No wonder the rising dead are angry. These living... er, un-living conditions are horrible! */
EXIT

// HoW Talk 3: Gloomfrost

CHAIN IF WEIGHT #-1 ~Global("C0MMinHoWTalk3","GLOBAL",1)~ THEN C0MMinJ MINERVA-HOW-TALK3
@673 /* *huff* Goodness, it's cold. I'm freezing my toes off here. Maybe I've just gotten too used to Lonelywood... */
DO ~IncrementGlobal("C0MMinHoWTalk3","GLOBAL",1)~
END
++ @674 /* It's very cold. Unnaturally so. */ + MINERVA-HOW-TALK3-1
++ @675 /* I've never wanted more for a fireplace and hot soup than right now. */ + MINERVA-HOW-TALK3-2
++ @676 /* Mmf. C-n't t-lk. Lips. Fr-zzn. */ + MINERVA-HOW-TALK3-3
++ @677 /* Walking will get you warmed up. Come on, let's go. */ + MINERVA-HOW-TALK3-0

CHAIN C0MMinJ MINERVA-HOW-TALK3-0
@678 /* Oh, fine. I—*whooooa!* I nearly slipped... it's hard walking when you can barely feel your feet. Eek... */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK3-1
@679 /* Unnatural is right! Creepy would be an even better way to put it. It's like the sun doesn't even shine here. */
EXTERN C0MMinJ MINERVA-HOW-TALK3-4

CHAIN C0MMinJ MINERVA-HOW-TALK3-2
@680 /* I'd kill for some cocoa with marshmallows. Too bad you can't find any in the North. */
EXTERN C0MMinJ MINERVA-HOW-TALK3-4

CHAIN C0MMinJ MINERVA-HOW-TALK3-3
@681 /* That bad, huh? I—oh, mine are going numb too. Mmf. H'rd to t'lk like d'is. L'ts j'st guh. */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK3-4
@682 /* Someone knew what they were doing when they called this place "Gloomfrost". Gloomy. Frost. Frost full of gloom. Not a nice place. */
= @683 /* But it wouldn't be an adventure if we didn't explore the worst of places, right? Gloom or not, we'll just have to lighten the place up ourselves! */
EXIT

// HoW Talk 4: Post-Seer Death

CHAIN IF WEIGHT #-1 ~Global("C0MMinHoWTalk4","GLOBAL",1)~ THEN C0MMinJ MINERVA-HOW-TALK4
@684 /* So... the Seer died. Just like she knew she would. */
DO ~IncrementGlobal("C0MMinHoWTalk4","GLOBAL",1)~
= @685 /* It's normal to be afraid of dying, but... living while knowing exactly how you'll die, right up until the moment... that's terrifying beyond words. */
= @686 /* *shudder* I wouldn't want to know how I'm going to die. There's still so much I haven't seen... I don't want to know exactly how little time I have left to see them. */
= @687 /* Brr... I'm feeling a chill again, and I don't think it's because of the cold. C'mon, <PLAYER1>. We've got a dragon to hunt down. */
EXIT

// HoW Talk 5: Final Talk

CHAIN IF WEIGHT #-1 ~Global("C0MMinHoWTalk5","GLOBAL",1)~ THEN C0MMinJ MINERVA-HOW-TALK5
@688 /* Hey, wait up, <PLAYER1>. So before we go in... */
DO ~IncrementGlobal("C0MMinHoWTalk5","GLOBAL",1)~
END
++ @689 /* What is it? */ + MINERVA-HOW-TALK5-1
++ @690 /* Cold feet? */ + MINERVA-HOW-TALK5-2
++ @691 /* We can talk later. */ + MINERVA-HOW-TALK5-0

CHAIN C0MMinJ MINERVA-HOW-TALK5-0
@692 /* Can we? Well... alright, <PLAYER1>. Hope we both make it through this one. */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK5-1
@693 /* It's just... we're about to go toe-to-toe with a dragon, you know? A *dragon*. And dragons have BIG toes. */
= @694 /* Not just any dragon, either. An ancient, immortal angry dragon that should've died a long time ago! This definitely isn't something you have to deal with every day. */
= @695 /* So, uh... just in case this all goes sideways and we all end up eaten, or frozen into icicles for the rest of eternity, I just wanted to say in advance... I've had a great time, <PLAYER1>. */
= @696 /* And, if we really do end up frozen... worth it. Every last second of it. */
END
+ ~Global("C0MMinRomanceActive","GLOBAL",2)~ + @697 /* Don't worry. I'll protect you. */ + MINERVA-HOW-TALK5-ROM
++ @698 /* Thank you, Minerva. */ + MINERVA-HOW-TALK5-3
++ @699 /* Worth it indeed. */ + MINERVA-HOW-TALK5-3
++ @700 /* We won't die, I promise. */ + MINERVA-HOW-TALK5-4
++ @701 /* You have a strange idea of what serves as motivational words. */ + MINERVA-HOW-TALK5-5
++ @702 /* That's enough. We've got a dragon to slay. */ + MINERVA-HOW-TALK5-6

CHAIN C0MMinJ MINERVA-HOW-TALK5-2
@703 /* No, that's not—well, yes, my feet *are* cold, but that's not what I meant. */
EXTERN C0MMinJ MINERVA-HOW-TALK5-1

CHAIN C0MMinJ MINERVA-HOW-TALK5-ROM
@704 /* I've never had someone say that to me before. It makes me feel... warm. And fuzzy. Exactly what I needed right now, so... thank you! */
= @705 /* But don't do anything crazy for my sake. I want you to live too, <PLAYER1>. We're both supposed to make it. */
EXTERN C0MMinJ MINERVA-HOW-TALK5-3

CHAIN C0MMinJ MINERVA-HOW-TALK5-3
@706 /* *exhale* Whew! Now that we've got the nice and cuddly words out of the way, let's do this! */
EXIT

CHAIN C0MMinJ MINERVA-HOW-TALK5-4
@707 /* Yep. That's the spirit. We're unstoppable together, after all! */
EXTERN C0MMinJ MINERVA-HOW-TALK5-3

CHAIN C0MMinJ MINERVA-HOW-TALK5-5
@708 /* I know, I know. In my defense though, we *are* about to fight an ancient lich-dragon. */
EXTERN C0MMinJ MINERVA-HOW-TALK5-3

CHAIN C0MMinJ MINERVA-HOW-TALK5-6
@709 /* Right. I know that. Just give me a second! *breathes* Hmm... *exhales* */
= @710 /* Alright! I'm all hyped up and ready to go. Let's do this! */
EXIT

// ToTL Talk 1

CHAIN IF WEIGHT #-1 ~Global("C0MMinToTLTalk1","GLOBAL",1)~ THEN C0MMinJ MINERVA-TOTL-TALK1
@711 /* Phew! What have we gotten ourselves into this time? */
DO ~IncrementGlobal("C0MMinToTLTalk1","GLOBAL",1)~
END
++ @712 /* Who knows. Keep your guard up. */ + MINERVA-TOTL-TALK1-1
++ @713 /* I'm starting to think this wasn't such a good idea... */ + MINERVA-TOTL-TALK1-2
++ @714 /* That stupid halfling has some explaining to do. */ + MINERVA-TOTL-TALK1-3

CHAIN C0MMinJ MINERVA-TOTL-TALK1-1
@715 /* Anyways, we're... I don't think we're even in Icewind Dale anymore. The heat and dryness of the air... we've been brought to a desert. This can't be the Anauroch, could it? And that structure ahead of us... */
= @716 /* Looks like some sort of castle... like the sort you'd imagine from fairytales. Although fairytales usually leave out the part about grisly undead and shrieking harpies. */
EXTERN C0MMinJ MINERVA-TOTL-TALK1-4

CHAIN C0MMinJ MINERVA-TOTL-TALK1-2
@717 /* Well, look on the bright side! When you have no idea what to expect, you'll never be disappointed by what you find! */
END
++ @718 /* Umm... right. */ + MINERVA-TOTL-TALK1-1
++ @719 /* I'm plenty disappointed. Look at the disappointment on my face. */ + MINERVA-TOTL-TALK1-1
++ @720 /* What a load of nonsense. */ + MINERVA-TOTL-TALK1-1

CHAIN C0MMinJ MINERVA-TOTL-TALK1-3
@721 /* Didn't he just run into that little shack in front of us? Unless he's got a load of traps ready to spring on us in there, I don't think he's trying to run away. */
EXTERN C0MMinJ MINERVA-TOTL-TALK1-1

CHAIN C0MMinJ MINERVA-TOTL-TALK1-4
@722 /* Anyways, it's times like these where we have to stay close and work together. I'm ready to keep watch for any dangers or oddities. Just point me where you want me to go. */
EXIT

// ToTL Talk 2

CHAIN IF WEIGHT #-1 ~Global("C0MMinToTLTalk2","GLOBAL",1)~ THEN C0MMinJ MINERVA-TOTL-TALK2
@723 /* Ha ha... I'm glad that's finally over. If I had to fight one more revenant in here, I'd never want to set foot in another crypt again. */
DO ~IncrementGlobal("C0MMinToTLTalk2","GLOBAL",1)~
END
++ @724 /* And if I had to find another secret passage in this labyrinth, I would've gone insane. */ + MINERVA-TOTL-TALK2-1
++ @725 /* No kidding. I'm so sick and tired of fighting endless hordes of shambling, stinking, stupid undead. */ + MINERVA-TOTL-TALK2-2
++ @726 /* Now is really not the best time to indulge in small talk, Minerva. */ EXIT

CHAIN C0MMinJ MINERVA-TOTL-TALK2-1
@727 /* Oh, I didn't mind that. It was actually kind of fun. Made the experience a bit more bearable. */
EXTERN C0MMinJ MINERVA-TOTL-TALK2-3

CHAIN C0MMinJ MINERVA-TOTL-TALK2-2
@728 /* Shambling, stinking and stupid indeed. Why can't undead be smart and sociable for a change? */
EXTERN C0MMinJ MINERVA-TOTL-TALK2-3

CHAIN C0MMinJ MINERVA-TOTL-TALK2-3
@729 /* There's something strange about all of this, though... it's like this entire place is haunted with restless spirits. I have a feeling the inside of the castle will be exactly like this, or close enough. */
= @730 /* I'm terribly curious as to what happened to this place, so I'm eager to have a look, but let's be careful, okay? */
EXIT

// ToTL - Door Comment

CHAIN IF WEIGHT #-1 ~Global("C0MMinToTLDoorTalk","AR9717",1)~ THEN C0MMinJ MINERVA-TOTL-DOORTALK
@731 /* A door with a mouth that takes two skulls to pass through? This place just keeps getting freakier. */
DO ~IncrementGlobal("C0MMinToTLDoorTalk","AR9717",1)~
EXIT

// ToTL Talk 3

CHAIN IF WEIGHT #-1 ~Global("C0MMinToTLTalk3","GLOBAL",1)~ THEN C0MMinJ MINERVA-TOTL-TALK3
@732 /* Oh, by my dear old nan's wrinkled toes, this is... what the heck is this?! I can't believe it... we're trapped! */
DO ~IncrementGlobal("C0MMinToTLTalk3","GLOBAL",1)~
END
++ @733 /* Yep. This is bad. */ + MINERVA-TOTL-TALK3-1
++ @734 /* It'll be alright. We'll find a way out. */ + MINERVA-TOTL-TALK3-2
++ @735 /* I don't think I've ever seen you panic. */ + MINERVA-TOTL-TALK3-3
++ @736 /* (Ignore her) */ EXIT

CHAIN C0MMinJ MINERVA-TOTL-TALK3-1
@737 /* Ohhh, this is worse than bad. Way, way worse. */
EXTERN C0MMinJ MINERVA-TOTL-TALK3-4

CHAIN C0MMinJ MINERVA-TOTL-TALK3-2
@738 /* Okay, okay. I trust you have a plan. Because if you don't... *shudder* */
EXTERN C0MMinJ MINERVA-TOTL-TALK3-4

CHAIN C0MMinJ MINERVA-TOTL-TALK3-3
@739 /* What? This isn't panicking yet. Give me a few days, then you'll see panicking! */
EXTERN C0MMinJ MINERVA-TOTL-TALK3-4

CHAIN C0MMinJ MINERVA-TOTL-TALK3-4
@740 /* Ooh, I haaaate being stuck in closed spaces. Reminds me too much of when I accidentally locked myself in an abandoned workshop at the age of ten. Three days until someone found me. */
= @741 /* Although that wasn't even nearly the worst case. Did I tell you about the time when I was locked in a Chultan tomb with giant snakes? Twenty-five days before I found a way out. Twenty-five days. I had to live on moss. *shudder* */
= @742 /* Let's... let's just go forward and hope this isn't some kind of cruel trap, okay? Hopefully there's a way out. Hopefully... */
EXIT

// Albion

INTERJECT DALBION 1 C0MMinAlbion1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @743 /* What's a bunch of Eldathyns doing in a stinking pit like this? Isn't your goddess the patron of peace and waterfalls? */
EXTERN DALBION 3

INTERJECT DALBION 14 C0MMinAlbion2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @744 /* Wait... what? You know about the Temple of the Forgotten God? And that the Heartstone Gem was hidden there? */
EXTERN DALBION 16

// Ambere

I_C_T DAMBERE 7 C0MMinAmbere1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @745 /* I'd much prefer the road to settling down, but honestly? I can't really see what's so bad about living here. */
END

// Angaar

I_C_T DANGAAR 1 C0MMinAngaar
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @746 /* Well, they've prepared quite a welcoming committee for us. */
== DANGAAR @747 /* ... */
END

// Apsel

ADD_TRANS_TRIGGER DAPSEL 4 ~!IsValidForPartyDialogue("C0MMin")~ DO 2 3

EXTEND_TOP DAPSEL 4 #3
+ ~IsValidForPartyDialogue("C0MMin")~ + @748 /* How am I supposed to get the door open if you broke the key off in the lock? */ DO ~SetGlobal("C0MMinApselDoor","AR1000",1)~ EXTERN C0MMinJ MINERVA-APSEL
END

CHAIN C0MMinJ MINERVA-APSEL
@749 /* Oh, that'll be no issue. I'm sure whatever lock on that rickety-looking door'll be easy to pick. I could do it in my sleep. */
== DAPSEL @750 /* "Rickety?"—er, um, that's not the point right now. Could you help me, then? */
COPY_TRANS DAPSEL 14

CHAIN IF WEIGHT #-1 ~Global("C0MMinApselDoor","AR1000",2)~ THEN C0MMinJ MINERVA-APSEL-DOOR
@751 /* See? Told you it was a rickety thing. */
DO ~IncrementGlobal("C0MMinApselDoor","AR1000",1)~
EXIT

I_C_T DAPSEL 10 C0MMinApsel
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @752 /* Ooh, now that's a nice blade. I don't suppose you've got a few more? Or maybe just one more? */
== DAPSEL @753 /* I–I'm afraid not. I haven't been able to make any more since that beast took over my shop. */
END

// Arundel

I_C_T DARUNDEL 7 C0MMinArundel1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @754 /* Hmm, yes. It's almost impossible to explain naturally using logic, even if all the stars aligned... it all seems too convenient. */
END

CHAIN IF WEIGHT #-1 ~Global("C0MMinArundelDying","GLOBAL",1)~ THEN C0MMinJ MINERVA-ARUNDEL-DYING
@755 /* Oh no, Arundel... */
DO ~IncrementGlobal("C0MMinArundelDying","GLOBAL",1) ActionOverride("ARUNDEL",StartDialogueNoSet(Player1))~ EXIT

// Baldemar

I_C_T DBALDEMR 1 C0MMinBeorn1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @756 /* *sigh* Like overgrown children, probably... I wish I could say the Ayrorch council back home was any better most of the time. */
END

// Belhifet

I_C_T DBELHIFE 11 C0MMinBelhifet11
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @757 /* The only thing inevitable now is us sending you back to the pits of Hell. Time for you to eat burning knives! */
END

// Beorn

INTERJECT DBEORN 1 C0MMinBeorn1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @758 /* Of course you can! Don't tell me things are so bad you can't even trust a fellow gnome? */
EXTERN DBEORN 3

// Criek

I_C_T2 DCRIECK 3 C0MMinCriek
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @759 /* You'd think people stranded in the desert would be more courteous to potential rescuers. Well, nothing to be done about it, I suppose. Eat knives! */
END

I_C_T2 DCRIECK 4 C0MMinCriek
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @759 /* You'd think people stranded in the desert would be more courteous to potential rescuers. Well, nothing to be done about it, I suppose. Eat knives! */
END

I_C_T2 DCRIECK 5 C0MMinCriek
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @759 /* You'd think people stranded in the desert would be more courteous to potential rescuers. Well, nothing to be done about it, I suppose. Eat knives! */
END

// Daen Winterbrush

I_C_T CDDAEN 8 C0MMinDaen
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @760 /* Wow... it turns out that there really are some powers even greater than death. */
END

// Damien

I_C_T DDAMIEN 2 C0MMinDamien1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @761 /* Well, looks like it's to bring out the knives. We can't have these monsters stealing all of the town's tasty fish, can we? */
== DDAMIEN @762 /* Please help! My da'll be mad at me if he finds out what happened. */
END

// Dirty Llew

I_C_T DDIRTYLL 3 C0MMinDirtyLlew
== DDIRTYLL IF ~See("C0MMin")
IsValidForPartyDialogue("C0MMin")~ THEN @763 /* Say, you've got a fine-looking gnomish lady with you there. Mind if I... got to know her a little, eh? */
== C0MMinJ @764 /* Ha ha. Sure thing. Just so you know, though, I've got knives on me from here... all the way down to here. */
== DDIRTYLL @765 /* Ooh, now that is quite a challenge... I'm not against taking a few shaves for some attention, though. Heh heh... */
END

// Durdel Anatha

I_C_T DVOICEDA 6 C0MMinDurdel1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @766 /* That was the way you decided to hold true to your vows? There wasn't a... healthier solution out there? */
END

// Elisia

I_C_T DELISIA 16 C0MMinElisia1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @767 /* Wow... the power of song, hmm? I'm no bard, but even I can sense the magic in the sounds. */
== DELISIA @768 /* The song fades, but the images linger. */
END

// Emmerich

I_C_T DEMMRCH 31 C0MMinEmmerich1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @769 /* Oh, no. Lycanthropy is highly contagious and most people don't even realize they're afflicted right away. But it's not incurable... */
END

// Erevain

I_C_T DEREVAIN 0 C0MMinErevain1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @770 /* Oh, I think I've seen you around the city before. We haven't spoken until now, even though we're only a room apart. */
== DEREVAIN @771 /* Yes, a pity. Though I believe I have glimpsed you atop Gaspar's rooftop, singing and feasting on the local delicacies. Your voice is quite charming, different as it is to elvensong. */
== C0MMinJ @772 /* Aww, how sweet of you! I'd sing a tune for that compliment, but my throat's a little hoarse right now. Maybe later. */
== DEREVAIN @773 /* Is there anything you wanted, friend? */
END

I_C_T DEREVAIN 10 C0MMinErevain1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @770 /* Oh, I think I've seen you around the city before. We haven't spoken until now, even though we're only a room apart. */
== DEREVAIN @771 /* Yes, a pity. Though I believe I have glimpsed you atop Gaspar's rooftop, singing and feasting on the local delicacies. Your voice is quite charming, different as it is to elvensong. */
== C0MMinJ @772 /* Aww, how sweet of you! I'd sing a tune for that compliment, but my throat's a little hoarse right now. Maybe later. */
== DEREVAIN @773 /* Is there anything you wanted, friend? */
END

I_C_T DEREVAIN 1 C0MMinErevain2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @774 /* Horrors, sure. But the wonders are what adventures are all about! There's always something new to experience around the corner, and it's bound to be exciting. */
== DEREVAIN @775 /* Aye, I know that feeling well. */
END

// Fengla

INTERJECT DFENGLA 3 C0MMinFengla1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @776 /* That's it. I'm going to find the monster that would do this and show them a few knives of my own. Who did this to you? */
EXTERN DFENGLA 4

// Gaspar

CHAIN IF WEIGHT #-1 ~!GlobalGT("Know_Balance","GLOBAL",0)
Global("C0MMinGaspar","LOCALS",0)
IsValidForPartyDialogue("C0MMin")
See("C0MMin")
!StateCheck("C0MMin",CD_STATE_NOTVALID)~ THEN DGASPAR GASPAR
@777 /* Ah... it's you, Minerva. I'm surprised to see you indoors for a change. */
DO ~SetGlobal("C0MMinGaspar","LOCALS",1)~
== C0MMinJ @778 /* Well, 'tis true I don't care much for walls or a roof... the underside of one, anyway. But one must make sacrifices now and again. */
== DGASPAR @779 /* And I can't say I care much for you climbing atop my roof and using it as your picnic table, nor encouraging my son to do the same. */
== C0MMinJ @780 /* Ha ha. That was only once. And it's such a pity not to take advantage of the great view one gets from up there, or to not partake of your fine grilled trout... of which you have my thanks for once again, by the way. */
== DGASPAR @781 /* Not at all. The small ones are of little use for scrimshaw anyhow. Just... please, stop leaving the leftover bones on the rooftop. They attract the gulls. */
END
IF ~See(Player1)~ EXTERN DGASPAR GASPAR-1
IF ~!See(Player1)~ EXIT

CHAIN DGASPAR GASPAR-1
@782 /* Regardless, I think I should attend to your companion. I am Gaspar the fishmonger. What can I do for you this fine day? */
COPY_TRANS DGASPAR 0

// Gelarith

ADD_TRANS_TRIGGER DGELARIT 1 ~!IsValidForPartyDialogue("C0MMin")~ DO 0

EXTEND_TOP DGELARIT 1
+ ~IsValidForPartyDialogue("C0MMin")~ + @783 /* What missing pieces? */ EXTERN C0MMinJ MINERVA-GELARITH
END

CHAIN C0MMinJ MINERVA-GELARITH
@784 /* The missing pieces of this machinery here, of course! Can't you tell, it's not moving as it should be? */
EXTERN DGELARIT 2

I_C_T DGELARIT 9 C0MinervaGelarith
== C0MMinJ IF ~IsValidForPartyDialog("C0MMin")~ THEN @785 /* Wow. I've seen a lot of wonders in my lifetime, but never anything like this. */
END

// Ghereg

I_C_T DOGRE 3 C0MMinGhereg1
== C0MMinJ IF ~!IsGabber("C0MMin") IsValidForPartyDialogue("C0MMin")~ THEN @786 /* *sigh* Good idea, <GABBER>. Maybe you're a bit of a dummy yourself? */
== DOGRE @787 /* Time to make you hurt! */
END

// Girdle of Gond

CHAIN IF WEIGHT #-1 ~Global("C0MMinGirdleGond","GLOBAL",1)~ THEN C0MMinJ GIRDLE-OF-GOND
@788 /* Hmm, a magical belt made by the Gondar church? Fancy finding something like that here. */
DO ~IncrementGlobal("C0MMinGirdleGond","GLOBAL",1)~
= @789 /* The enchantments on it seem to have faded a little, though... usually you can do more with one of these. I don't really have the means to fix it up myself, though. */
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinGnomishTools","GLOBAL",1)~ THEN C0MMinJ GNOME-TOOLS
@790 /* Hmm? Those are standard tools for gnomish crafts... they're common in every Lantanese household, but what are these ones doing here? */
DO ~IncrementGlobal("C0MMinGnomishTools","GLOBAL",1)~
EXIT

// Goblin

I_C_T DGOBLINC 4 C0MMinGoblin1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @791 /* Hmm... there's a few hallucinogenic drugs and plants that can cause adverse mental effects, but the effects wear off given enough time. If it's still this strong, only some kind of powerful magic could be involved. */
== DGOBLINC @792 /* Ugh, gnomes... always talk so much... if only my head wasn't hurting... */
END

// Grisella

I_C_T DGRISELL 5 C0MMinGrisella
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @793 /* Ack! Bugs! I didn't bring boots big enough for this. Tell me they don't bite. */
== DGRISELL @794 /* Hard to say, dearie. With pincers that big, though... chances are they can do more than just bite. */
END

// Hailee

ADD_TRANS_TRIGGER DHAILEE 33 ~!IsValidForPartyDialogue("C0MMin")~ DO 0

EXTEND_TOP DHAILEE 33
+ ~IsValidForPartyDialogue("C0MMin")~ + @795 /* Indeed, and listen to the song: 

    Hailee, Hailee, skipping amongst the trees 
    Keeper of secrets, whispered in the leaves 
    A secret for a secret, speak of what she sees! */ EXTERN C0MMinJ MINERVA-HAILEE-SONG
END

CHAIN C0MMinJ MINERVA-HAILEE-SONG
@796 /* Ha ha, what a cute song, <GABBER>! It might not make you famous, but I like it. */
EXTERN DHAILEE 34

// Hermit

I_C_T DHERMIT 0 C0MMinHermit1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @797 /* Oof... we're lucky we didn't get buried under all that snow. The others... not so lucky. */
== DHERMIT @798 /* You should worry more for yourselves. There's no going back after an avalanche like that. Are you all right? */
END

// Hjollder

INTERJECT DHJOLLDE 12 C0MMinHjollder1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @799 /* The same Jerrod who was entombed beneath the temple of Tempus in Easthaven? */
EXTERN DHJOLLDE 13

I_C_T DHJOLLDE 26 C0MMinHjollder2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @800 /* Wow... so that's how it feels to ride the wind. I wouldn't mind trying again... after taking a nice long break, that is. */
END

I_C_T DHJOLLDE 50 C0MMinHjollder3
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @801 /* And, uh... this obfuscation wasn't suspicious at all to you before now? */
END

// Hrothgar

I_C_T DHROTH 4 C0MMinHroth1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @802 /* My, this is quite a collection, and many from distant lands... some of them are places even I haven't been. "Here and there" seems to be quite a long ways away from the Ten Towns. */
== DHROTH @803 /* I'll not deny it. I could tell enough stories of these items, but I fear we'd be here quite awhile. */
END

// Icasaracht

I_C_T DICASA 17 C0MMinIcasaracht1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @804 /* So those things she said while wearing Wylfdene's body weren't just lies meant to start a war. She really believes the world belonged to her. */
END

// Ilmadia

I_C_T DILMADIA 9 C0MMinIlmadia1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @805 /* Ooh, devious. Absolutely horrifying, of course, but still. */
END

// Jermsy

CHAIN IF WEIGHT #-1 ~Global("C0MMinJermsyCellar","AR2005",1)~ THEN C0MMinJ JERMSY-CELLAR
@806 /* Hmm...? */
DO ~IncrementGlobal("C0MMinJermsyCellar","AR2005",1)~
END
+ ~!CheckStatGT(Player1,16,DEX)
!CheckStatGT(Player1,14,INT)~ + @807 /* Is something wrong, Minerva? */ + JERMSY-CELLAR-1
+ ~OR(2)
CheckStatGT(Player1,16,DEX)
CheckStatGT(Player1,14,INT)~ + @808 /* You noticed too, Minerva? */ + JERMSY-CELLAR-2
+ ~!CheckStatGT(Player1,16,DEX)
!CheckStatGT(Player1,14,INT)~ + @736 /* (Ignore her) */ EXIT
+ ~OR(2)
CheckStatGT(Player1,16,DEX)
CheckStatGT(Player1,14,INT)~ + @809 /* *whisper* That door there, under the stairs? Be ready. It could be more goblins. */ + JERMSY-CELLAR-3

CHAIN C0MMinJ JERMSY-CELLAR-1
@810 /* I can't be sure, but that door under the stairs... I'm almost certain I heard a noise. */
EXTERN C0MMinJ JERMSY-CELLAR-4

CHAIN C0MMinJ JERMSY-CELLAR-2
@811 /* Yep. That door under the stairs. If we both heard that noise, then we're definitely not imagining things. */
EXTERN C0MMinJ JERMSY-CELLAR-4

CHAIN C0MMinJ JERMSY-CELLAR-3
@121 /* *nods* */
EXIT

CHAIN C0MMinJ JERMSY-CELLAR-4
@812 /* It could just be a rat, or it might be an ambush... I'll ready another knife either way, just in case. */
EXIT

I_C_T DJERMSY 0 C0MMinJermsy1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @813 /* Oh, phew. It's just a boy. */
== DJERMSY @814 /* Are the goblins gone? Can I come out now? */
END

// Kaylessa

I_C_T DKAYLESS 11 C0MMinKaylessa1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @815 /* Incredible... if this astrolabe's survived the passing of time, I'd love to see it for myself. */
END

// Kontik

I_C_T DKONTIK 7 C0MMinKontik
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @816 /* Uh oh... looks like our last encounter with that Aurilite Lysan's about to come back and bite us. */
END

// Kresselack

ADD_TRANS_TRIGGER DKRESSEL 30 ~!IsValidForPartyDialogue("C0MMin")~ DO 0

EXTEND_TOP DKRESSEL 30
+ ~IsValidForPartyDialogue("C0MMin")~ + @817 /* That is not the answer I was promised, spirit. */ EXTERN C0MMinJ MINERVA-KRESSELACK
END

CHAIN C0MMinJ MINERVA-KRESSELACK
@818 /* Well... *technically* he didn't promise an answer, so he's not really obligated to tell you anything, and as it turns out we got cheated... uh, I'll shut up now. */
EXTERN DKRESSEL 40

// Larrel

I_C_T DLARREL 54 C0MMinLarrel1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @819 /* It's never a bad idea to be wary, but I'm not sure... */
END

// Luremaster

INTERJECT DCHALW 2 C0MMinLuremasterRiddle
== C0MMinJ IF ~IsGabber("C0MMin") IsValidForPartyDialogue("C0MMin")~ THEN @820 /* Wind, of course. */
EXTERN DCHALW 8

I_C_T DLURE 30 C0MMinLuremaster1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @821 /* *pant* Ha ha... you bet. Making our way through these challenges deserves to be remembered. */
END

// Malavon

EXTEND_TOP DMALASIM 0
+ ~Global("Golem_Commands","GLOBAL",1)
!IsGabber("C0MMin")
IsValidForPartyDialogue("C0MMin")~ + @822 /* Minerva, would you care to do the honors? */ DO ~SetGlobal("Golem_Commands","GLOBAL",3)
Enemy()~ EXTERN C0MMinJ MINERVA-MALAVON
END

EXTEND_TOP DMALASIM 1
+ ~Global("Golem_Commands","GLOBAL",1)
!IsGabber("C0MMin")
IsValidForPartyDialogue("C0MMin")~ + @822 /* Minerva, would you care to do the honors? */ DO ~SetGlobal("Golem_Commands","GLOBAL",3)
Enemy()~ EXTERN C0MMinJ MINERVA-MALAVON
END

EXTEND_TOP DMALASIM 2
+ ~Global("Golem_Commands","GLOBAL",1)
!IsGabber("C0MMin")
IsValidForPartyDialogue("C0MMin")~ + @822 /* Minerva, would you care to do the honors? */ DO ~SetGlobal("Golem_Commands","GLOBAL",3)
Enemy()~ EXTERN C0MMinJ MINERVA-MALAVON
END

EXTEND_TOP DMALASIM 7
+ ~Global("Golem_Commands","GLOBAL",1)
!IsGabber("C0MMin")
IsValidForPartyDialogue("C0MMin")~ + @822 /* Minerva, would you care to do the honors? */ DO ~SetGlobal("Golem_Commands","GLOBAL",3)
Enemy()~ EXTERN C0MMinJ MINERVA-MALAVON
END

CHAIN C0MMinJ MINERVA-MALAVON
@26 /* Gladly! */
= @823 /* Kalam, Stam. Too bad for you! */
EXTERN DMALASIM 10

// Maluradek

I_C_T DLORD 0 C0MMinMaluradek1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @824 /* Crazy ghosts. It's always crazy ghosts! Can't we run into some more friendly ghosts for a change? */
END

// Mytos

I_C_T2 DMYTOS 25 C0MMinMytos1
== C0MMinJ IF ~!IsGabber("C0MMin") IsValidForPartyDialogue("C0MMin")~ THEN @825 /* Well, you tried, <GABBER>. That's more than I probably would've had patience for. */
END

// Nym

I_C_T DNYM 0 C0MMinNym1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @826 /* Umm... "honored one, you grace me..." something, something, "first meeting, I am... Nym?" ...Sorry, I'm not great with Drowish. */
END

// Orog Sentry

I_C_T2 DOSENTRY 2 C0MMinOrogSentry1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @827 /* Well, that was succinct. Guess we can't criticize them for wasting any time. */
END

// Orrick

CHAIN IF WEIGHT #-1 ~Global("C0MMinBeenToOrrickTower","GLOBAL",2)~ THEN C0MMinJ ORRICK-TOWER-TALK
@828 /* I haven't been inside of many wizard's towers in my travels. They're a great deal different from the towers of Orlil. */
DO ~SetGlobal("C0MMinBeenToOrrickTower","GLOBAL",3)~
END
++ @829 /* The towers of Orlil? */ + ORRICK-TOWER-TALK-1
++ @830 /* You don't need to elaborate. I'm not interested. */ EXIT

CHAIN C0MMinJ ORRICK-TOWER-TALK-1
@831 /* Oops, I probably should've explained. Orlil's one of the islands that make up Lantan. It's the home of the few Lantanese arcanists, who live in their own magical towers. */
= @832 /* Their towers aren't nearly as high or as grand as this one here. Even the mages of Lantan follow many of the ideals of the nation, so they keep their homes efficient and practical. Nothing like these towers, which seem to all be trying to outdo each other. */
= @833 /* Although I suppose mages don't usually care much for others' standards of practicality. Well, I don't mean anything by it. Seeing how Orrick built his tower just made me think a little. */
EXIT

// Oswald

INTERJECT DOSWALD 2 C0MMinOswald1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @834 /* In the air, hmm? I thought this thing had a similar design to a Lantanese airship. */
== DOSWALD @835 /* Well now! I didn't expect anyone in these lands to recognize that. I'm not from Lantan, myself, but I did study briefly at the Sambaran Academy once upon a time. Might I ask your name, madam? */
== C0MMinJ @836 /* Minerva Glimmershine, artificer and adventurer extraordinaire. I'd rather talk about this lovely airship of yours though... I've never seen one built like this before. Has it really seen flight? */
== DOSWALD @837 /* Of course! This ship is of a more... economic design than you may be used to, but as my greatest invention, I am very proud of it all the same. */
COPY_TRANS DOSWALD 3

// Pomab

INTERJECT DPOMAB 6 C0MMinPomab
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @838 /* Really? Hmm... considering the distance between Calimshan and here, it sounds like a grandiose way of saying that you got sent somewhere far away so the important people could forget about you. */
EXTERN DPOMAB 9

I_C_T2 DPOMEND 11 C0MMinPomabEnd
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @839 /* Oh, I'm so looking forward to this! */
END

// Purvis

I_C_T DPURVIS 3 C0MMinPurvis1
== C0MMinJ IF ~!IsGabber("C0MMin") IsValidForPartyDialogue("C0MMin")~ THEN @840 /* There's something... off about this one. He seems to be not right in the head, but... I don't know. I can't shake the feeling that he's messing with us somehow. */
END

INTERJECT DPURVIS 13 C0MMinPurvis2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @841 /* Now I get it... you're the real assassin sent to kill Wylfdene, aren't you? I thought something was off when we met. */
EXTERN DPURVIS 19

INTERJECT DPURVIS 18 C0MMinPurvis3
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @842 /* Oh no, you don't! */
DO ~StartCutSceneMode()
ActionOverride("Purvis_5",EscapeArea())
EquipRanged()
Wait(2)
FaceObject("Purvis_5")
SetSequence(8)
SmallWait(4)
CreateVisualEffectObject("C0MBoom","Purvis_5")
ApplyDamage("Purvis_5",15,FIRE)
ApplyDamage("Purvis_5",20,MISSILE)
Kill("Purvis_5")
AddexperienceParty(20000)
Wait(2)
EndCutSceneMode()
SetGlobal("C0MMinKilledPurvis","GLOBAL",1)
StartDialogueNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0MMinKilledPurvis","GLOBAL",1)~ THEN C0MMinJ MINERVA-KILLED-PURVIS
@843 /* No one outruns my knives. */
DO ~IncrementGlobal("C0MMinKilledPurvis","GLOBAL",1)~
END
++ @844 /* Well done. */ EXIT
++ @845 /* Remind me never to get on your bad side. */ EXIT
++ @846 /* Do something like that without my call again, and we're going to have problems. */ + MINERVA-KILLED-PURVIS-1

CHAIN C0MMinJ MINERVA-KILLED-PURVIS-1
@847 /* Noted. Will I listen though? ...Probably not. I was not about to let him get away. */
EXIT

// Quimby

ADD_TRANS_TRIGGER DQUIMBY 2 ~False()~ DO 2

EXTEND_TOP DQUIMBY 2 #2
+ ~IsValidForPartyDialogue("C0MMin")~ + @848 /* Do you get ANY travelers at this time of year? */ EXTERN DQUIMBY MINERVA-QUIMBY1
+ ~!IsValidForPartyDialogue("C0MMin")~ + @848 /* Do you get ANY travelers at this time of year? */ EXTERN DQUIMBY MINERVA-QUIMBY2
END

CHAIN DQUIMBY MINERVA-QUIMBY1
@849 /* We have two! Ha-HA! That's more than I've had in months! The gnome lass you've got with you there is one! */
== C0MMinJ IF ~!IsGabber("C0MMin")~ THEN @850 /* *psst!* I'd just like to say, <GABBER>, that there's a point where a warm reception goes too far and ends up in the opposite direction... */
EXTERN DQUIMBY MINERVA-QUIMBY3

CHAIN DQUIMBY MINERVA-QUIMBY2
@851 /* We have two! Ha-HA! That's more than I've had in months! There was a gnome lass somewhere around here, but sadly, she doesn't use the room much at all! *sigh* */
EXTERN DQUIMBY MINERVA-QUIMBY3

CHAIN DQUIMBY MINERVA-QUIMBY3
@852 /* Other than her, there's the one in the other room, yes! Yes, his name is Erevain something or another. He is an elf AND an adventurer to boot! */
COPY_TRANS DQUIMBY 4

// Rakshasa

INTERJECT DRAKSH 0 C0MMinRakshasa1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @853 /* Hobart?! How in Gond's name did you get in here so casually after what we had to go through? */
EXTERN DRAKSH 1

// Tarnelm

I_C_T2 DTARNELM 3 C0MMinTarnelm1
== C0MMinJ IF ~!IsGabber("C0MMin") IsValidForPartyDialogue("C0MMin")~ THEN @854 /* Seriously, <GABBER>? Should I be a little more worried about myself now, after hearing you say that? */
END

// Temple of Tempus

I_C_T DEVERARD 14 C0MMinEverard1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @855 /* Failed his god, maybe. Succeeded for the people, though? Definitely. */
== DEVERARD @856 /* The way of Tempus is victory. Victory, meaning absolute triumph over one's foes in battle, not some foolish, self-centered ideal of martyrdom! */
END

I_C_T DEVERARD 16 C0MMinEverard2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @857 /* Tch. And I thought some of the tutors of the Sambaran Academy were controversial. */
== DEVERARD @858 /* If you have more to ask, say it and be done. I will not engage in futile debates in this matter. */
END

CHAIN IF WEIGHT #-1 ~Global("C0MMinTempusTemple","GLOBAL",1)~ THEN C0MMinJ TEMPUS-TEMPLE
@859 /* The Temple of Tempus... ha ha, strange. It's as different as can be from your standard Gondar church, yet somehow manages to exude the same sense of piety. */
DO ~IncrementGlobal("C0MMinTempusTemple","GLOBAL",1)~
END
+ ~Kit(LastTalkedToBy,OHTEMPUS)~ + @860 /* I would not show contempt in the halls of the Foehammer if I were you. */ + TEMPUS-TEMPLE-OHTEMPUS
++ @861 /* As different as can be, eh? */ + TEMPUS-TEMPLE-1
++ @862 /* Do you worship Gond, Minerva? */ + TEMPUS-TEMPLE-2
++ @863 /* We've no time for small talk right now. */ + TEMPUS-TEMPLE-END

CHAIN C0MMinJ TEMPUS-TEMPLE-END
@864 /* Oh, don't mind me. Just talking to myself... suppose I'll just do it in my mind instead. */
EXIT

CHAIN C0MMinJ TEMPUS-TEMPLE-OHTEMPUS
@865 /* Ha ha, I'm not that insensitive. I'm just not a particularly pious person to begin with, so I apologize in advance. */
EXTERN C0MMinJ TEMPUS-TEMPLE-3

CHAIN C0MMinJ TEMPUS-TEMPLE-1
@866 /* As far as Creation can be different from the destruction of War, yes... not total opposites, but different enough. */
EXTERN C0MMinJ TEMPUS-TEMPLE-3

CHAIN C0MMinJ TEMPUS-TEMPLE-2
@867 /* In a sense. I'm not particularly pious, though, so don't worry about any surprise sermons in the evening. Unless that's what you're into, that is. In which case, I'm sorry. */
EXTERN C0MMinJ TEMPUS-TEMPLE-3

CHAIN C0MMinJ TEMPUS-TEMPLE-3
@868 /* I suppose when you revere the ideals of your god as much as a priest does, faith shines though regardless of what said ideals are. */
= @869 /* I don't care much for war or bloodshed, but I can respect the devotion it much have took to build a temple like this. */
END
+ ~Kit(LastTalkedToBy,OHTEMPUS)~ + @870 /* The Lord of Battles enforces honorable battle, not mere violence. */ + TEMPUS-TEMPLE-OHTEMPUS2
+ ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)~ + @871 /* Devotion is what gives power to those like myself. */ + TEMPUS-TEMPLE-CLERIC
++ @872 /* There is peace to be found in faith, so long as it is genuine. */ + TEMPUS-TEMPLE-4
++ @873 /* I wouldn't know. I'm not a pious person myself. */ + TEMPUS-TEMPLE-5
++ @874 /* That's enough for now. */ EXIT

CHAIN C0MMinJ TEMPUS-TEMPLE-OHTEMPUS2
@875 /* Oh, I'm not implying otherwise. I just don't care for the whole 'war is inevitable' dogma, even if there's some truth to it. */
EXTERN C0MMinJ TEMPUS-TEMPLE-6

CHAIN C0MMinJ TEMPUS-TEMPLE-CLERIC
@876 /* Yes, I know. It lets you work miracles, and that's a good thing as long as it gives you a chance to help others. I just prefer my own methods. */
EXTERN C0MMinJ TEMPUS-TEMPLE-6

CHAIN C0MMinJ TEMPUS-TEMPLE-4
@877 /* That's true. I believe the amount of faith I place in Gond is genuine, but for the most part, I go my own path. I like to think that it's a step up from lip service, though. */
EXTERN C0MMinJ TEMPUS-TEMPLE-6

CHAIN C0MMinJ TEMPUS-TEMPLE-5
@878 /* I guess that means you entered here solely out of curiosity, then. I don't blame you though, I was plenty curious myself. */
EXTERN C0MMinJ TEMPUS-TEMPLE-6

CHAIN C0MMinJ TEMPUS-TEMPLE-6
@879 /* But I don't think you came in just so you could listen to me babble on about the decor. Go on, then! Do whatever it is you came in here to do. */
EXIT

// Therik

I_C_T DTHERIK 0 C0MMinTherik
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @880 /* Classic words for tomb guardians. So, do we listen or go forth anyway? */
== DTHERIK @747 /* ... */
END

// Tiernon

INTERJECT DTIERNON 1 C0MMinTiernon1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @881 /* Wait... I remember hearing about a Tiernon from the Hearthstone Clan during my travels in the Sunset Mountains. Is that you? */
DO ~AddXP2DA("Level_8_Easy")
DisplayStringNoNameDlg(Myself,18517)
SetGlobal("Tiernon_Rep","GLOBAL",1)
AddJournalEntry(23537,INFO)~ EXTERN DTIERNON 49

INTERJECT DTIERNON 33 C0MMinTiernon1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @881 /* Wait... I remember hearing about a Tiernon from the Hearthstone Clan during my travels in the Sunset Mountains. Is that you? */
DO ~AddXP2DA("Level_8_Easy")
DisplayStringNoNameDlg(Myself,18517)
SetGlobal("Tiernon_Rep","GLOBAL",1)
AddJournalEntry(23537,INFO)~ EXTERN DTIERNON 50

I_C_T DTIERNON 25 C0MMinTiernon2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @882 /* Phew, that sounds absolutely mystical. I'd love to make something out of ice like that. */
END

CHAIN IF WEIGHT #-1 ~Global("C0MMinGloomfrostWeapon","GLOBAL",1)~ THEN C0MMinJ MINERVA-GLOOMFROST-WEAPON
@883 /* What a beautiful creation! It's more than a weapon, it's... it's a work of art! */
DO ~IncrementGlobal("C0MMinGloomfrostWeapon","GLOBAL",1)~
END
+ ~OR(2)
Class(Player1,BARD_ALL)
Race(Player1,DWARF)~ + @884 /* Tiernon truly is as masterful as his tales tell. */ + MINERVA-GLOOMFROST-WEAPON-1
++ @885 /* It really is. I've never seen its like before. */ + MINERVA-GLOOMFROST-WEAPON-2
++ @886 /* As long as it's useful, I could care less about how it looks. */ + MINERVA-GLOOMFROST-WEAPON-3
++ @887 /* You can admire it all you want once we're out of this glacier. */ EXIT

CHAIN C0MMinJ MINERVA-GLOOMFROST-WEAPON-1
@888 /* Yes, and possibly even more than that. Have you ever seen anyone craft something like this out of pure ice? */
EXTERN C0MMinJ MINERVA-GLOOMFROST-WEAPON-4

CHAIN C0MMinJ MINERVA-GLOOMFROST-WEAPON-2
@889 /* Neither have I. Even after all the places I've been, making something like this out of pure ice is like a part out of some fairytale. */
EXTERN C0MMinJ MINERVA-GLOOMFROST-WEAPON-4

CHAIN C0MMinJ MINERVA-GLOOMFROST-WEAPON-3
@890 /* Where's your sense of awe, <PLAYER1>? How often will you see something like this crafted out of pure ice? */
EXTERN C0MMinJ MINERVA-GLOOMFROST-WEAPON-4

CHAIN C0MMinJ MINERVA-GLOOMFROST-WEAPON-4
@891 /* Use it well, <PLAYER1>! A masterpiece like that deserves to be used to its best capabilities. */
END
+ ~PartyHasItem("FANGGF")~ + @892 /* You're the best with knives in this group. Why don't you use it? */ + MINERVA-GLOOMFROST-WEAPON-5
++ @893 /* Don't worry, I will. */ EXIT
++ @894 /* We'll see. If it disappoints me, it'll fetch a good price at least. */ EXIT

CHAIN C0MMinJ MINERVA-GLOOMFROST-WEAPON-5
@895 /* Oh, I'd love to! I just couldn't bring myself to ask after Tiernon entrusted it to you. But if you want me to take care of it, then I will. */
EXIT

// Tybald

INTERJECT DTYBALD 5 C0MMinTybald1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @896 /* Oh, come now, there's no harm in a little prank now and again... but that's not the whole story, is it? */
EXTERN DTYBALD 6

// Wylfdene

I_C_T DWYLF 5 C0MMinWylfdene1
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @897 /* *sigh* If we're going to start arguing over whose way of life is more pestilent, we might as well pack up and go home. People who start this debate are stubborn as mules. */
END

I_C_T DWYLF 20 C0MMinWylfdene2
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @898 /* Uh oh. Looks like it might be time to bring out the knives... */
END

I_C_T DWYLF 51 C0MMinWylfdene3
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @899 /* He's afraid, <PLAYER1>. We've got him now. */
END

// Yxunomei

I_C_T DYXUN 32 C0MMinYxunomei
== C0MMinJ IF ~IsValidForPartyDialogue("C0MMin")~ THEN @900 /* A debate that's spurred eons-long conflict between philosophers all across Toril. I've never seen someone dismiss it as casually as this though. */
END

// PID

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN C0MMinJ pid
@901 /* How's it going, <PLAYER1>? */
END
 + ~RandomNum(4,1)
 HPPercentGT(Myself,74)~ + @902 /* How are you? */ + PID-1-1A
 + ~RandomNum(4,2)
 HPPercentGT(Myself,74)~ + @902 /* How are you? */ + PID-1-1B
 + ~RandomNum(4,3)
 HPPercentGT(Myself,74)~ + @902 /* How are you? */ + PID-1-1C
 + ~RandomNum(4,4)
 HPPercentGT(Myself,74)~ + @902 /* How are you? */ + PID-1-1D
 + ~RandomNum(2,1)
 HPPercentLT(Myself,75)
 HPPercentGT(Myself,24)~ + @902 /* How are you? */ + PID-1-2A
 + ~RandomNum(2,2)
 HPPercentLT(Myself,75)
 HPPercentGT(Myself,24)~ + @902 /* How are you? */ + PID-1-2B
 + ~HPPercentLT(Myself,25)~ + @902 /* How are you? */ + PID-1-3
 ++ @903 /* Got any thoughts to share? */ + PID-2
 ++ @904 /* About your cooking... */ + PID-COOKING
 + ~OR(2)
 Global("C0MMinRomanceActive","GLOBAL",1)
 Global("C0MMinRomanceActive","GLOBAL",2)~ + @905 /* About us... */ + PID-ROMANCE
 ++ @906 /* Can I ask you a question? */ + PID-QUESTIONS
 ++ @907 /* I think there's a problem with your voice. */ + stringfix
 ++ @908 /* I need nothing at the moment. */ EXIT

CHAIN C0MMinJ PID-1-1A
@909 /* I'm hungry. Is it mealtime yet? Have we got any fish? I've a hankering for knucklehead trout right now. Mmm... */
EXIT
 
CHAIN C0MMinJ PID-1-1B
@910 /* Mmm... I'm feeling the urge to have a snowball fight. Or do some tree-climbing. Ooh, snowball fights while climbing treetops. That sounds fun! */
EXIT
 
CHAIN C0MMinJ PID-1-1C
@911 /* Can you take a look at how my hair looks from the back? I can't find my mirror. */
EXIT
 
CHAIN C0MMinJ PID-1-1D
@912 /* Do we have cakes? I'd like a cake. With icing and sprinkles. What? We don't have any? Hmph. */
EXIT
 
CHAIN C0MMinJ PID-1-2A
@913 /* I'll be fine. Just a little bit of ointment and everything's right as rain. */
EXIT
 
CHAIN C0MMinJ PID-1-2B
@914 /* No need to worry about me! I get worse cuts and bruises when sleepwalking. */
EXIT

CHAIN C0MMinJ PID-1-3
@915 /* Ow-ow-ow... look at all this blood, <PLAYER1>! Urgh, red just isn't a good color for me... */
EXIT 

CHAIN C0MMinJ PID-COOKING
@916 /* Mmm? What about it? */
END
+ ~Global("C0MMinRomanceActive","GLOBAL",2)~ + @917 /* If we settle down together someday, I'm doing the cooking, and that's final. */ + PID-COOKING-1
++ @918 /* It's horrible! Where did you get your skills? */ + PID-COOKING-1
++ @919 /* I am never, ever, ever eating anything you make again. */ + PID-COOKING-1
++ @920 /* If only you were as good at it as you are with inventing. */ + PID-COOKING-1
++ @921 /* It was great! I hope you'll surprise me with your next meal. */ + PID-COOKING-2
++ @922 /* On second thought, never mind... */ EXIT

CHAIN C0MMinJ PID-COOKING-1
@923 /* Well, isn't that just rude! I'll have you know that I'm entirely self-trained, and nobody has ever come with me with complaints more than once! */
END
++ @924 /* Probably because they've never eaten your food twice... or they've died. */ + PID-COOKING-3
++ @925 /* That... isn't exactly what I'd call a glowing endorsement. */ + PID-COOKING-3
++ @926 /* So that means people do complain. And frequently. */ + PID-COOKING-3
++ @927 /* Right, I'll, uh, take your word for it. */ EXIT

CHAIN C0MMinJ PID-COOKING-2
@928 /* You've got great taste! Just wait until I get the ingredients for my "Burning-Hot-and-Bitter Grub-and-Egg Stew". It'll blow your taste-buds! */
EXIT

CHAIN C0MMinJ PID-COOKING-3
@929 /* Hmph! */
EXIT

CHAIN C0MMinJ PID-2
@930 /* At the moment? Hmm... let me think... */
END
IF ~RandomNum(20,1)~ + PID-2-11
IF ~RandomNum(20,2)~ + PID-2-12
IF ~RandomNum(20,3)~ + PID-2-13
IF ~RandomNum(20,4)~ + PID-2-14
IF ~RandomNum(20,5)~ + PID-2-15
IF ~RandomNum(20,6)~ + PID-2-16
IF ~RandomNum(20,7)~ + PID-2-17
IF ~RandomNum(20,8)~ + PID-2-18
IF ~RandomNum(20,9)~ + PID-2-19
IF ~RandomNum(20,10)~ + PID-2-20
IF ~RandomNum(20,11)~ + PID-2-11
IF ~RandomNum(20,12)~ + PID-2-12
IF ~RandomNum(20,13)~ + PID-2-13
IF ~RandomNum(20,14)~ + PID-2-14
IF ~RandomNum(20,15)~ + PID-2-15
IF ~RandomNum(20,16)~ + PID-2-16
IF ~RandomNum(20,17)~ + PID-2-17
IF ~RandomNum(20,18)~ + PID-2-8
IF ~RandomNum(20,19)~ + PID-2-9
IF ~RandomNum(20,20)~ + PID-2-10
IF ~RandomNum(20,1) InParty("C0Karihi")~ + PID-2-KARIHI-1
IF ~RandomNum(20,2) InParty("C0Karihi")~ + PID-2-KARIHI-2
IF ~RandomNum(20,3) InParty("C0Karihi")~ + PID-2-KARIHI-3
IF ~RandomNum(20,4) InParty("C0Karihi") Alignment("C0Karihi",MASK_GOOD)~ + PID-2-KARIHI-4
IF ~RandomNum(20,5) InParty("C0Karihi") !Alignment("C0Karihi",MASK_GOOD)~ + PID-2-KARIHI-5
IF ~RandomNum(20,6) InParty("C0Urchin")~ + PID-2-URCHIN-1
IF ~RandomNum(20,7) InParty("C0Urchin")~ + PID-2-URCHIN-2
IF ~RandomNum(20,8) InParty("C0Urchin")~ + PID-2-URCHIN-3
IF ~RandomNum(20,9) InParty("C0Dusky")~ + PID-2-DUSKY-1
IF ~RandomNum(20,10) InParty("C0Dusky")~ + PID-2-DUSKY-2
IF ~RandomNum(20,11) PartyHasItem("HEARTGM")~ + PID-2-1
IF ~RandomNum(20,12)
	OR(22)
	AreaCheck("AR5000")
	AreaCheck("AR5001")
	AreaCheck("AR5002")
	AreaCheck("AR5003")
	AreaCheck("AR5004")
	AreaCheck("AR5101")
	AreaCheck("AR5102")
	AreaCheck("AR5103")
	AreaCheck("AR5104")
	AreaCheck("AR5201")
	AreaCheck("AR5202")
	AreaCheck("AR5203")
	AreaCheck("AR5204")
	AreaCheck("AR5301")
	AreaCheck("AR5302")
	AreaCheck("AR5303")
	AreaCheck("AR5304")
	AreaCheck("AR5401")
	AreaCheck("AR5402")
	AreaCheck("AR5403")
	AreaCheck("AR5404")
	AreaCheck("AR5502")~ + PID-2-2
IF ~RandomNum(20,13)
	OR(17)
	AreaCheck("AR2100")
	AreaCheck("AR2101")
	AreaCheck("AR2102")
	AreaCheck("AR2103")
	AreaCheck("AR2104")
	AreaCheck("AR2105")
	AreaCheck("AR2106")
	AreaCheck("AR2107")
	AreaCheck("AR2108")
	AreaCheck("AR2109")
	AreaCheck("AR2110")
	AreaCheck("AR2111")
	AreaCheck("AR2112")
	AreaCheck("AR2113")
	AreaCheck("AR2114")
	AreaCheck("AR2115")
	AreaCheck("AR2116")~ + PID-2-3
IF ~RandomNum(20,14)
	GlobalGT("Chapter","GLOBAL",4)~ + PID-2-4
IF ~RandomNum(20,15)
	OR(4)
	HasItemEquiped("dagg11",Myself)
	HasItemEquiped("dagg12",Myself)
	HasItemEquiped("lover",Myself)
	HasItemEquiped("l#ffda",Myself)~ + PID-2-5
IF ~RandomNum(20,16)
	Global("HOW_COMPLETED","GLOBAL",1)~ + PID-2-6
IF ~RandomNum(20,17)
	Global("Master_Quest","GLOBAL",7)~ + PID-2-7

CHAIN C0MMinJ PID-2-KARIHI-1
@931 /* I asked Karihi if she'd try fireproof dye if I could make some—she just glared at me. All I told her was that I wanted to see if I could make the flames on her hair glow in different colors! But I guess she doesn't allow that either. */
EXIT

CHAIN C0MMinJ PID-2-KARIHI-2
@932 /* You can't deny Karihi has good fashion sense. I guess if you're going to have to use magic to make your clothes fireproof, you'd pick only the best. Me? I'd tear a big hole in a dress like that within minutes. Or get dirt on it. She keeps scolding me over how dirty my clothes get. */
EXIT

CHAIN C0MMinJ PID-2-KARIHI-3
@933 /* Don't ever suggest to Karihi that she copies her spells from other sources. I made a tinsy winsy implication that she took the wrong way and... well, bye-bye my favorite pair of socks. *sigh* While I was wearing them, too! */
EXIT

CHAIN C0MMinJ PID-2-KARIHI-4
@934 /* Karihi's become a lot nicer recently, have you noticed? At least, I don't have to keep potions of fire resistance at hand whenever we debate magic versus science anymore. You know, just in case she gets mad and sets my hair on fire... again. */
EXIT

CHAIN C0MMinJ PID-2-KARIHI-5
@935 /* I wish I could roast marshmallows on Karihi's head sometimes, but she'd never allow it. Too bad her hair goes out when she's asleep, or I'd try it at night. If I had any marshmallows, that is. Which I don't. *sigh* */
EXIT

CHAIN C0MMinJ PID-2-URCHIN-1
@936 /* Urchin's the only one who'll eat my honey-glazed mushrooms. I keep telling everyone they're perfectly safe and healthy for you! But they won't try it. */
EXIT

CHAIN C0MMinJ PID-2-URCHIN-2
@937 /* I taught Urchin some new words today! He learns really quickly. I'll figure out how to get him to enunciate properly later. Maybe his teeth's the issue... if only I had some dental training, I could fix that. Oh well. */
EXIT

CHAIN C0MMinJ PID-2-URCHIN-3
@938 /* Mmm... I tried to have a snowball fight with Urchin the last time we made camp outdoors. I wouldn't recommend trying that unless you've got some thick padding. And a helmet. He's got quite an arm. I still have the bruises, see? */
EXIT

CHAIN C0MMinJ PID-2-DUSKY-1
@939 /* I feel like I've been trying to show off more ever since Dusky joined up with us. Trying to prove who's the better rogue and all. *whisper* It's me. */
EXIT

CHAIN C0MMinJ PID-2-DUSKY-2
@940 /* Dusky's pretty good at hiding for someone with such long legs. I wonder how he does it. I feel like I have duck feet when I try to hide. The best I can do is crawl in a barrel and try not to breathe. */
EXIT

CHAIN C0MMinJ PID-2-1
@941 /* I'm just thinking of the Heartstone Gem... do you think it's alive? Something about it just... makes me think it might me. */
EXIT

CHAIN C0MMinJ PID-2-2
@942 /* The Severed Hand is... well, it's beautiful, definitely. But it also makes me sad to think that something like this could have been so much greater once upon a time. */
EXIT

CHAIN C0MMinJ PID-2-3
@943 /* I like it here in Kuldahar. I'm afraid that if I stayed and enjoyed it here for too long though, I'd get too lazy to leave... haha... nah, that'll never happen. I get bored too quickly. */
EXIT

CHAIN C0MMinJ PID-2-4
@944 /* I hope my descendants go on adventures like these one day. People who stay in their homes don't know what they're missing. */
EXIT

CHAIN C0MMinJ PID-2-5
@945 /* It's nice to have a returning dagger for a change. I've gotten kind of tired of making my own knives from bits of scraps. I used to have a magical dagger like this, you know. I lost it after it got stuck in an ogre who then fell off a cliff. I guess the magic has a limited range. */
EXIT

CHAIN C0MMinJ PID-2-6
@946 /* I miss Lonelywood already. It was so much fun, wasn't it? Minus the part about almost being frozen to death several times. That I could do without. Or with, if it means more adventures like that one! */
EXIT

CHAIN C0MMinJ PID-2-7
@947 /* Getting transported to the Anauroch and back made me appreciate warm weather again. I was getting so used to the cold too! *brr* */
EXIT

CHAIN C0MMinJ PID-2-8
@948 /* Who do you think's behind all of this, <PLAYER1>? My bet? Outerplanar invaders. That's the only thing that seems logical to me. */
EXIT

CHAIN C0MMinJ PID-2-9
@949 /* I'm thinking of practicing with another weapon. The long sword's a little heavy, but I think I could manage it. Or a spear... if I could find one that wasn't twice as tall as me. Keep an eye out for me, would you? */
EXIT

CHAIN C0MMinJ PID-2-10
@950 /* I dunno. Sometimes I feel like I'm more useful at blowing things up in this journey. Thinking's more important when you don't have others around to do it for you. */
EXIT

CHAIN C0MMinJ PID-2-11
@951 /* Nothing right now. I'm too busy trying to solve the mysteries of the world. Mathematically. In my head. Ow, it hurts. I could use a honey cake. */
EXIT

CHAIN C0MMinJ PID-2-12
@952 /* I tried melting cheese over dried apples for supper yesterday. Oh, don't make that face—it's not bad! I just wish I had some spices to add to it. */
EXIT

CHAIN C0MMinJ PID-2-13
@953 /* Uh... you know that thing that happened last night? I didn't do it. */
END
++ @954 /* What thing? */ + PID-2-13-A
++ @955 /* Okay. */ EXIT
++ @956 /* So old socks end up in the cooking pot on their own somehow? */ + PID-2-13-B

CHAIN C0MMinJ PID-2-13-A
@957 /* You know, *that* thing... oh, you don't know? Eep. Pretend I didn't say anything. */
EXIT

CHAIN C0MMinJ PID-2-13-B
@958 /* That... wasn't the thing I was talking about. */
END
++ @959 /* What *were* you talking about? */ + PID-2-13-A
++ @960 /* Right. */ EXIT

CHAIN C0MMinJ PID-2-14
@961 /* You know what'd be nice? Pickled cabbage in maple syrup! No? Why not? */
EXIT

CHAIN C0MMinJ PID-2-15
@962 /* Hmm... to go for the kneecaps or the eyes? I'm not sure... which do you think's more effective, <PLAYER1>? */
EXIT

CHAIN C0MMinJ PID-2-16
@963 /* Ugh. Can't think right now, sorry. There's a hole in my boot. I can never think when there's a hole in my boot. */
EXIT

CHAIN C0MMinJ PID-2-17
@964 /* I think we'll make it! How? Don't ask. Just believe. Otherwise it won't work. */
EXIT

CHAIN C0MMinJ PID-2-18
@965 /* I'm not sure you need my advice, honestly. This feels like a straightforward journey to me. It could be way more complicated. We could've been dealing with conspiracies on the Sword Coast instead. */
EXIT

CHAIN C0MMinJ PID-2-19
@966 /* Still no platinum dragon. This journey still hasn't reached the apex of awesomeness yet. */
EXIT

CHAIN C0MMinJ PID-2-20
@967 /* Ahh, we'll be fine. I mean, things could always be worse than they are, right? Just imagine they'll get better instead! */
EXIT

CHAIN C0MMinJ stringfix
@968 /* Oh dear. I'll just hum a few bars and get things back to normal. 'La-la-la-la-la-la-laaaa...' */
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0MMinR")~ EXIT
	  
CHAIN C0MMinJ PID-ROMANCE
@969 /* Mm-hmm? */
END
// + ~Global("C0MMinRomanceActive","GLOBAL",1) Global("C0MMinRomPID1","GLOBAL",1)~ + ~Can I call you Mini?~ DO ~SetGlobal("C0MMinRomPID1","GLOBAL",1)~ + rpid.1
 + ~Global("C0MMinRomanceActive","GLOBAL",1)~ + @970 /* I wanted to say that I wish for us to remain friends. */ DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)~ + breakromance1
 + ~Global("C0MMinRomanceActive","GLOBAL",2)~ + @971 /* I want to end our relationship. */ DO ~SetGlobal("C0MMinRomanceActive","GLOBAL",3)~ + breakromance2
 ++ @972 /* Actually, there was nothing I wanted to say. */ EXIT
 /*
CHAIN C0MMinJ rpid.1
~Wha—no. No! I haven't been called that since I was... eep.~
END
++ ~Aw, and here I thought you'd like it.~ + rpid.1.1
++ ~You've been called that before?~ + rpid.1.2
++ ~Okay, forget I asked.~ + rpid.1.3

CHAIN C0MMinJ rpid.1.1
~I don't dislike it. But it's embarrassing! I used to be called that when I was even smaller than I am now!~
EXTERN C0MMinJ rpid.1.3

CHAIN C0MMinJ rpid.1.2
~A very, very long time ago. I was a silly young gnome back then. I thought I outgrew that nickname!~
EXTERN C0MMinJ rpid.1.3

CHAIN C0MMinJ rpid.1.3
~Well, I guess if it's you, I don't really mind that much... you can call me Mini if you like. But not in front of anyone else!~
EXIT
*/
CHAIN C0MMINJ breakromance1
@973 /* Okay. I don't mind having an awesome friend like you, <PLAYER1>! */
EXIT
 
CHAIN C0MMINJ breakromance2
@974 /* Oh. Well, that's... disappointing, I suppose. But I've dealt with this before. I'll manage. */
EXIT
 
CHAIN C0MMinJ PID-QUESTIONS
@975 /* Sure thing! Ask away... and, uh... feel free to stop me whenever you want. I've been told I tend to ramble. */
END
+ ~Global("C0MMinKnowsFamily","GLOBAL",1) Global("C0MMinPID1","GLOBAL",0)~ + @976 /* Do you ever miss your ex-husband and son? */ DO ~SetGlobal("C0MMinPID1","GLOBAL",1)~ + PID-Q-1
+ ~GlobalGT("Chapter","GLOBAL",5) Global("C0MMinPID2","GLOBAL",0)~ + @977 /* Where do you think you'll go for your next adventure? */ DO ~SetGlobal("C0MMinPID2","GLOBAL",1)~ + PID-Q-2
+ ~Global("C0MMinPID3","GLOBAL",0)~ + @978 /* Have you ever considered studying magic? */ DO ~SetGlobal("C0MMinPID3","GLOBAL",1)~ + PID-Q-3
+ ~Global("C0MMinPID4","GLOBAL",0)~ + @979 /* You're really good with knives. Where did you get your training? */ DO ~SetGlobal("C0MMinPID4","GLOBAL",1)~ + PID-Q-4
+ ~Global("C0MMinPID5","GLOBAL",0)~ + @980 /* Do you miss anything about your home? */ DO ~SetGlobal("C0MMinPID5","GLOBAL",1)~ + PID-Q-5
+ ~Global("C0MMinPID6","GLOBAL",0)~ + @981 /* What's with the blue hair, anyway? */ DO ~SetGlobal("C0MMinPID6","GLOBAL",1)~ + PID-Q-6
++ @982 /* What do you think of our companions? */ + PID-Q-COMPANIONS
++ @983 /* Actually, there's nothing I want to ask. */ EXIT

CHAIN C0MMinJ PID-Q-1
@984 /* Well... I dunno. Sometimes, yes. I have fond memories of the days when Arthur and I would go home together after spending the day at the workshop, sit at the table with mugs of tea and cakes... he'd stay downstairs while I went to put Kairos to sleep, tell him bedtime stories, then I'd go back down and we'd talk until morning... */
= @985 /* I feel sorry for not being able to be satisfied with that life. I know it's selfish. But we didn't separate unhappily. I still care about Arthur, even if we're not together anymore. And I'm hoping I'll be able to tell Kairos stories about myself one day. */
EXIT

CHAIN C0MMinJ PID-Q-2
@986 /* Oh, I can never decide. Usually, I just pick a direction and walk for as long as my legs can carry me. Isn't it more fun when you don't know where you're going? */
EXIT

CHAIN C0MMinJ PID-Q-3
@987 /* Maybe once or twice. I'm not that great at it, to be honest. Although I think people are a little too crazy over magic nowadays. */
EXIT

CHAIN C0MMinJ PID-Q-4
@988 /* I'm self-taught. I know, I know, it's hard to believe... I'm quite good, aren't I? Accuracy and precision are core in both artifice and knife-throwing. It's little surprise I have a knack for both. */
= @989 /* Not that I'm opposed to getting down and dirty in the middle of a fight once in a while. That's the beauty of fighting with daggers - you can hold your own in any situation. Much more versatile than a bow or sling. */
EXIT

CHAIN C0MMinJ PID-Q-5
@990 /* It's not like I don't miss home. I just like adventuring more. Although you can't find gooseberry jam or fish pies nearly as delicious out here compared to Lantan... mmm, food. Is it mealtime yet? */
EXIT

CHAIN C0MMinJ PID-Q-6
@991 /* Oh, it's just a thing we Glimmershines like to do. My natural hair would probably blind you on a sunny day. It used to be orange, then it was green. Even dyed it black during one of my, um, 'phases'. Painted my face with dark mascara and everything... yeesh, embarrassed just remembering it. */
= @992 /* Blue's my favorite color for the time being, though. Maybe I'll change it to something else eventually, but I like it the best. It's a peaceful, yet vibrant color at once. */
EXIT

CHAIN C0MMinJ PID-Q-COMPANIONS
@993 /* Ooh, I love a little bit of gossip. Which one do you want to hear about? */
END
+ ~InParty("L#DUSKY")~ + @994 /* Dendjelion. */ + PID-DENDJELION
+ ~InParty("L#DUSKY")~ + @995 /* Dusky. */ + PID-DUSKY
+ ~InParty("O#HOLVIR")~ + @996 /* Holvir. */ + PID-HOLVIR
+ ~InParty("L#INA")~ + @997 /* Ina. */ + PID-INA
+ ~InParty("C0KARIHI")~ + @998 /* Karihi. */ + PID-KARIHI
+ ~InParty("O#KORIN")~ + @999 /* Korin. */ + PID-KORIN
+ ~InParty("O#NELLA")~ + @1000 /* Nella. */ + PID-NELLA
+ ~InParty("L#OM")~ + @1001 /* Oak-Maw. */ + PID-OM
+ ~InParty("O#SEVERN")~ + @1002 /* Severn. */ + PID-SEVERN
+ ~InParty("O#TERI")~ + @1003 /* Teri. */ + PID-TERI
+ ~InParty("L#TIPPS")~ + @1004 /* Tipps. */ + PID-OM
+ ~InParty("L#URCHIN")~ + @1005 /* Urchin. */ + PID-URCHIN
++ @1006 /* Never mind. */ EXIT

CHAIN C0MMinJ PID-Q-COMPANIONS-2
@1007 /* Anyone else? */
END
+ ~InParty("L#DUSKY")~ + @994 /* Dendjelion. */ + PID-DENDJELION
+ ~InParty("L#DUSKY")~ + @995 /* Dusky. */ + PID-DUSKY
+ ~InParty("O#HOLVIR")~ + @996 /* Holvir. */ + PID-HOLVIR
+ ~InParty("L#INA")~ + @997 /* Ina. */ + PID-INA
+ ~InParty("C0KARIHI")~ + @998 /* Karihi. */ + PID-KARIHI
+ ~InParty("O#KORIN")~ + @999 /* Korin. */ + PID-KORIN
+ ~InParty("O#NELLA")~ + @1000 /* Nella. */ + PID-NELLA
+ ~InParty("L#OM")~ + @1001 /* Oak-Maw. */ + PID-OM
+ ~InParty("O#SEVERN")~ + @1002 /* Severn. */ + PID-SEVERN
+ ~InParty("O#TERI")~ + @1003 /* Teri. */ + PID-TERI
+ ~InParty("L#TIPPS")~ + @1004 /* Tipps. */ + PID-OM
+ ~InParty("L#URCHIN")~ + @1005 /* Urchin. */ + PID-URCHIN
++ @1006 /* Never mind. */ EXIT

CHAIN C0MMinJ PID-DENDJELION
@1008 /* I've been to Westgate before, you know. He's nowhere close to as bad as it gets there. I'm not sure whether that says more about him or where he came from. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-DUSKY
@1009 /* Oh, he's good. I've got the edge over him when it comes to tinkering, naturally, but I'll admit I'm not as good at sneaking about as he is. Don't tell him I said that, though. He'll gloat over it for days. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-HOLVIR
@1010 /* Waterdhavian knights are so... professional. Almost like actors, kinda. Does he ever let his guard down? Hey, tell me if he does, okay? */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-INA
@1011 /* She makes me wish there were more ghosts like her. More friendly ghosts, less creepy terrors of the night. Imagine how much nicer exploring crypts would be! */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-KARIHI
@1012 /* She's got quite a bit of a temper, doesn't she? I like her, though. She's read almost enough books to put me to shame on some subjects. Just be careful not to rile her up too much. She might explode. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-KORIN
@1013 /* He's nice enough, I guess. A bit too broody, though. Even for an elf. Wonder if he'd crack a smile if you tickled him? ...Me? Nah, I'm not risking it. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-NELLA
@1014 /* I thought some of the people I knew were sleepless workaholics. Aaaand then I met Nella. It's sort of inspiring actually. Makes me feel guilty to slack off when she works so hard to take care of everyone, so I end up working harder too. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-OM
@1015 /* I can get along with him. Bit of a pain having to bend my neck to look up whenever we talk, though. Especially when I end up looking into the sun most of the time when I do it. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-SEVERN
@1016 /* You're never a whole party without a bard around. After all, we need someone to tell our stories someday! And I'm an awful storyteller, personally. I tend to get drone on and on about other things that have nothing to with the story... or so I've been told. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-TERI
@1017 /* Teri's a lot of fun, but she'd never, ever, *ever* be allowed in Lantan, with the way her fingers wander. It's too bad. I think she's liven things up a lot at home. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-TIPPS
@1018 /* Do you think all people who get turned to stone end up so cranky after being turned back? I feel like he's still a little stiff in places. Oh... that came out wrong. */
EXTERN C0MMinJ PID-Q-COMPANIONS-2

CHAIN C0MMinJ PID-URCHIN
@1019 /* He kinda reminds me of a pet dog my sister used to have. Not the prettiest thing, but you can't help but want to pet him. Or maybe it's because of the drooling... what? You don't agree with me? */
EXTERN C0MMinJ PID-Q-COMPANIONS-2
