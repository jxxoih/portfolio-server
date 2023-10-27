INSERT INTO `profile` (p_name, p_birth, p_description, p_about_title, p_about_context)
VALUES ('강지호', '19990219', '개발자 강지호입니다.', '2년차 개발자', '백엔드 개발자로 일을 시작했지만 프론트에 흥미를 느껴 프론트, 백엔드를 같이 개발, 공부하고 있는 
풀스택 개발자가 목표인 강지호입니다.');


INSERT INTO `work` (p_id, company_nm, emp_status, w_start_date, w_end_date)
VALUES (1, '주식회사키키', 1, '2022-04-04', '2023-01-01'),
(1, '제이앤제이', 1, '2023-01-02', '2023-06-30');

INSERT INTO `project` (p_id, w_id, pro_name, pro_position, pro_detail, pro_start_date, pro_end_date)
VALUES
(1, 1, '키키 사장님페이지', 0, '기능개발 및 유지 보수', '2022-04-01', '2022-12-31'),
(1, 1, '키키 관리자페이지', 0, '기능개발 및 유지 보수', '2022-04-01', '2022-12-31'),
(1, 1, '키키 포스프로그램(POS)', 0, 'POS 프로그램 기능 개발 및 유지 보수, REST API를 이용해 외부 배달대행사 API 연동', '2022-05-01', '2022-12-31'),
(1, 1, '키키 사이트 및 웹뷰', 0, '사이트, 웹뷰 개발 및 유지 보수', '2022-06-01', '2022-12-31'),
(1, 1, '키키 채팅서비스 웹뷰', 0, '키키 앱에 들어갈 채팅서비스 기능 일부 웹뷰 UI 및 로직 구현', '2022-10-01', '2022-11-01'),
(1, 2, '(주)대화공업 B2B', 0, 'B2B 쇼핑몰 개발', '2023-01-02', '2023-06-30'),
(1, 2, '(주)대화공업 홈페이지', 1, '디자인 외 모든작업', '2023-01-02', '2023-02-01'),
(1, 2, '사내메신저 프로그램', 1, '일부 UI 작업참여', '2023-05-01', '2023-06-01');

INSERT INTO `project_skill` (p_id, pro_id, s_id)
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
(1, 8, 8);


INSERT INTO `skill` (s_name, s_img, s_type)
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
("Thymeleaf", "thymeleaf.png", 1);



