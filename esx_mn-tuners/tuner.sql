INSERT INTO `jobs` (name, label, whitelisted) VALUES
	('tuner','tuner',1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('tuner',0,'mechanic','Mechanic',0,'{}','{}'),
	('tuner',1,'runner','Runner',0,'{}','{}'),
	('tuner',2,'driftking','Drift King',0,'{}','{}'),
	('tuner',3,'tunerking','Tuner King',0,'{}','{}'),
	('tuner',4,'boss','Most Wanted',0,'{}','{}')
;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_tuner', 'tuner', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_tuner', 'tuner', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_tuner', 'tuner', 1)
;