
class Player
  def hand
    puts "Veuillez entrer un numéro."
    puts "0 : Pierre, 1 : Ciseaux, 2 : Papier"

    ans=gets.to_i
    ans
  end
end


class Enemy
  def hand
    ans_rand= rand(0..2)
    ans_rand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Pierre", "Ciseaux", "Papier"]

    formula= (player_hand-enemy_hand+3)%3

    if formula==2
      puts "Le coup de l'adversaire est: #{janken[enemy_hand]}. Waoh! Vous avez gagné!"
    elsif formula==1
      puts "Le coup de l'adversaire est: #{janken[enemy_hand]}. Oups! Vous avez perdu!"
    elsif formula==0
      puts "Le coup de l'adversaire est: #{janken[enemy_hand]}. Il y a égalité."
      Action.jankenpon
    end  
  end
end

class Action
  
  def self.jankenpon
   
    player = Player.new
  
    enemy = Enemy.new
    
    janken = Janken.new
    player_hand=player.hand
    

    if player_hand!=0 && player_hand!=1 && player_hand!= 2

      puts "Erreur!! Entrez une valeur entre 0, 1 et 2"
      Action.jankenpon
    else 
        next_game = janken.pon(player_hand, enemy.hand)
    end

  end
end

Action.jankenpon