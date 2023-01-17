import os

from flask_appbuilder.security.manager import AUTH_OAUTH
from custom_sso_security_manager import CustomSsoSecurityManager

# Check if authentication is set to OAuth
oauth_enabled = os.environ['SUPERSET_ENABLE_OAUTH'].lower()
if oauth_enabled in ['true', 'on', 'yes', '1', 'enabled', 'enable']:
    CUSTOM_SECURITY_MANAGER = CustomSsoSecurityManager

    AUTH_TYPE = AUTH_OAUTH

    OAUTH_PROVIDERS = [
        {   
            'name':'AAC',
            'token_key':'access_token', # Name of the token in the response of access_token_url
            # 'icon':'fa-key',   # Icon for the provider
            'remote_app': {
                'client_id':os.environ['SUPERSET_CLIENT_ID'],
                'client_secret':os.environ['SUPERSET_CLIENT_SECRET'],
                'server_metadata_url': os.environ['AAC_INSTANCE'] + os.environ['AAC_OPENID_CONFIGURATION_ENDPOINT']
            }
        }
    ]

    # Will allow user self registration, allowing to create Flask users from Authorized User
    AUTH_USER_REGISTRATION = True

    # The default user self registration role
    AUTH_USER_REGISTRATION_ROLE = 'Public'

    # Sync roles at every login
    AUTH_ROLES_SYNC_AT_LOGIN = True

    # Map provider roles to Superset roles
    AUTH_ROLES_MAPPING = {
        os.environ['SUPERSET_ROLE_ADMIN']: ['Admin'],
        os.environ['SUPERSET_ROLE_ALPHA']: ['Alpha'],
        os.environ['SUPERSET_ROLE_GAMMA']: ['Gamma'],
        os.environ['SUPERSET_ROLE_GRANTER']: ['granter'],
        os.environ['SUPERSET_ROLE_SQL_LAB']: ['sql_lab']
    }