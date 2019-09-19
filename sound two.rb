live_loop :guit do
  with_fx :echo, mix: 0.5, phase: 0.9 do
    sample :guit_em9, rate: 0.2
  end
  sample :guit_em9, rate: 0.8
  sample :guit_em9, rate: -0.4
  sleep 8
end

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 20, rate: 0.5
  end
  sleep 2
end