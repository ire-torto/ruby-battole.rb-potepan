
def janken
    puts "                                            "
    puts "①　じゃんけん..."
    puts "0(グー)　1(チョキ)　2(パー)　3(戦わない)"
    $array =['グー','チョキ','パー','戦わない']
    $own_hand = gets.to_i
    $cp_hand = rand(0..2)
    
    puts "ホイ！！"
    puts "------------------"
    puts "あなたは:#{$array[$own_hand]}"
    puts "相手は:#{$array[$cp_hand]}"
    puts "------------------"
    
    if $own_hand > 2 
        puts "無効試合です"
        exit
    end
    
    $result = $own_hand - $cp_hand
    
    if $result == 0 
        puts "あいこ  で・・・・・・"
        return janken
    elsif  $result == -1 || $result == 2
        puts "じゃんけんは  勝ち  です"
        return acchimuite
    elsif $result == 1 || $result == -2
        puts "じゃんけんは  負け  です"
        return acchimuite
    end
end

def acchimuite
    puts "                                    "
    puts "②　あっち向いて〜"
    puts "0(上)　1(下)　2(左)　3(右)"
    $array =['上','下','左','右']
    $own_face = gets.to_i
    $cp_face = rand(0..3)
    
    puts "ホイ！！"
    puts "------------------"
    puts "あなたは:#{$array[$own_face]}"
    puts "相手は:#{$array[$cp_face]}"
    puts "------------------"
    
    if $own_face != $cp_face 
        puts "じゃんけんのやり直しです"
        return janken
    else  
        return false
    end
end


fight1 = true
while fight1
    fight1 = janken
end


if $result == -1 || $result == 2
    puts "揃いました。勝負の結果は・・・・"
    puts "勝ちです"
else
    puts "揃いました。勝負の結果は・・・・"
    puts "負けです"
end
