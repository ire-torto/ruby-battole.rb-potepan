
def janken
    puts "==========================================="
    puts "じゃんけん..."
    puts "0(グー)　1(チョキ)　2(パー)　3(戦わない)"
    own_hand_array =['グー','チョキ','パー','戦わない']
    cp_hand_array =['グー','チョキ','パー','戦わない']
    own_hand = gets.to_i
    cp_hand = rand(0..3)
    
    puts "ホイ！！"
    puts "------------------"
    puts "あなたは:#{own_hand_array[own_hand]}"
    puts "相手は:#{cp_hand_array[cp_hand]}"
    puts "------------------"
    
    if own_hand >2 || cp_hand>2
        puts "無効試合です"
        puts"ジャンケンに戻る"
        return janken
    end
    
    result = own_hand - cp_hand
    
    if result == 0
        puts "あいこ  で・・・・・・"
        return janken
    elsif result == -1 || result == 2
        puts "じゃんけんは  勝ち  です"
        return false
    else result == 1 || result == -2
        puts "じゃんけんは  負け  です"
        return false
    end
end

def acchimuite
    puts "==========================================="
    puts "あっち向いて〜"
    puts "0(上)　1(下)　2(左)　3(右)"
    own_face_array =['上','下','左','右']
    cp_face_array =['上','下','左','右']
    own_face = gets.to_i
    cp_face = rand(0..3)
    
    puts "ホイ！！"
    puts "------------------"
    puts "あなたは:#{own_face_array[own_face]}"
    puts "相手は:#{cp_face_array[cp_face]}"
    puts "------------------"
    
    if own_face != cp_face 
        puts "じゃんけんのやり直しです"
        return janken
    elsif  own_face = cp_face 
        puts "揃いました。勝負の結果は・・・・"
        return true
    end
end

result = 0

fight1 = true
while fight1
    fight1 = janken
end

fight2 = false
until fight2
    fight2 = acchimuite
end

if result == -1 && fight2 == false 
    puts "勝ちです"
elsif result == 2 && fight2 == false 
    puts "勝ちです"
elsif result == 1 && fight2 ==false
    puts "負けです"
else result == -2 && fight2 ==false
    puts "負けです"
end
