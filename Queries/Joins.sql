Select count(ce.emp_no), de.dept_no
INTO emp_count
from current_emp as ce
join dept_emp as de
on ce.emp_no =de.emp_no
group by de.dept_no
ORDER BY de.dept_no;

----------------------------------------
SELECT * FROM salaries
ORDER BY to_date DESC;

===============
SELECT e.emp_no,
e.first_name,
e.last_name,e.gender,
s.salary, de.to_date
INTO emp_info
FROM employees e
join salaries s
on (e.emp_no = s.emp_no)
join dept_emp de
on (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')AND (de.to_date = '9999-01-01');
;

-------------------------
-- List of managers per department


select dm.dept_no,
 d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
		
--------------------------------
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
-- INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

---------------------------------------
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
where d.dept_name in ('Sales','Development');

------------------------