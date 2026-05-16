-- SQL query
CREATE VIEW
  `cedar-helper-348603`.`Hotels`.`total_revenue_view` AS
SELECT
  SUM(t1.Lama_Menginap * t1.Harga_per_Malam) AS total_revenue
FROM
  `cedar-helper-348603`.`Hotels`.`out_hotel_booking_1000_with_checkout` AS t1
WHERE
  t1.Status_Reservasi = 'Check-in';