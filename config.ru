require_relative 'config/environment'
require_relative 'app/application.rb'
require_relative 'app/controllers/erbmaker.rb'
require_relative 'app/controllers/randomnumber.rb'
require_relative 'app/controllers/requestmethod.rb'
require_relative 'app/controllers/serverport.rb'

use ErbMaker
use RandomNumber
use RequestMethod
use ServerPort
run Application.new
