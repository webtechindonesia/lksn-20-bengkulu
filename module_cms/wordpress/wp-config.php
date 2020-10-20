<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'cms_lksn20' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ajRBaL@ 4K3AMUFSJjg- 7CkZ6v=ibuIX(8@%{V<{pG~GDKA=3~}yD N[$tCmzSd' );
define( 'SECURE_AUTH_KEY',  'y$agQ^Cml4=s>Ln/![`88c_Di!fdw/*V>0n{qFBIu2PDPb-[I.Dj$mv/eHHPV94V' );
define( 'LOGGED_IN_KEY',    'K#1r}4f;&,^#+{W^Dnt7 ).?-c22NHat[DWh^71:_&)fdxO@0S +O,FC)sO.trJs' );
define( 'NONCE_KEY',        '%EHOboys@dH2A,XR0bq7{n3,<Wz2%4dF.Diq/`Y5G@o%*5qf-MqMgyDK;&(`,G+W' );
define( 'AUTH_SALT',        'Cv.T/FV}3[F!c,b0Q},,;dV`#Hv4jO/QX3n[@rry?>J3)e_<;LLx4#mYRPZ*?-9T' );
define( 'SECURE_AUTH_SALT', '#5jGD3HOABwGh_1tSuiSlxzWDxL`DwbnWC?(8d4?]=RL|]^lRfzuR@N&lWeglLMO' );
define( 'LOGGED_IN_SALT',   'yEQK,vHfK>=v!bKUJ3TN$SN5FyPFzZ.rZw`!Vgj?`rx&#z[w$fvI)a_>!YK7]:<J' );
define( 'NONCE_SALT',       '! eJpNA6ISz;o `?{X5ZFq:,}p?qrX?;/0?ko5Vs|T$&$WYQub/H0jMTi}!ZXJ)a' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
