module TemirtulparHelper
  module View
    module ApplicationHelper
      def pretty_id(number)
        number.to_s.gsub(/.{3}(?=.)/, '\0-')
      end
    end
  end
end
