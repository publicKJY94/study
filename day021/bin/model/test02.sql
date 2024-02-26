CREATE TABLE BOARD(
	BID INT PRIMARY KEY,
	TITLE VARCHAR(30) NOT NULL,
	WRITER VARCHAR(15) NOT NULL, -- FK(외래키,외부키)
	CONTENT VARCHAR(50) NOT NULL,
	REGDATE DATE DEFAULT SYSDATE
);
-- FK는 항상 연관된 테이블의 PK 값이 저장되어야만한다!!!!!

INSERT INTO BOARD (BID,TITLE,WRITER,CONTENT) VALUES((SELECT NVL(MAX(BID),10) + 1 FROM BOARD),'제목','admin','내용');

SELECT * FROM BOARD;

DROP TABLE BOARD;

SELECT * FROM BOARD ORDER BY BID DESC;