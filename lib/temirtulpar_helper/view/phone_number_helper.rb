module TemirtulparHelper
  module View
    module PhoneNumberHelper
      def sanitize_params_phone_number(phone_number)
        return unless phone_number.present?
        phone_number.gsub('(+996)', '').gsub(' ', '')
      end

      def sanitize_db_phone_number(phone_number)
        return unless phone_number.present?
        "+996#{phone_number}"
      end

      def display_db_phone_number(phone_number)
        return unless phone_number.present?
        "(+996) #{phone_number[0...3]} #{phone_number[3..-1]}"
      end
    end
  end
end
