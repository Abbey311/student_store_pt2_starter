\echo 'Delete and recreate student_store db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE student_store;
CREATE DATABASE student_store;
\connect student_store

\i student-store-schema.sql
\i student-store-seed.sql

\echo 'Delete and recreate student_store_seed db?'
\prompt 'Return for yes or control-C to cancel > ' answer

DROP DATABASE IF EXISTS student_store_seed;
CREATE DATABASE student_store_seed;
\connect student_store_seed

\i student-store-schema.sql
\i student-store-seed.sql
