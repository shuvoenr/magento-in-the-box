-- SELECT Product Images from Database By in SKU's

SELECT * FROM catalog_product_entity_media_gallery
WHERE value_id in(
    SELECT
        value_id FROM catalog_product_entity_media_gallery_value_to_entity
    WHERE
        entity_id in(
        SELECT
            entity_id FROM catalog_product_entity
        WHERE
            sku in('11604', '11604')))
  AND attribute_id = 90;

SELECT * FROM catalog_product_entity_media_gallery_value_to_entity
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku in('11604', '11604'));

SELECT * FROM catalog_product_entity_media_gallery_value
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku in('11604', '11604'));


-- Delete Product Images from Database By in SKU's

DELETE FROM catalog_product_entity_media_gallery
WHERE value_id in(
    SELECT
        value_id FROM catalog_product_entity_media_gallery_value_to_entity
    WHERE
        entity_id in(
        SELECT
            entity_id FROM catalog_product_entity
        WHERE
            sku in('11604', '11604')))
  AND attribute_id = 90;

DELETE FROM catalog_product_entity_media_gallery_value_to_entity
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku in('11604', '11604'));

DELETE FROM catalog_product_entity_media_gallery_value
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku in('11604', '11604'));


-- SELECT Product Images from Database By in SKU (Like)

SELECT * FROM catalog_product_entity_media_gallery
WHERE value_id in(
    SELECT
        value_id FROM catalog_product_entity_media_gallery_value_to_entity
    WHERE
        entity_id in(
        SELECT
            entity_id FROM catalog_product_entity
        WHERE
            sku LIKE 'DUMMY_%'))
  AND attribute_id = 90;

SELECT * FROM catalog_product_entity_media_gallery_value_to_entity
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%');

SELECT * FROM catalog_product_entity_media_gallery_value
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%');

SELECT * FROM catalog_product_entity_varchar
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%')
  AND attribute_id in ('87', '88', '89');



-- Delete Product Images from Database By in SKU (Like)

DELETE FROM catalog_product_entity_media_gallery
WHERE value_id in(
    SELECT
        value_id FROM catalog_product_entity_media_gallery_value_to_entity
    WHERE
        entity_id in(
        SELECT
            entity_id FROM catalog_product_entity
        WHERE
            sku LIKE 'DUMMY_%'))
  AND attribute_id = 90;

DELETE FROM catalog_product_entity_media_gallery_value_to_entity
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%');

DELETE FROM catalog_product_entity_media_gallery_value
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%');


-- Delete Main Image
DELETE FROM catalog_product_entity_varchar
WHERE entity_id in(
    SELECT
        entity_id FROM catalog_product_entity
    WHERE
        sku LIKE 'DUMMY_%')
  AND attribute_id in ('87', '88', '89');