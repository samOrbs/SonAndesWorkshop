# Welcome to SONIC PI!
# Everything with a # symbol in front of it will not be recognized by the computer...
# these are called comments.. :)

# The first thing we will explore is whats called a live loop
live_loop :call_me_anything do
  # notice the indentiation? thats becuase we are now inside a live loop.
  # anyting within the do and end signs will be sent,
  # as a thread to the computer with the name "call_me_anything"
  # try changing the name to something else.. notice , you can call it anything  # this is because computer memory is like a room with many post boxes,
  # with names, like us, we have made up names,
  # we are in this way similar to computer memory :)
  use_bpm :link # please press the button on the bottom right that says link
  # we should now be linked to the bpm of all links on the system over wifi...
  # lets play a sound
  sample :drum_cymbal_closed if p1 "xoxx" # notice we can change the pattern
  # sample :drum_bass_hard if p2 "xooo"
  # sample :ambi_piano if p3 "xooo"
  # sample :bass_thick_c if p4 "ooxo"
  # sample :ambi_lunar_land if p5"ooooxooo"
  # sample :bass_woodsy_c if p6 "ooooxoooo"
  # sample :bass_voxy_hit_c if p7 "ooox"
  
  sleep 1 # lets tell the thread to sleep for one beat
end











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
