-- SQL query
-- Show me the monthly trend of bookings made in 2025
CREATE OR REPLACE VIEW `cedar-helper-348603`.`Hotels`.`monthly_bookings_2025_view` AS
SELECT
  DATE_TRUNC(PARSE_DATE('%Y-%m-%d', t0.Tanggal_Booking), MONTH) AS booking_month,
  COUNT(t0.Booking_ID) AS count_of_bookings
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout` AS t0
WHERE
  EXTRACT(YEAR FROM PARSE_DATE('%Y-%m-%d', t0.Tanggal_Booking)) = 2025
GROUP BY
  booking_month
ORDER BY
  booking_month;