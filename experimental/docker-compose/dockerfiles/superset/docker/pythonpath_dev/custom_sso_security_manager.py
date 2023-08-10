import os
import logging

from superset.security import SupersetSecurityManager

class CustomSsoSecurityManager(SupersetSecurityManager):

    def oauth_user_info(self, provider, response=None):
        logging.debug("OAuth2 provider: {0}".format(provider))
        if provider == 'AAC':
            # GET with Bearer authentication, expects authorization server to check the token and respond with user details
            user = self.appbuilder.sm.oauth_remotes[provider].get(os.environ['AAC_INSTANCE'] + os.environ['AAC_USERINFO_ENDPOINT']).json()
            # logging.debug("User: {0}".format(user))
            return {
                'name' : user['preferred_username'],
                'email' : user['email'],
                'id' : user['sub'],
                'username' : user['preferred_username'],
                'first_name' : user['given_name'],
                'last_name' : user['family_name'],
                'role_keys' : user['roles']
            }