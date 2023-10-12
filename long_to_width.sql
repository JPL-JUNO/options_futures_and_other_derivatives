-- 将长表转化为宽表

-- 示意的表格见 long_to_width.xlsx

SELECT
    student,
    MAX(
        CASE
            WHEN subject = 'Chinese' THEN score
        END
    ) AS 'Chinese' MAX(
        CASE
            WHEN subject = 'English' THEN score
        END
    ) AS 'English',
    MAX(
        CASE
            WHEN subject = 'Math' THEN score
        END
    ) AS 'Math'
GROUP BY student;

/*student 和subject 应该是复合主键，不然的话真的是聚合函数了，
 这里使用其他的任何聚合函数都不影响，因为是复合主键*/