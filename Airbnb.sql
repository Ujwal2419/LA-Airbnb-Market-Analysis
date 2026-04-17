Use listings;
-- SELECT count(*) from cleaned_listings;
-- 1.Are hosts operating legally?
SELECT
    CASE WHEN has_license = 1 THEN 'Licensed' ELSE 'Unlicensed' END AS license_status,
    COUNT(*) AS listing_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_listings), 2) AS percentage
FROM cleaned_listings
GROUP BY has_license
ORDER BY listing_count DESC;

-- 2.Which neighborhoods have the most competition?
SELECT
    neighbourhood,
    COUNT(*) AS total_listings,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_listings), 2) AS market_share_pct
FROM cleaned_listings
GROUP BY neighbourhood
ORDER BY total_listings DESC
LIMIT 10;

-- 3. Who are the commercial operators managing multiple properties?
SELECT
    host_id,
    host_name,
    COUNT(*) AS listings_managed,
    ROUND(AVG(reviews_per_mont), 2) AS avg_reviews_per_mont_per_listing
FROM cleaned_listings
GROUP BY host_id, host_name
HAVING COUNT(*) >= 3  
ORDER BY listings_managed DESC
LIMIT 10;

-- 4.Which room types sit empty the most?
SELECT
    room_type,
    COUNT(*) AS listing_count,
    ROUND(AVG(availability_365), 0) AS avg_days_available,
    ROUND(AVG(availability_365) / 365 * 100, 1) AS vacancy_rate_pct
FROM cleaned_listings
GROUP BY room_type
ORDER BY avg_days_available DESC;

-- 5.Which listings are most popular with guests?
SELECT
    id,
    name,
    host_name,
    neighbourhood,
    room_type,
    number_of_review,
    reviews_per_mont
FROM cleaned_listings
WHERE number_of_review > 0
ORDER BY reviews_per_mont DESC
LIMIT 10;

-- 6.How do booking requirements vary by room type?
SELECT
    room_type,
    COUNT(*) AS listing_count,
    ROUND(AVG(minimum_nights), 1) AS avg_min_nights,
    MAX(minimum_nights) AS max_min_nights,
    MIN(minimum_nights) AS min_min_nights
FROM cleaned_listings
GROUP BY room_type
ORDER BY avg_min_nights DESC;

-- 7.Executive Summary
SELECT
    'OVERALL' AS metric,
    COUNT(*) AS value
FROM cleaned_listings
UNION ALL
SELECT
    'Licensed %',
    ROUND(SUM(CASE WHEN has_license = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1)
FROM cleaned_listings

UNION ALL

SELECT
    'Avg Reviews/Month',
    ROUND(AVG(reviews_per_mont), 2)
FROM cleaned_listings
WHERE reviews_per_mont IS NOT NULL
UNION ALL
SELECT
    'Most Common Room',
    room_type
FROM cleaned_listings
GROUP BY room_type
ORDER BY COUNT(*) DESC
LIMIT 1;
