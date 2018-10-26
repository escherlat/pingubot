module Bot
  module Fish
    module Shenanigans
      extend Discordrb::Commands::CommandContainer
      puts 'Shenanigans loaded'

      command :koethe do |event|
        "Random Koethe song " << ["https://www.youtube.com/watch?v=rhvZxmgLfNA","https://www.youtube.com/watch?v=IcJP7V_3Fdc","https://www.youtube.com/watch?v=KRpy1JKZ4wY","https://www.youtube.com/watch?v=DE0IVM7T3ic","https://www.youtube.com/watch?v=rW4eVMb_Sls","https://www.youtube.com/watch?v=z1NOTgl-4yI","https://www.youtube.com/watch?v=R4uo83J5CTA","https://www.youtube.com/watch?v=2KdN6_1bK1M","https://www.youtube.com/watch?v=2MPB7cu9W_c","https://www.youtube.com/watch?v=apr60Dh0BXE","https://www.youtube.com/watch?v=rTrlQogUwtg","https://www.youtube.com/watch?v=ynLDKMAcDPo","https://www.youtube.com/watch?v=b4EEi4R8yHY","https://www.youtube.com/watch?v=3HZY1uA_hes","https://www.youtube.com/watch?v=5mYBnowe4OY","https://www.youtube.com/watch?v=Z5SvnsLMH2o","https://www.youtube.com/watch?v=mqv1NEWG0G4","https://www.youtube.com/watch?v=mzdSepr9xKA"].sample
      end

      command :antisin do |event|
        unless event.message.mentions.blank?
          "Chloe has a message for you, <@#{event.message.mentions.first.id}>: http://i.imgur.com/ABlyXTG.jpg"
        else
          "Chloe has a message for you: http://i.imgur.com/ABlyXTG.jpg"
        end
      end

      command :sin do |event|
        unless event.message.mentions.blank?
          "Kate has a message for you, <@#{event.message.mentions.first.id}>: http://i.imgur.com/M6tLQ3Q.jpg"
        else
          "Kate has a message for you: http://i.imgur.com/M6tLQ3Q.jpg"
        end
      end

      command :friends do |event|
        "We're all friends here and while we may not agree with your opinions on everything we want you to know you are welcome to hang out and talk."
      end

      command :nohate do |event|
        "We might not agree with you, but we don't hate you personally."
      end

      command :reminder do |event|
        "Please keep your discussion civil! Remember: we all may have different opinions on the discussion but that does not mean that you should start to disrespect other opinions than your own."
      end

      command :welcome do |event|
        unless event.message.mentions.blank?
          "Hella welcome to <@#{event.message.mentions.first.id}>! Your personal welcome gift: https://i.imgur.com/iGK9uxn.png"
        else
          "Hella welcome! Your personal welcome gift: https://i.imgur.com/iGK9uxn.png"
        end
      end

      command :welcome2 do |event|
        unless event.message.mentions.blank?
          "Hella welcome to <@#{event.message.mentions.first.id}>! Your personal welcome gift: http://40.media.tumblr.com/ff07d79fecdd13b407e1dd1f5186476a/tumblr_o1sc8cP3wU1sj5rhfo1_r1_1280.jpg"
        else
          "Hella welcome! Your personal welcome gift: http://40.media.tumblr.com/ff07d79fecdd13b407e1dd1f5186476a/tumblr_o1sc8cP3wU1sj5rhfo1_r1_1280.jpg"
        end
      end

      command :baecome do |event|
        unless event.message.mentions.blank?
          "Hella welcome to <@#{event.message.mentions.first.id}>! Your personal baecome gift: http://i.imgur.com/PqnIQgt.png"
        else
          "Hella welcome! Your personal baecome gift: http://i.imgur.com/PqnIQgt.png"
        end
      end

      command :baycome do |event|
        unless event.message.mentions.blank?
          "Hella welcome to <@#{event.message.mentions.first.id}>! Your personal baycome gift: http://dandelion-s.deviantart.com/art/Life-is-Strange-568865002"
        else
          "Hella welcome! Your personal baycome gift: http://dandelion-s.deviantart.com/art/Life-is-Strange-568865002"
        end
      end

      command :soap,  description: "Hands you a or someone you mention a handy piece of pricefield soap" do |event|
        unless event.message.mentions.blank?
          "*hands <@#{event.message.mentions.first.id}> a piece of pricefield soap*"
        else
          "*hands <@#{event.user.id}> a piece of pricefield soap*"
        end
      end

      command :endings do |event|
        "When we talk about bae/bay we mean the choice at the end of the game. Bae means keeping Chloe, bay means sacrificing Chloe."
      end

      command :BAE, help_available: false do |event|
        "```\n"+" ______         _______             ______       _     _\n"+"(____  \\   /\\  (_______)   _  _    (____  \\   /\\| |   | |\n"+" ____)  ) /  \\  _____     ( \\( \\    ____)  ) /  \\ |___| |\n"+"|  __  ( / /\\ \\|  ___)     ) )) )  |  __  ( / /\\ \\_____/\n"+"| |__)  ) |__| | |_____   (_/(_/   | |__)  ) |__| |___\n"+"|______/|______|_______)           |______/|______(___)\n"+"                                                         ```"
      end

      command :cookie do |event|
        unless event.message.mentions.blank?
          "*gives <@#{event.message.mentions.first.id}> a pricefield cookie* :cookie:"
        else
          "*gives <@#{event.user.id}> a pricefield cookie* :cookie:"
        end
      end

      command :plisd do |event|
        "PLiSD - **P**ost **L**ife **i**s **S**trange **D**epression"
      end

      command :well do |event|
        unless event.message.mentions.blank?
          "Chloe has a question for you, <@#{event.message.mentions.first.id}>: http://i.imgur.com/OhoHDgu.jpg"
        else
          "Chloe has a question for you: http://i.imgur.com/OhoHDgu.jpg"
        end
      end

      command :consequences do |event|
        "🦋 this action will have consequences"
      end
    end
  end
end
