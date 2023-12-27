INSERT INTO `profile` (p_name, p_contact, p_auth_pwd, p_birth, p_description, p_about_title, p_about_context, p_github,p_email)
VALUES ('강지호', '01012345678','0219', '19990219', '개발자 강지호입니다.', '', 
'프론트, 백엔드를 같이 개발, 공부하고 있는 풀스택 개발자가 목표인 강지호입니다.', 'jxxoih','jxxo.ih@gmail.com');


INSERT INTO `company` (p_idx, company_nm, emp_status, w_start_date, w_end_date, use_status)
VALUES (1, '주식회사키키', 1, '2022-04-04', '2023-01-01', 1),
(1, '제이앤제이', 1, '2023-01-02', '2023-06-30', 1),
(1, '개인프로젝트', 1, '2024-01-01', '2024-12-31', 0)
;

INSERT INTO `project` (p_idx, c_idx, pro_name, pro_position, pro_detail, pro_start_date, pro_end_date,pro_url, use_status)
VALUES
(1, 1, '키키 사장님페이지', 0, '기능개발 및 유지 보수', '2022-04-01', '2022-12-31', '', 1),
(1, 1, '키키 관리자페이지', 0, '기능개발 및 유지 보수', '2022-04-01', '2022-12-31', '', 1),
(1, 1, '키키 포스프로그램(POS)', 0, 'POS 프로그램 기능 개발 및 유지 보수, REST API를 이용해 외부 배달대행사 API 연동', '2022-05-01', '2022-12-31', '', 1),
(1, 1, '키키 사이트 및 웹뷰', 0, '사이트, 웹뷰 개발 및 유지 보수', '2022-06-01', '2022-12-31', '', 1),
(1, 1, '키키 채팅서비스 웹뷰', 0, '키키 앱에 들어갈 채팅서비스 기능 일부 웹뷰 UI 및 로직 구현', '2022-10-01', '2022-11-01', '', 1),
(1, 2, '(주)대화공업 B2B', 0, 'B2B 쇼핑몰 개발', '2023-01-02', '2023-06-30', '', 1),
(1, 2, '(주)대화공업 홈페이지', 1, '디자인 외 모든작업', '2023-01-02', '2023-02-01', 'https://devziho.shop', 1),
(1, 2, '사내메신저 프로그램', 1, '일부 UI 작업', '2023-05-01', '2023-06-01', '', 1),
(1, 3, '소개_포트폴리오', 1, 'jxxo.shop', '2023-10-11', '2023-10-18', 'https://jxxo.shop', 1);

INSERT INTO `project_skill` (p_idx, pro_idx, s_idx)
VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(1, 1, 7),
(1, 2, 1),
(1, 2, 2),
(1, 2, 3),
(1, 2, 7),
(1, 3, 1),
(1, 3, 3),
(1, 3, 7),
(1, 4, 4),
(1, 4, 7),
(1, 5, 1),
(1, 5, 2),
(1, 5, 3),
(1, 5, 8),
(1, 6, 15),
(1, 6, 6),
(1, 7, 4),
(1, 8, 1),
(1, 8, 2),
(1, 8, 3),

(1, 8, 9),
(1, 8, 10),
(1, 8, 11),
(1, 8, 12),
(1, 8, 13),
(1, 8, 14),

(1, 9, 4),
(1, 9, 8),
(1, 9, 16);


INSERT INTO `skill` (s_name, s_img, sf_idx)
VALUES
("HTML", "html.png", 1),
("CSS", "css.png", 1),
("JavaScript", "javascript.png", 1),
("React", "react.png", 1),
("Java", "java.png", 2),
("Spring", "spring.png", 2),
("PHP", "php.png", 2),
("nodejs", "node.png", 2),
("MySQL", "mysql.png", 3),
("MariaDB", "mariadb.png", 3),
("Git", "git.jpeg", 4),
("GitHub", "github.png", 4),
("Zeplin", "zeplin.png", 5),
("Figma", "figma.png", 5),
("Thymeleaf", "thymeleaf.png", 1),
("AWS", "aws.png", 2);


INSERT INTO `skill_field` (sf_name)
VALUES
("Front-end"),
("Back-end"),
("DBMS"),
("Version Control"),
("Communication");

INSERT INTO `position` (pos_name, pos_type)
VALUES
("프론트, 백엔드", 0),
("프론트엔드", 1),
("백엔드", 2);

INSERT INTO `state_mng` (p_idx, sm_state)
VALUES
(1, 1)
;