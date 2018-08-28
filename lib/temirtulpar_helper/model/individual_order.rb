module TemirtulparHelper
  module Model
    module IndividualOrder
      STATUSES = %i[pending_payment in_progress completed canceled delivered].freeze
      DELIVERY_METHODS = [:delivery, :pick_up].freeze
      PAYMENT = [:cash, :bank_card].freeze
      PERSON_TYPE = [:individual, :legal].freeze

      # def self.included base
      #   base.send :include, InstanceMethods
      #   base.extend ClassMethods
      # end

      # module InstanceMethods
      #   def method_name
      #   end
      # end

      # module ClassMethods
      #   def method_name
      #   end
      # end
    end
  end
end
