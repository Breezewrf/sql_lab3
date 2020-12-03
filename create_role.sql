exec sp_addrole 'student'
exec sp_addrole 'teacher'
exec sp_addrole 'administrator'

--����Ȩ�޸���ʦ
GRANT SELECT,UPDATE ON t_teacher to teacher
GRANT SELECT,UPDATE ON t_student to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_lab to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_join to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_lease to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_team to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_equipment to teacher
GRANT SELECT,UPDATE,INSERT,DELETE ON t_project to teacher

--����Ȩ�޸�ѧ��
GRANT SELECT ON t_join to student
GRANT SELECT ON t_lease to student
GRANT SELECT ON t_team to student
GRANT SELECT ON t_equipment to student
GRANT SELECT ON t_project to student
GRANT SELECT ON t_student to student
GRANT SELECT ON t_lab to student

--Ϊ����Ա����Ȩ��
GRANT SELECT,UPDATE,INSERT,DELETE ON t_lab TO administrator
GRANT SELECT,UPDATE,INSERT,DELETE ON t_teacher TO administrator
GRANT SELECT,UPDATE,INSERT,DELETE ON t_student TO administrator
