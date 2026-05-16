-- SQL query
CREATE OR REPLACE VIEW `cedar-helper-348603`.`Hotels`.`reservation_status_counts_view` AS
SELECT
  Status_Reservasi,
  COUNT(DISTINCT Booking_ID) AS count_of_bookings
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout`
GROUP BY
  Status_Reservasi;