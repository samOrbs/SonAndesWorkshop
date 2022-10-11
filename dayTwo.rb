# coding: utf-8
# day two, lets explore sequencing rhythms and randomness!

live_loop :call_me_whatever do
  use_bpm :link # set to the link shared bpm
  rest = 1 # sets our rest to be one beat, you can rest as many times as you want, try exploring using multiple rests
  simpleRhythm = [0,rest*0.125,rest*0.25,rest*0.5]  # we use rest, and divide it by half, quater, and eigth
  randomRhythm = (ring rest*0.125,rest*0.25,rest*0.5).choose # try adding this to the time_warp
  emptyRhythm = [0]
  time_warp simpleRhythm do
    #   time_warp [0,randomRhythm] do # we can use time warp to shedule sound to be played in the future
    #    use_random_seed 6 # can be any number, forces randomness to be deterministic
    synth :bass_foundation,note:(scale :c3,:aeolian).pick(1) if(spread 1,8).tick(:c)
    synth :kalimba,note:(scale :c5,:aeolian).pick(1), amp:4 if(spread 3,8).tick(:d)
    sample :drum_cymbal_closed, amp:(knit 3,3,1,1).tick(:a) if(spread 5,4).tick(:b)
  end
  #  end
  sleep rest # lets tell the thread to sleep for one beat
end

#E (2, 3) = [x. x] is a common Afro-Cuban percussion figure. For example, it is found in the conga rhythm in Swing Tumbao (6/8) [18]. It is also common in Latin American music, such as in Cueca [33].
#E (2, 5) = [xx.] Is the thirteenth century Persian rhythm, which is called Khafif-e-ramal [34]. This is also a metric drawing of the second part of Tchaikovsky's Symphony No. 6 [17]. When it starts with a second accent ([x .. x.]), It’s the metric figure from Dave Brubeck’s Take Five , as well as from Mars in Gustav Holst’s Planets [17].
#E (3, 4) = [x. xx] is the archetypical pulsation of Cumbia from Colombia [20], as well as the rhythm of Calypso from Trinidad [13]. This is also the thirteenth century Persian rhythm called Khalif-e-saghil [34], and the trochoid choreic rhythmic pattern from ancient Greece [21].
#E (3, 5) = [xx x], when it starts on the second accentuated beat, is another Persian rhythm of the thirteenth century, called Khafif-e-ramal [34], as well as the rhythm of the Romanian folk dance [25].
#E (3, 7) = [xxx.] Is the Ruchenitza rhythm used in the Bulgarian folk dance [24]. This is also a metric drawing in Money Pink Floyd.
#E (3, 8) = [x .. x .. x.] Is the Cuban tresillo pattern, which we discussed above [15].
#E (4, 7) = [xxx x] is another version of the rhythm of the Bulgarian folk dance Ruchenitza [24].
#E (4, 9) = [xxxx.] Is the Turkish rhythm Aksak [6]. This is also the metric drawing used by Dave Brubeck in the play Rondo a la Turk [17].
#E (4, 11) = [x .. x .. x .. x.] Is the metric figure used by Frank Zappa in his play entitled Outsid e Now [17].
#E (5, 6) = [x. xxxx] gives the York-Samai pattern , a popular Arabic rhythm, when it starts on the second accentuated beat [30].
#E (5, 7) = [x. x x. xx] is a Nawakhat drawing, another popular Arabic rhythm [30].
#E (5, 8) = [x. x x. xx.] is the Cuban rhythm cinquillo discussed above [15]. When it begins with a second accent, it is also Spanish tango [13] and the thirteenth century Persian rhythm Al-saghilal-sani [34].
#E (5,9) = [xxxx x] is the popular Arabic rhythm Agsag-Samai [30]. When it starts at the second accent, it is the drum pattern used by Venda in South Africa [26], as well as the Romanian folk dance rhythm [25].
#E (5,11) = [xxxxx.] Is a metric drawing used by Mussorgsky in Pictures at an Exhibition [17].
#E (5,12) = [x .. xx. x. x.] is a Venda clap from a South African children's song [24].
#E (5,16) = [x .. x .. x .. x .. x ....] Is the rhythmic necklace of the Brazilian boss nova . Usually the boss-new rhythm begins on the third accentuated beat as follows: [x .. x .. x ... x .. x. .] [31]. However, there are other starting points, such as [x .. x .. x .. x ... x. .] [3].
#E (7,8) = [x. xxxxxx] is a typical rhythm played on the Bendir (frame drum) and used as an accompaniment to Tuareg songs in Libya [30].
#E (7,12) = [x. x xx x x. x.] is a common West African bell pattern. For example, it is used in the Mpr e rhythm at Ashanti in Ghana [32].
#E (7,16) = [x .. xxx. xx x.] is a rhythmic samba necklace from Brazil. Samba rhythm [xx. xxx. x. x.] is obtained by starting E (7.16) on the last beat. When E (7.16) begins on the fifth accented lobe, this is the pattern of the claps from Ghana [24].
#E (9,16) = [x. x xxx x xx x.] is a necklace of rhythms from the Central African Republic [2]. When it starts on the fourth beat, it is the rhythm played in West and Central Africa [15], as well as the Kau-bell drawing in a Brazilian samba [29]. When it starts on the penultimate beat, this is a bell drawing from the rhythms of Ngbaka-Maibo in the Central African Republic [2].
#E (11,24) = [x .. xxxxx. xxxx x.] is a necklace of aka pygmy rhythms from Central Africa [2]. It usually begins on the seventh lobe.
#E (13,24) = [x. x xxxxx x xxxx x.] This is another necklace of aka Pygmy rhythms from Upper Sang [2]. It usually starts on the fourth beat.

# sample :drum_bass_hard if p1 "xooo"
# sample :drum_bass_hard if p2 "xooo"
# sample :ambi_piano if p3 "xooo"
# sample :bass_thick_c if p4 "ooxo"
# sample :ambi_lunar_land if p5"ooooxooo"
# sample :bass_woodsy_c if p6 "ooooxoooo"
# sample :bass_voxy_hit_c if p7 "ooox"

#-- a pattern definition...dont worry to much about this
define :p1 do |p1|
  return p1.ring.tick(:p1) == "x"
end
define :p2 do |p2|
  return p2.ring.tick(:p2) == "x"
end
define :p3 do |p3|
  return p3.ring.tick(:p3) == "x"
end
define :p4 do |p4|
  return p4.ring.tick(:p4) == "x"
end
define :p5 do |p5|
  return p5.ring.tick(:p5) == "x"
end
define :p6 do |p6|
  return p6.ring.tick(:p6) == "x"
end
define :p7 do |p7|
  return p7.ring.tick(:p7) == "x"
end


