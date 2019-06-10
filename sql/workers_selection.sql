SELECT id, name_worker, surname_worker, post_worker, salary_worker 
FROM job.work_fields
WHERE salary_worker < 30000;

SELECT id, name_worker, surname_worker, post_worker, salary_worker 
FROM job.work_fields
WHERE post_worker = 'accountant' AND salary_worker < 30000;

SELECT work_fields.id, work_fields.name_worker, who_is_chief.chief,
worker_chief.chief_id
FROM job.work_fields, job.who_is_chief, job.worker_chief 
WHERE work_fields.id = worker_chief.worker_id AND who_is_chief.id = worker_chief.chief_id
AND who_is_chief.chief LIKE '%Vlad%';

