Dir[File.join(__dir__, 'temirtulpar_helper','**', '*.rb')].each { |file| require file }

module TemirtulparHelper
  include TemirtulparHelper::View::ApplicationHelper
end
