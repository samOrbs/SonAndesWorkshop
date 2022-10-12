live_loop :chord do
  rest = 1
  ace = [0,rest*0.125,rest*0.25]
  ace2 = [0,rest*0.125,rest*0.75]
  rhy = (knit ace,3, ace2,1).tick(:mt)
  time_warp rhy do
    x = 1 if(spread 2,4).tick(:oned)
    if x == 1
      synth :mod_fm, note:(chord_degree (knit 1,2,2,2).tick(:kn),:a4,:harmonic_minor,3).tick(:hm)
    else
      synth :mod_fm, note:(chord_degree (knit 1,2,2,2).tick(:kn),:a4,:harmonic_minor,3).reverse.tick(:hm)
    end
 end
  sleep rest
end
