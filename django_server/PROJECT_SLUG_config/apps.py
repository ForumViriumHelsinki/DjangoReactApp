from django.contrib.admin.apps import AdminConfig


class AdminConfig(AdminConfig):
    default_site = '$PROJECT_SLUG_config.admin_site.AdminSite'
