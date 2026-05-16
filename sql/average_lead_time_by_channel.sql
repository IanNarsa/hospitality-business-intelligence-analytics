-- SQL query
CREATE OR REPLACE VIEW `cedar-helper-348603`.`Hotels`.`average_lead_time_by_channel_view` AS
SELECT
  Kanal_Distribusi,
  AVG( DATE_DIFF( PARSE_DATE('%Y-%m-%d', Tanggal_CheckIn), PARSE_DATE('%Y-%m-%d', Tanggal_Booking), DAY)) AS average_lead_time_days
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout`
GROUP BY
  Kanal_Distribusi
ORDER BY
  Kanal_Distribusi;