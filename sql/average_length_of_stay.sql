-- SQL query
CREATE OR REPLACE VIEW `cedar-helper-348603`.`Hotels`.`average_length_of_stay_view` AS
SELECT
  AVG(Lama_Menginap) AS average_length_of_stay
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout`;