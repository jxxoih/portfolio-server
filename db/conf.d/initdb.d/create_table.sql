CREATE TABLE `profile`
(
    `p_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_name` VARCHAR(10) NOT NULL COMMENT '이름',
    `p_contact` VARCHAR(11) NULL COMMENT '연락처',
    `p_auth_pwd` VARCHAR(10) NOT NULL COMMENT '관리자페이지 이동시 사용하는 비밀번호',
    `p_github` VARCHAR(50) NOT NULL COMMENT '깃허브 닉네임',
    `p_email` VARCHAR(50) NOT NULL COMMENT '이메일',
    `p_birth` INT(8) NOT NULL COMMENT '생년월일 8자',
    `p_description` VARCHAR(50) NULL COMMENT '메인 소개',
    `p_about_title` VARCHAR(255) NULL COMMENT '소개 제목',
    `p_about_context` VARCHAR(255) NULL COMMENT '소개 내용',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`p_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로필';

CREATE TABLE `company`
(
    `c_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_idx` INT NOT NULL COMMENT '프로필 고유번호',
    `company_nm` VARCHAR(50) NOT NULL COMMENT '회사명',
    `emp_status` TINYINT(0) UNSIGNED NOT NULL COMMENT '퇴사여부 0=재직, 1=퇴사',
    `w_start_date` DATE NOT NULL COMMENT '입사일',
    `w_end_date` DATE NULL COMMENT '퇴사일',
    `use_status` TINYINT(0) UNSIGNED COMMENT '사용상태 0 = 비활성, 1 = 사용',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`c_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='일';

CREATE TABLE `project`
(
    `pro_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_idx` INT NOT NULL COMMENT '프로필 고유번호',
    `c_idx` INT NOT NULL COMMENT 'company 고유번호',
    `pro_name` VARCHAR(50) NOT NULL COMMENT '프로젝트이름',
    `pro_position` TINYINT(0) UNSIGNED COMMENT '프로젝트 포지션: 0 = 둘다, 1 = 프론트, 2 = 백엔드',
    `pro_detail` VARCHAR(255) NOT NULL COMMENT '상세 프로젝트 내용',
    `pro_url` VARCHAR(255) NULL COMMENT '프로젝트 url',
    `pro_start_date` DATE NOT NULL COMMENT '프로젝트 시작일',
    `pro_end_date` DATE NOT NULL COMMENT '프로젝트 종료일',
    `use_status` TINYINT(0) UNSIGNED COMMENT '사용상태 0 = 비활성, 1 = 사용',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`pro_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로젝트';

CREATE TABLE `project_skill`
(
    `ps_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_idx` INT NOT NULL COMMENT '프로필 고유번호',
    `pro_idx` INT NOT NULL COMMENT '프로젝트 고유번호',
    `s_idx` INT NOT NULL COMMENT '스킬 매핑',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`ps_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='프로젝트에서 사용한 스킬들을 가져갈 테이블';

CREATE TABLE `skill`
(
    `s_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `s_name` VARCHAR(50) NOT NULL COMMENT '스킬명',
    `s_img` VARCHAR(50) NULL COMMENT '스킬이미지',
    `sf_idx` TINYINT(0) UNSIGNED COMMENT '1=프론트, 2=백엔드, 3=dbms, 4=VS, 5=comm',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`s_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='스킬 매핑 테이블';

CREATE TABLE `skill_field`
(
    `sf_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `sf_name` VARCHAR(50) NOT NULL COMMENT '스킬 분야',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`sf_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='스킬 분야 매핑 테이블';

CREATE TABLE `position`
(
    `pos_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `pos_name` VARCHAR(50) NOT NULL COMMENT 'position',
    `pos_type` TINYINT(0) UNSIGNED COMMENT '0 = 둘다, 1 = 프론트, 2 = 백엔드',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`pos_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='POSITON MAPPING';

CREATE TABLE `state_mng`
(
    `sm_idx` INT NOT NULL AUTO_INCREMENT COMMENT '고유번호',
    `p_idx` INT NOT NULL COMMENT '사용자 고유번호',
    `sm_state` TINYINT(0) UNSIGNED COMMENT '사용여부 1 = 사용, 0 = 사용안함',
    `updated_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정 일시',
    `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성 일시',
    PRIMARY KEY (`sm_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='STATE MANAGEMENT';