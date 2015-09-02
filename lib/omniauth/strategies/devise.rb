module OmniAuth
  module Strategies
    class Devise
      include OmniAuth::Strategy

      option :fields, [:name, :email]

      def callback_phase
        return fail!(:invalid_credentials) unless devise_model
        super
      end

      uid  { devise_model.uid }
      info { devise_model.info }

      def devise_model
        @devise_model ||= from_warden || from_db
      end

      def model
        options[:model] || ::EmailId
      end

    private
      def from_warden
        warden = request.env['warden']
        warden.authenticate
        # false : should Iuse this or not ? pending.....
      end

      def from_db
        resource = model.
          find_for_database_authentication(request["session"].slice("email"))
        resource if resource.valid_password?(request["session"]["password"])
      end
    end
  end
end
