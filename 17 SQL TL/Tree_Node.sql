CREATE TABLE Tree (
  id INT PRIMARY KEY,
  p_id INT
);

INSERT INTO Tree (id, p_id)
VALUES
  (1, NULL),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2);

SELECT
  T.id,
  CASE
    WHEN T.p_id IS NULL THEN 'Root'
    WHEN C.cnt > 0 THEN 'Inner'
    ELSE 'Leaf'
  END AS type
FROM
  Tree T
  LEFT JOIN (
    SELECT
      p_id,
      COUNT(*) AS cnt
    FROM
      Tree
    GROUP BY
      p_id
  ) C ON T.id = C.p_id;
