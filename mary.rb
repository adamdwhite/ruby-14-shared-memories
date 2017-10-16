require 'yaml'
class Mary

    #variable which loads the yaml 
    maryFile = YAML.load_file('msgs.yaml')
	def initialize(msg=maryFile)
		p @msg = msg
	end

	def add_msg(msg)
		@msg[:messages][:Margaret] << msg
		f4 = File.open("data.yaml",'w+')
		f4.puts YAML::dump(@msg)
		f4.close
		@msg
	end
end

@first = ARGV[0]
margaret = Margaret.new
p margaret.add_msg(@first)