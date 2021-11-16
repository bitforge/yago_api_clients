
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from .api.auth_api import AuthApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from genie.api.auth_api import AuthApi
from genie.api.customer_api import CustomerApi
from genie.api.health_api import HealthApi
from genie.api.memberships_api import MembershipsApi
from genie.api.models_api import ModelsApi
from genie.api.plans_api import PlansApi
from genie.api.projects_api import ProjectsApi
from genie.api.registration_api import RegistrationApi
from genie.api.stats_api import StatsApi
from genie.api.subscription_api import SubscriptionApi
from genie.api.users_api import UsersApi
