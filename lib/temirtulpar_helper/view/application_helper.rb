module TemirtulparHelper
  module View
    module ApplicationHelper
      def pretty_id(number)
        number.to_s.gsub(/.{3}(?=.)/, '\0-')
      end

      def humanize_order_status(status)
        case status
        when 'pending_payment'
          'Ожидает оплаты'
        when 'paid'
          'Оплачен'
        when 'in_progress'
          'В производстве'
        when 'finished'
          'Завершен'
        when 'canceled'
          'Отменен'
        end
      end
    end
  end
end
