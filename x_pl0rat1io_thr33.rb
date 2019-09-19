# generic live file ambient

use_synth :hollow
with_fx :reverb, mix: 0.7 do
  
  live_loop :low do
    sample :ambi_dark_woosh
    play 42
    sleep 7
  end
  
  live_loop :deep do
    play choose([:b3,:c3]), attack: 6, release: 8
    sleep 4
  end
  
  live_loop :synth1 do
    play choose([:b4,:c4]), attack: 6, release: 6
    sleep 8
  end
  
  live_loop :synth2 do
    play choose([:b3,:c3]), attack: 6, release: 6
    sleep 4
  end
  
  live_loop :synth3 do
    play choose([:A3, :Cs4]), attack: 5, release: 5
    sleep 11
  end
  
  live_loop :beats do
    sample :ambi_choir, beat_stretch: 8, attack: 5, release: 6
    sleep 9
  end
  
  live_loop :boom do
    with_fx :reverb, room: 1 do
      sample :bd_boom, amp: 20, rate: 0.5
    end
    sleep 8
  end
  
  live_loop :chime do
    with_fx :echo, phase: 0.125 do
      play 50
      sleep 5
      sample :elec_plip
      sleep 4
      play 62
    end
  end
  
end
