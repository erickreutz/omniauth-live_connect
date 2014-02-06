require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class LiveConnect < OmniAuth::Strategies::OAuth2

      DEFAULT_SCOPE = 'wl.signin'

      option :name,   "live_connect"
      option :client_options, { site:           'https://login.live.com',
                                authorize_url:  '/oauth20_authorize.srf',
                                token_url:      '/oauth20_token.srf'}


      uid{ raw_info['id'] }

      info { raw_info }

      ##
      # You can pass +state+, +scope+ params to the auth request, if
      # you need to set them dynamically. 
      #
      # /auth/live_connect?scope=wl.skydrive_update,wl.offline_access&state=ABC
      #
      def authorize_params
        super.tap do |params|
          %w[state scope].each do |v|
            if request.params[v]
              params[v.to_sym] = request.params[v]

              # to support omniauth-oauth2's auto csrf protection
              session['omniauth.state'] = params[:state] if v == 'state'
            end
          end

          params[:scope] ||= DEFAULT_SCOPE
        end
      end

      private
        def raw_info
          @raw_info ||= access_token.get('https://apis.live.net/v5.0/me').parsed
        end

    end
  end
end
