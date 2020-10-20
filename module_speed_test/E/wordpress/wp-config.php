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
define( 'DB_NAME', 'lksn_2020' );

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
define( 'AUTH_KEY',         '&,+b85_$Hc(LZ<J@&(_S%yd<*hw<E2ve8Ywz}>Ow ZfMh*A@tg-?^9[G{r>hPOUB' );
define( 'SECURE_AUTH_KEY',  'w6[X?H%HLw]]AU?X8V[?9vuN1gS9zQizVl5k.<HJr<O1H$MaA!cv5v5[[Lsg~gIZ' );
define( 'LOGGED_IN_KEY',    ';87Z#oc/ eQcKLW6UW#%]kmXt1X-k[-]_u$G| WKB^Drr!zC1;%HWEF(Y54|o~-*' );
define( 'NONCE_KEY',        '~YE,^w6l2D[^y56MW,d5IC4h8B9nh(Pl<yszAZu3j`?EwABYJ1c!#5{%]V`9DHV+' );
define( 'AUTH_SALT',        'Hq8E0wzzTe_k[wZ%<]/naxp5BWj.hnjT9Ld{t9ku@vT?Si9]U_gIG`LoL=; X8bY' );
define( 'SECURE_AUTH_SALT', 'E%,fEVzr}&tjQ|PbOBD:a$=5GBYhI %FC-4?yOb)>9Q(YfXj<uLPox|lB&Ob^`T(' );
define( 'LOGGED_IN_SALT',   '%4F05!zDGmdFR$JSz9g>m`2DuRQcY]284GC&{Dw>4X|$f{0`azWjM+? m~ZiC;[P' );
define( 'NONCE_SALT',       'q{`o vlO]EJ[W$wMXg>lg(Xk9/Pv7UVSp5-.C+.f}#Sk@4PCz#{C>TWJ8[W$6ekm' );

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
