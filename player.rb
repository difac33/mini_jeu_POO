require "pry" 

class Player 

    attr_accessor :name, :life_points

    def initialize(name,life_points=10)

        @name = name

        @life_points = life_points
    end


        def show_state

        
        

                 puts "#{@name} a #{@life_points} points de vie"

        end



        def gets_damage(number)

            @life_points = @life_points - number


            if life_points <= 0 

                puts "#{@name} a été tué"

            end
        end

        def attacks(player2)

            
            
            force_attacks = compute_damage

            gets_damage(force_attacks)

            puts "#{(@name)} attaque #{(player2)}"

            puts "#{(@name)} lui inflige 5 points de dommages"


        end

        def compute_damage

        return rand(1..6)

        end


end




 

