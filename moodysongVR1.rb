# Welcome to Sonic Pi v2.10


live_loop :sumbeats do
  sample :ambi_choir
  with_fx :echo, phase: 0.125, mix: 0.4 do
    sample :drum_cymbal_soft, sustain: 0, release: 0.1
    sleep 0.5
  end#2nd do
end#1st do

live_loop :sumbass do
  use_synth :chipbass
  synth :chipbass, note: :e1, release: 4, cutoff: 120,
    cutoff_attack: 1
  sleep 4
end

##| live_loop :timbre do
##|   use_synth (ring :tb303, :blade, :prophet, :saw, :beep, :tri).tick
##|   play :e2, attack: 0, release: 0.5, cutoff: 100
##|   sleep 0.5
##| end  TOO peppy

live_loop :sumriff do
  use_synth :pnoise
  riff = (ring :e3, :e3, :r, :g3, :r, :r, :r, :a3)
  play riff.tick, release: 0.5, cutoff: 80
  sleep 0.25
end

