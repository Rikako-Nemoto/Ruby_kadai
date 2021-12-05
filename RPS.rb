 puts "じゃんけん・・・・"
 
 def janken
  puts "0(グー)1（チョキ）2(パー)3（戦わない）"
  
  player_hand = gets.to_i
  program_hand = rand(3)

if player_hand == 3
 puts  "終わり" 
 return false
end
  
 puts "ホイ！"
 separator = "------------------------"
 
 puts separator
 jankens = ["グー", "チョキ","パー"]
 puts "あなたの手:#{jankens[player_hand]}"
 puts "相手の手:#{jankens[program_hand]}"
 puts separator
 
 
 def achiho
 puts "あっち向いて〜"
 puts "0(上)1（下）2(右)3（左）"
 
 directions = ["上", "下","右","左"]
 
  player_direction = gets.to_i
  program_direction = rand(3)
 
 puts "ホイ！"
 separator = "------------------------"
 puts separator
 puts "あなた:#{directions[player_direction]}"
 puts "相手:#{directions[program_direction]}" 
 puts separator
 end
  
  if player_hand == program_hand
    puts "あいこで"
    return true
  
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)||(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)||(player_hand == 0 && program_hand == 2)
    achiho
    puts "じゃんけん・・・"
    return true
  end
 end

next_game = true

while next_game
  next_game = janken
end