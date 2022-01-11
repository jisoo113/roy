DROP TABLE BOARD;

CREATE TABLE BOARD
(
    b_num    INTEGER NOT NULL,
    b_name    VARCHAR2(100) NOT NULL,
    b_cnt    VARCHAR2(1025) NOT NULL,
    b_date    DATE DEFAULT sysdate NOT NULL,
    b_view    INTEGER NOT NULL,
    b_shr    CHAR(1) DEFAULT 'y' NOT NULL,
    m_id    VARCHAR2(20) NOT NULL,
    f_name    VARCHAR2(50)
);

COMMENT ON COLUMN BOARD.b_num IS '게시글번호';

COMMENT ON COLUMN BOARD.b_name IS '게시글제목';

COMMENT ON COLUMN BOARD.b_cnt IS '게시글내용';

COMMENT ON COLUMN BOARD.b_date IS '게시글 작성일';

COMMENT ON COLUMN BOARD.b_view IS '조회수';

COMMENT ON COLUMN BOARD.b_shr IS '공지여부';

COMMENT ON COLUMN BOARD.m_id IS '아이디';

COMMENT ON COLUMN BOARD.f_name IS '이미지파일';

COMMENT ON TABLE BOARD IS '게시글';

CREATE UNIQUE INDEX 엔터티1_PK1 ON BOARD
( b_num );

ALTER TABLE BOARD
 ADD CONSTRAINT 엔터티1_PK1 PRIMARY KEY ( b_num )
 USING INDEX 엔터티1_PK1;


DROP TABLE MANAGER;

CREATE TABLE MANAGER
(
    mng_id    VARCHAR2(20) NOT NULL,
    mng_pass    VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN MANAGER.mng_id IS '관리자아이디';

COMMENT ON COLUMN MANAGER.mng_pass IS '관리자비밀번호';

COMMENT ON TABLE MANAGER IS '관리자';

CREATE UNIQUE INDEX 엔터티1_PK2 ON MANAGER
( mng_id );

ALTER TABLE MANAGER
 ADD CONSTRAINT 엔터티1_PK2 PRIMARY KEY ( mng_id )
 USING INDEX 엔터티1_PK2;


DROP TABLE OBOARD;

CREATE TABLE OBOARD
(
    o_num    INTEGER NOT NULL,
    b_num    INTEGER NOT NULL
);

COMMENT ON COLUMN OBOARD.o_num IS '주문번호';

COMMENT ON COLUMN OBOARD.b_num IS '게시글번호';

COMMENT ON TABLE OBOARD IS '주문게시글';


DROP TABLE PORDER;

CREATE TABLE PORDER
(
    o_num    INTEGER NOT NULL,
    o_date    DATE DEFAULT sysdate NOT NULL,
    o_req    VARCHAR2(255),
    p_num    INTEGER NOT NULL,
    m_id    VARCHAR2(20) NOT NULL,
    o_qty    INTEGER NOT NULL,
    o_cost    INTEGER NOT NULL,
    o_pay    VARCHAR2(1) DEFAULT 'N' NOT NULL
);

COMMENT ON COLUMN PORDER.o_num IS '주문번호';

COMMENT ON COLUMN PORDER.o_date IS '주문일';

COMMENT ON COLUMN PORDER.o_req IS '배송시 요청사항';

COMMENT ON COLUMN PORDER.p_num IS '상품번호';

COMMENT ON COLUMN PORDER.m_id IS '아이디';

COMMENT ON COLUMN PORDER.o_qty IS '주문수량';

COMMENT ON COLUMN PORDER.o_cost IS '주문금액';

COMMENT ON COLUMN PORDER.o_pay IS '결제상태';

COMMENT ON TABLE PORDER IS '주문';

CREATE UNIQUE INDEX 주문_PK ON PORDER
( o_num );

ALTER TABLE PORDER
 ADD CONSTRAINT 주문_PK PRIMARY KEY ( o_num )
 USING INDEX 주문_PK;


DROP TABLE PRODUCT;

CREATE TABLE PRODUCT
(
    p_num    INTEGER NOT NULL,
    p_name    VARCHAR2(50) NOT NULL,
    p_cost    INTEGER NOT NULL,
    p_qty    INTEGER NOT NULL,
    p_size    VARCHAR2(16) NOT NULL,
    p_cov    VARCHAR2(16) NOT NULL,
    p_date    DATE DEFAULT sysdate NOT NULL,
    p_img    VARCHAR2(100)
);

COMMENT ON COLUMN PRODUCT.p_num IS '상품번호';

COMMENT ON COLUMN PRODUCT.p_name IS '상품명';

COMMENT ON COLUMN PRODUCT.p_cost IS '가격';

COMMENT ON COLUMN PRODUCT.p_qty IS '수량';

COMMENT ON COLUMN PRODUCT.p_size IS '사이즈';

COMMENT ON COLUMN PRODUCT.p_cov IS '커버';

COMMENT ON COLUMN PRODUCT.p_date IS '상품등록일';

COMMENT ON COLUMN PRODUCT.p_img IS '상품이미지';

COMMENT ON TABLE PRODUCT IS '상품';

CREATE UNIQUE INDEX 엔터티1_PK7 ON PRODUCT
( p_num );

ALTER TABLE PRODUCT
 ADD CONSTRAINT 엔터티1_PK7 PRIMARY KEY ( p_num )
 USING INDEX 엔터티1_PK7;


DROP TABLE RMEMBER;

CREATE TABLE RMEMBER
(
    m_id    VARCHAR2(20) NOT NULL,
    m_pass    VARCHAR2(20) NOT NULL,
    m_name    VARCHAR2(15) NOT NULL,
    m_addr    VARCHAR2(100) NOT NULL,
    m_mail    VARCHAR2(100) NOT NULL,
    m_tel    VARCHAR2(15) NOT NULL,
    m_date    DATE DEFAULT sysdate NOT NULL,
    m_del    CHAR(1) DEFAULT 'n' NOT NULL
);

COMMENT ON COLUMN RMEMBER.m_id IS '아이디';

COMMENT ON COLUMN RMEMBER.m_pass IS '암호';

COMMENT ON COLUMN RMEMBER.m_name IS '이름';

COMMENT ON COLUMN RMEMBER.m_addr IS '주소';

COMMENT ON COLUMN RMEMBER.m_mail IS '이메일';

COMMENT ON COLUMN RMEMBER.m_tel IS '전화번호';

COMMENT ON COLUMN RMEMBER.m_date IS '가입일';

COMMENT ON COLUMN RMEMBER.m_del IS '탈퇴여부';

COMMENT ON TABLE RMEMBER IS '회원';

CREATE UNIQUE INDEX 엔터티1_PK ON RMEMBER
( m_id );

ALTER TABLE RMEMBER
 ADD CONSTRAINT 엔터티1_PK PRIMARY KEY ( m_id )
 USING INDEX 엔터티1_PK;


