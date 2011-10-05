INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('services', 'Services', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('monthly-specials', 'Monthly Specials', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('reviews', 'Reviews', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('reservations', 'Reservations', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('out-store', 'Our Store', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('beauty-tips', 'Beauty Tips', '2011-09-07 22:38:12', '2011-09-07 22:38:12');
INSERT INTO `pages` (`url_key`, `title`, `created_at`, `updated_at`) VALUES ('contact', 'Contact', '2011-09-07 22:38:12', '2011-09-07 22:38:12');

INSERT INTO `menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`) VALUES (1, 3, 'Page', 1, 1, 'Services', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 4, 'Page', 1, 1, 'Monthly Specials', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 5, 'Page', 1, 1, 'Reviews', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 6, 'Page', 1, 1, 'Reservations', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 7, 'Page', 1, 1, 'Our Store', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 8, 'Page', 1, 1, 'Beauty Tips', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
INSERT INTO `potter_kuuleilani`.`menu_items` (`menu_id`, `linkable_id`, `linkable_type`, `visible`, `item_type`, `display`, `created_at`, `updated_at`) VALUES (1, 9, 'Page', 1, 1, 'Contact', '2011-09-07 23:27:12', '2011-09-07 23:27:12');
UPDATE `potter_kuuleilani`.`menu_items` SET `display`='The Spa' WHERE `id`='2';
INSERT INTO `potter_kuuleilani`.`menu_items` (`created_at`, `updated_at`) VALUES ('2011-09-07 23:27:12', '2011-09-07 23:27:12');
