SET @old := 'https://old.com.br/'
# COLLATE utf8mb4_unicode_ci
;
set @new := 'http://new.lan/'
# COLLATE utf8mb4_unicode_ci
;


UPDATE wp_options SET option_value = replace(option_value, @old, @new) WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, @old,@new);

UPDATE wp_posts SET post_content = replace(post_content, @old, @new);

UPDATE wp_postmeta SET meta_value = replace(meta_value,@old,@new);
