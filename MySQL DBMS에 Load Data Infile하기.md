# MySQL DBMS에 Load Data Infile하기

- Command Prompt에 local 대용량 파일을 불러올 수 있도록 설정하는 명령어
    
    ```bash
    C:\Users\sooyeon Kang
    >$cd "C:/Program Files/MySQL/MySQL Server 8.0/bin"
    
    C:\Program Files\MySQL\MySQL Server 8.0\bin
    >$mysql -u root -p
    Enter password: ****
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 18
    Server version: 8.0.34 MySQL Community Server - GPL
    
    Copyright (c) 2000, 2023, Oracle and/or its affiliates.
    
    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.
    
    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    
    mysql
    >$show variables like "local_infile";
    +---------------+-------+
    | Variable_name | Value |
    +---------------+-------+
    | local_infile  | OFF   |
    +---------------+-------+
    1 row in set (0.01 sec)
    
    mysql
    >$set global local_infile = 1;
    Query OK, 0 rows affected (0.00 sec)
    
    mysql
    >$show variables like "local_infile";
    +---------------+-------+
    | Variable_name | Value |
    +---------------+-------+
    | local_infile  | ON    |
    +---------------+-------+
    1 row in set (0.01 sec)
    ```
    

- MySQL Workbench에서 csv데이터를 import하는 법
    
    MySQL 콘솔창에서 실행하는 경우에는 다음과 같은 옵션을 준다.
    
    `MySQL Connections`에서 설정을 변경
    
    Connect to Database > Advanced > Others > `OPT_LOCAL_INFILE=1`
    
    ![Untitled](MySQL%20DBMS%E1%84%8B%E1%85%A6%20Load%20Data%20Infile%E1%84%92%E1%85%A1%E1%84%80%E1%85%B5%20e7028e5166624c00920e33a4882afc08/Untitled.png)
    
- **Database Schema ∙ Table 생성하기**
    
    ![Untitled](MySQL%20DBMS%E1%84%8B%E1%85%A6%20Load%20Data%20Infile%E1%84%92%E1%85%A1%E1%84%80%E1%85%B5%20e7028e5166624c00920e33a4882afc08/Untitled%201.png)