-- SQL query
CREATE OR REPLACE VIEW `cedar-helper-348603`.`Hotels`.`room_type_channel_bookings_view` AS
SELECT
  t1.Tipe_Kamar,
  t1.Kanal_Distribusi,
  COUNT(t1.Booking_ID) AS count_of_bookings
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout` AS t1
GROUP BY
  t1.Tipe_Kamar,
  t1.Kanal_Distribusi
ORDER BY
  t1.Tipe_Kamar,
  t1.Kanal_Distribusi;