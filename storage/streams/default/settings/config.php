<?php

 return array (
  'anomaly.module.addons::composer.allow_update' => true,
  'anomaly.module.system::telescope.max_entries' => 10000,
  'anomaly.module.users::config.login' => 'email',
  'anomaly.module.users::config.activation_mode' => 'email',
  'anomaly.module.users::password.minimum_length' => 8,
  'anomaly.module.users::password.requirements' => 
  array (
    0 => '[a-z]',
    1 => '[A-Z]',
  ),
  'app.name' => 'Acme World',
  'app.description' => 'ACME has been bringing a wide range of industrial automation components to the region.',
  'streams::system.force_ssl' => false,
  'streams::system.domain_prefix' => NULL,
  'streams::datetime.date_format' => 'Y-m-d',
  'streams::datetime.time_format' => 'H:i',
  'streams::system.unit_system' => 'metric',
  'streams::themes.standard' => 'np.theme.site',
  'streams::themes.admin' => 'pyrocms.theme.accelerant',
  'streams::system.per_page' => '15',
  'streams::locales.enabled' => 
  array (
    0 => 'ar',
    1 => 'en',
    2 => 'de',
    3 => 'es',
  ),
  'streams::maintenance.enabled' => false,
  'streams::maintenance.auth' => false,
  'streams::maintenance.ip_whitelist' => 
  array (
  ),
  'mail.from.address' => 'info@acme-world.com',
  'mail.from.name' => 'Acme World',
  'mail.driver' => 'mail',
  'mail.host' => NULL,
  'mail.port' => NULL,
  'mail.username' => NULL,
  'mail.password' => NULL,
  'streams::httpcache.enabled' => false,
  'streams::httpcache.ttl' => '3600',
  'streams::httpcache.allow_bots' => false,
  'streams::httpcache.excluded' => NULL,
  'streams::httpcache.rules' => NULL,
  'streams::database.cache' => true,
  'streams::database.ttl' => '3600',
  'streams::system.locking_enabled' => true,
);