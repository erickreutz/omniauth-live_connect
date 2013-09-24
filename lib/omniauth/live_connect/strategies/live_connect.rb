require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class LiveConnect < OmniAuth::Strategies::OAuth2

      option :name,   "live_connect"
      option :client_options, { site:           'https://login.live.com',
                                authorize_url:  '/oauth20_authorize.srf',
                                token_url:      '/oauth20_token.srf'}


      uid{ raw_info['id'] }

      info { raw_info }

      private
        def raw_info
          @raw_info ||= access_token.get('https://apis.live.net/v5.0/me').parsed
        end

    end
  end
end
