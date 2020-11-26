const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
SELECT DISTINCT teachers.name AS teacher_name, cohorts.name AS cohort_name
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teachers.name
LIMIT $2;
`;

const cohortName = process.argv[2];
const limit = process.argv[3];
const values = [`%${cohortName}%`, limit];

pool.query(queryString, values)
.then(res => {
  console.log(res.rows);
  pool.end();
})
.catch(err => console.error('query error', err.stack));