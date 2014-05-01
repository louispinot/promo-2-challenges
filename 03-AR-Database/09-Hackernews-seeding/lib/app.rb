require_relative 'interface'
require_relative 'models/user'

p User.find(1).to_s

interface = UI.new
interface.dashboard