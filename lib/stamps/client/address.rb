module Stamps
  class Client
    module Address

      # Authorizes the User and returns authenticator token
      #
      def clean_address(params = {})
        params[:authenticator] = authenticator_token

        if Stamps::Mapping::CleanseAddress.respond_to? :order
          params = get_ordered_params(params, Stamps::Mapping::CleanseAddress.order)
        end

        response = request(:CleanseAddress, Stamps::Mapping::CleanseAddress.new(params))
        response[:errors].empty? ? response[:cleanse_address_response] : response
      end
    end
  end
end

