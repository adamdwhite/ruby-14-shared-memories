require 'YAML'
class Margaret

        #variable which loads the yaml 
        margFile = YAML.load_file('data.yaml')
        def initialize(msg=margFile)
            p @msg = msg
        end
    
        def add_msg(msg)
            @msg[:messages][:Mary] << msg
            f4 = File.open("data.yaml",'w+')
            f4.puts YAML::dump(@msg)
            f4.close
            @msg
        end
    end
    
    @first = ARGV[0]
    mary = Mary.new
    p mary.add_msg(@first)
    