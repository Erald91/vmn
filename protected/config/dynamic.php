<?php return array (
  'components' => 
  array (
    'db' => 
    array (
      'class' => 'yii\\db\\Connection',
      'dsn' => 'mysql:host=localhost;dbname=vmn',
      'username' => 'ecafka',
      'password' => 'WWs4QP6hnF8N9xSL',
      'charset' => 'utf8',
    ),
    'user' => 
    array (
    ),
    'mailer' => 
    array (
      'transport' => 
      array (
        'class' => 'Swift_SmtpTransport',
        'host' => 'localhost',
        'port' => '25',
      ),
      'view' => 
      array (
        'theme' => 
        array (
          'name' => 'LI_Theme',
          'basePath' => 'D:/VMN/themes\\LI_Theme',
          'publishResources' => false,
        ),
      ),
    ),
    'cache' => 
    array (
      'class' => 'yii\\caching\\FileCache',
      'keyPrefix' => 'humhub',
    ),
    'view' => 
    array (
      'theme' => 
      array (
        'name' => 'LI_Theme',
        'basePath' => 'D:/VMN/themes\\LI_Theme',
        'publishResources' => false,
      ),
    ),
    'formatter' => 
    array (
      'defaultTimeZone' => 'Europe/Berlin',
    ),
    'formatterApp' => 
    array (
      'defaultTimeZone' => 'Europe/Berlin',
      'timeZone' => 'Europe/Berlin',
    ),
  ),
  'params' => 
  array (
    'installer' => 
    array (
      'db' => 
      array (
        'installer_hostname' => 'localhost',
        'installer_database' => 'vmn',
      ),
    ),
    'config_created_at' => 1476299696,
    'horImageScrollOnMobile' => '1',
    'databaseInstalled' => true,
    'installed' => true,
  ),
  'name' => 'VMN',
  'language' => 'en-US',
  'timeZone' => 'Europe/Berlin',
); ?>
