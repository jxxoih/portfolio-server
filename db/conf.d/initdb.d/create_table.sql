CREATE TABLE `profile`
(
    `p_id` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_name` VARCHAR(10) NOT NULL COMMENT '이름',
    `p_birth` INT(8) NOT NULL COMMENT '생년월일 8자',
    `p_description` VARCHAR(50) NULL COMMENT '메인 소개',
    `p_about_title` VARCHAR(255) NULL COMMENT '소개 제목',
    `p_about_context` VARCHAR(255) NULL COMMENT '소개 내용',
    `created_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로필';

CREATE TABLE `work`
(
    `w_id` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_id` INT NOT NULL COMMENT '프로필 고유번호',
    `company_nm` VARCHAR(50) NOT NULL COMMENT '회사명',
    `emp_status` TINYINT(0) UNSIGNED NOT NULL COMMENT '퇴사여부 0=재직, 1=퇴사',
    `w_start_date` DATE NOT NULL COMMENT '입사일',
    `w_end_date` DATE NULL COMMENT '퇴사일',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`w_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='일';

CREATE TABLE `project`
(
    `pro_id` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_id` INT NOT NULL COMMENT '프로필 고유번호',
    `w_id` INT NOT NULL COMMENT 'work 고유번호',
    `pro_name` VARCHAR(50) NOT NULL COMMENT '프로젝트이름',
    `pro_position` TINYINT(0) UNSIGNED COMMENT '프로젝트 포지션: 0 = 둘다, 1 = 프론트, 2 = 백엔드',
    `pro_detail` VARCHAR(255) NOT NULL COMMENT '상세 프로젝트 내용',
    `pro_start_date` DATE NOT NULL COMMENT '프로젝트 시작일',
    `pro_end_date` DATE NOT NULL COMMENT '프로젝트 종료일',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로젝트';

CREATE TABLE `project_skill`
(
    `ps_id` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_id` INT NOT NULL COMMENT '프로필 고유번호',
    `pro_id` INT NOT NULL COMMENT '프로젝트 고유번호',
    `s_id` INT NOT NULL COMMENT '스킬 매핑',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로젝트에서 사용한 스킬들을 가져갈 테이블';

CREATE TABLE `skill`
(
    `s_id` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `s_name` VARCHAR(50) NOT NULL COMMENT '스킬명',
    `s_img` VARCHAR(50) NULL COMMENT '스킬이미지',
    `s_type` TINYINT(0) UNSIGNED COMMENT '1=프론트, 2=백엔드, 3=dbms, 4=VS, 5=comm',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='스킬 매핑 테이블';

