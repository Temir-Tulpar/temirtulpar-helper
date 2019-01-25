module TemirtulparHelper
  module Controllers
    module SanitizeHelper
      def sanitize_params_phone_number(phone_number)
        return unless phone_number.present?
        phone_number.gsub('(+996)', '').gsub(' ', '')
      end

      def sanitize_db_phone_number(phone_number)
        return unless phone_number.present?
        "+996#{phone_number}"
      end
    end
  end
end
